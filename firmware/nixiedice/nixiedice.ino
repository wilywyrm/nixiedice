#include <SPI.h>
#include <Adafruit_NeoPixel.h>
#include <RotaryEncoder.h>

/* OUTPUT DEFINES */
// shift register communication
#define SHIFT_CLR 4
#define SHIFT_LAT 3
#define SHIFT_EN  2
// these are implicitly set by using the hardware SPI
#define SHIFT_DAT 16
#define SHIFT_CLK 15
// data output for RGB LEDs
#define RGB_PIN 5
#define NUM_RGB 4
// high voltage enable pin
#define HVPS_EN 8

/* INPUT DEFINES */
// pushbutton switch pins
#define BTN_RST 6
#define BTN_GO 7
// rotary encoder pins
#define DSEL_A 9
#define DSEL_B 10
#define NSEL_A A2
#define NSEL_B A3
// random seed (analog read) pins
#define RAND A0

const uint32_t TIMEOUT_MS = 120000; // 2min timeout before sleep
//#define TIMEOUT_MS 1000*60*2      // for some reason, this gets some weird overflow value. didnt know define had under 32-bit limit

Adafruit_NeoPixel strip = Adafruit_NeoPixel(NUM_RGB, RGB_PIN, NEO_GRB + NEO_KHZ800);
const uint32_t WHITE  = strip.Color(128, 128, 128);
const uint32_t BLUE  = strip.Color(0, 0, 128);
const uint32_t MAGENTA = strip.Color(128, 0, 128);
const uint32_t GREEN = strip.Color(64, 128, 64);
const uint32_t CYAN  = strip.Color(0, 128, 128);
const uint32_t RED = strip.Color(128, 0, 0);
const uint32_t ORANGE = strip.Color(128, 64, 0);
const uint32_t PURPLE = strip.Color(64, 0, 128);

RotaryEncoder NSel (NSEL_A, NSEL_B);
RotaryEncoder DSel (DSEL_A, DSEL_B);

int16_t oldNSelPos = 0;
int16_t oldDSelPos = 0;

void setup() {
    // initialize the outputs
    pinMode(SHIFT_CLR, OUTPUT);
    pinMode(SHIFT_LAT, OUTPUT);
    pinMode(SHIFT_DAT, OUTPUT);
    pinMode(SHIFT_CLK, OUTPUT);
    pinMode(SHIFT_EN,  OUTPUT);
    pinMode(HVPS_EN,   OUTPUT);

    // turn off Nixie tube high voltage
    digitalWrite(HVPS_EN, LOW);

    // set up SPI protocol module to talk to shift registers
    SPI.begin();
    SPI.setClockDivider(SPI_CLOCK_DIV2);
    SPI.setBitOrder(LSBFIRST);
    // disable shift registers outputs
    digitalWrite(SHIFT_EN, HIGH);
    // clear registers and anode driver
    digitalWrite(SHIFT_CLR, LOW);
    // disable loading of data into register outputs
    digitalWrite(SHIFT_LAT, LOW);

    // enable and stop clearing registers
    digitalWrite(SHIFT_EN, LOW);
    digitalWrite(SHIFT_CLR, HIGH);

    strip.begin();
    strip.setBrightness(40);
    strip.show(); // Initialize all pixels to 'off'

    // initialize input pins
    pinMode(BTN_RST, INPUT_PULLUP);
    pinMode(BTN_GO,  INPUT_PULLUP);
    pinMode(DSEL_A,  INPUT_PULLUP);
    pinMode(DSEL_B,  INPUT_PULLUP);
    pinMode(NSEL_A,  INPUT_PULLUP);
    pinMode(NSEL_B,  INPUT_PULLUP);
    pinMode(RAND,    INPUT);

    randomSeed(analogRead(RAND));
    Serial.begin(9600); // debugging only

    // lets goooo
    digitalWrite(HVPS_EN, HIGH);
}

uint8_t lastNSel = 1;
uint8_t lastDSel = 20;
uint32_t lastActive = 0;

void loop() {

    uint8_t curNSel = lastNSel;
    uint8_t curDSel = lastDSel;
    setHigherHalf(curNSel);
    setLowerHalf(curDSel);
    clearIndicators();
    show();
    bool middleTube = true;
    bool fading = true;
    bool goPressed = false;

    uint32_t color = GREEN;

    Serial.println("inital loop");

    while(!goPressed){

        if(millis() % 30 == 0){
            uint8_t r,g,b;
            r = color >> 16;
            g = (color & 0x00FF00) >> 8;
            b = color & 0x0000FF;
            if(!fading){ r += 1; g += 2; b+= 1; }
            else{ r -= 1; g -= 2; b -= 1; }

            color = strip.Color(r,g,b);
            if(color == GREEN)
                fading = true;
            else if(color == 0)
                fading = false;

            setAllLEDs(color);
            strip.show();
        }

        NSel.tick();
        DSel.tick();
        int16_t newNSelPos = NSel.getPosition();
        int16_t newDSelPos = DSel.getPosition();

        if(newNSelPos > oldNSelPos){
            if(curNSel < 99)
                curNSel++;
            else
                curNSel = 0;
            lastActive = millis();
            Serial.print("Adjusting NSel to ");
            Serial.println(curNSel);
        }
        else if(newNSelPos < oldNSelPos){
            if(curNSel > 0)
                curNSel--;
            else
                curNSel = 99;
            lastActive = millis();
            Serial.print("Adjusting NSel to ");
            Serial.println(curNSel);
        }
        if(newDSelPos > oldDSelPos){
            if(curDSel == 0)
                curDSel = 2;
            else if(curDSel == 2)
                curDSel = 4;
            else if(curDSel == 4)
                curDSel = 6;
            else if(curDSel == 6)
                curDSel = 8;
            else if(curDSel == 8)
                curDSel = 10;
            else if(curDSel == 10)
                curDSel = 12;
            else if(curDSel == 12)
                curDSel = 20;
            else if(curDSel == 20)
                curDSel = 100; // percentile dice, display in lower half is clamped in set function to 99
            else if(curDSel == 100)
                curDSel = 0;
            lastActive = millis();
            Serial.print("Adjusting DSel to ");
            Serial.println(curDSel);
        }
        else if(newDSelPos < oldDSelPos){
            if(curDSel == 0)
                curDSel = 100;
            else if(curDSel == 2)
                curDSel = 0;
            else if(curDSel == 4)
                curDSel = 2;
            else if(curDSel == 6)
                curDSel = 4;
            else if(curDSel == 8)
                curDSel = 6;
            else if(curDSel == 10)
                curDSel = 8;
            else if(curDSel == 12)
                curDSel = 10;
            else if(curDSel == 20)
                curDSel = 12; // percentile dice
            else if(curDSel == 100)
                curDSel = 20;
            lastActive = millis();
            Serial.print("Adjusting DSel to ");
            Serial.println(curDSel);
        }

        oldNSelPos = newNSelPos;
        oldDSelPos = newDSelPos;

        if(millis() % 500 == 0){
            middleTube = !middleTube;
            delay(1);
        }
        setIndicator(2, middleTube);
        setHigherHalf(curNSel);
        setLowerHalf(curDSel);
        show();

        if(digitalRead(BTN_RST) == LOW){
            delay(10);  // debounce initial presses
            Serial.println("RESET pressed");
            // on simultaneous press of both buttons and NSel=DSel=00
            bool shouldReset = true;
            while(digitalRead(BTN_RST) == LOW){ // wait out as long as the user holds the reset button
                if(digitalRead(BTN_GO) == LOW && curNSel == 0 && curDSel == 0){
                    shouldReset = false;
                    maintenance();
                }
                delay(10);
            }
            if(shouldReset){
                // perform visible reset to last known query
                Serial.print("Resetting to ");
                Serial.print(lastNSel);
                Serial.print("d");
                Serial.println(lastDSel);
                curNSel = lastNSel;
                curDSel = lastDSel;
                setIndicator(2, middleTube);
                setHigherHalf(curNSel);
                setLowerHalf(curDSel);
                show();
            }
            Serial.println("RESET released");
            delay(10);
            lastActive = millis();
        }

        if(digitalRead(BTN_GO) == LOW){
            Serial.println("GO pressed");
            if(curNSel != 0 && curDSel != 0){
                delay(10);
                goPressed = true;
                lastNSel = curNSel;
                lastDSel = curDSel;

            }
            else if(curNSel == 0 && curDSel == 0){
                Serial.println("but no meaningful roll to do");
                while(digitalRead(BTN_GO) == LOW){
                    delay(10);
                    if(digitalRead(BTN_RST) == LOW){
                        Serial.println("RESET also pressed while GO pressed");
                        maintenance();
                    }
                }
            }
            lastActive = millis();
        }

        if(lastActive + TIMEOUT_MS < millis()){
            Serial.print(lastActive);
            Serial.print(" + ");
            Serial.print(TIMEOUT_MS);
            Serial.print(" < ");
            Serial.println(millis());
            sleep();
        }
    }

    goPressed = false;

roll:
    uint8_t whichOne = 0;
    uint8_t theaterChaseIdx = 0;
    setAllLEDs(0);
    strip.setPixelColor(theaterChaseIdx, MAGENTA);
    strip.show();
    delay(1);

    while(digitalRead(BTN_GO) == LOW){
        uint32_t t = millis();
        bool triggered = false;
        if(t % 200 == 0){
            uint16_t dispValue = random(0, 9999+1);
            Serial.print("Randomly displaying ");
            Serial.println(dispValue);
            setAllDigits(dispValue);
            triggered = true;
        }
        if(t % 667 == 0){
            whichOne = (whichOne + 1) % 3;
            triggered = true;
        }

        if(t % 500 == 0){
            theaterChaseIdx = (theaterChaseIdx + 1) % NUM_RGB;
            setAllLEDs(0);
            strip.setPixelColor(theaterChaseIdx, MAGENTA);
            strip.show();
            triggered = true;
        }

        clearIndicators();
        setIndicator(whichOne+1, true);
        show();

        if(triggered)
            delay(1);
    }

    delay(10);
    if(digitalRead(BTN_GO) == HIGH){
        Serial.println("GO released");
        delay(10);
    }
    lastActive = millis();
    delay(10);

    // actually compute the dice roll
    uint16_t sum = 0;
    for(uint8_t i = 0; i < curNSel; i++){
        if(curDSel != 99)
            sum += random(1, curDSel+1);    // random bound is low-inclusive, high-exclusive
        // accumulate animation goes here
    }

    setAllDigits(sum);
    setAllIndicators(true);
    Serial.print(curNSel); Serial.print("d"); Serial.print(curDSel); Serial.print(" -> "); Serial.println(sum);
    show();

    uint32_t peakColor;
    if(sum == curDSel * curNSel) // nat 20 or equivalent gets pwm breathing purple
        peakColor = PURPLE;
    else if(sum == 1 * curNSel) // nat 1 or equivalent gets pwm breathing red
        peakColor = RED;
    else // everything else gets pwm breathing orange
        peakColor = ORANGE;

    fading = false;
    color = 0;
    uint8_t numFlashes = 0;
    uint32_t lastFlash = millis();
    while(true){    // wait for button press and do pwm things, also flash indicators 5 times
        //Serial.println("Displaying final result");
        if(millis() >= lastFlash + 1000 && numFlashes < 6){
            clearIndicators();
            if(numFlashes % 2){ // on flashes 0,2,4,6,8, display sum and indicators 1,3
                setAllDigits(sum);
                setIndicator(1, true);
                setIndicator(3, true);
            }
            else{               // on flashes 1,3,5,7,9, display nsel/dsel and indicator 2
                setHigherHalf(curNSel);
                setLowerHalf(curDSel);
                setIndicator(2, true);
            }
            show();
            numFlashes++;
            lastFlash = millis();
        }
        else if(numFlashes >= 10){
            setAllDigits(sum);
            clearIndicators();
            setIndicator(1, true);
            setIndicator(3, true);
            show();
        }

        uint8_t r,g,b;
        r = color >> 16;
        g = (color & 0x00FF00) >> 8;
        b = color & 0x0000FF;
        if(millis() % 15 == 0){
            if(!fading){
                if(peakColor == ORANGE){ r += 2; g += 1; }
                else if(peakColor == RED){ r += 2; }
                else if(peakColor == PURPLE){ b += 2; r += 1; }
            }
            else{
                if(peakColor == ORANGE){ r -= 2; g -= 1; }
                else if(peakColor == RED){ r -= 2; }
                else if(peakColor == PURPLE){ b -= 2; r -= 1; }
            }

            color = strip.Color(r,g,b);
            if(color == peakColor)
                fading = true;
            else if(color == 0)
                fading = false;

            setAllLEDs(color);
            strip.show();
        }

        if(digitalRead(BTN_RST) == LOW){
            Serial.println("RESET pressed");
            delay(10);  // debounce initial press
            while(digitalRead(BTN_RST) == LOW){ // wait out as long as the user holds the reset button
                delay(10);
            }
            if(digitalRead(BTN_RST) == HIGH) // debounce release
                delay(10);
            Serial.println("RESET released");
            delay(10);  // anotha one
            lastActive = millis();
            break; // go to the beginning
        }

        if(digitalRead(BTN_GO) == LOW){
            Serial.println("GO pressed, rerolling previous");
            delay(10);  // debounce initial press
            lastActive = millis();
            goto roll;  // repeat the roll quickly, let roll while loop handle debouncing
        }

        NSel.tick();
        DSel.tick();
        int16_t newNSelPos = NSel.getPosition();
        int16_t newDSelPos = DSel.getPosition();

        if(newNSelPos != oldNSelPos || newDSelPos != oldDSelPos){
            Serial.println("Sel knob adjusted, going back to initial loop");
            lastActive = millis();
            oldNSelPos = newNSelPos;
            oldDSelPos = newDSelPos;
            break;
        }
        delay(1); // pwm thing

        if(lastActive + TIMEOUT_MS < millis()){
            Serial.print(lastActive);
            Serial.print(" + ");
            Serial.print(TIMEOUT_MS);
            Serial.print(" < ");
            Serial.println(millis());
            sleep();
        }
    }

    // display adjustments to query from n-selector or d-selector
        // display 01x 20 initially
        // adjust display to match changes in selector encoder knobs
        // wait for press of GO
        // reset changes display back to last query
    // generate random result
        // randomize digits as long as go button is held
        // accumulate effect on each roll when n>1
            // for each die roll, generate a result
            // flash the new result
            // add it to the accumulated sum
            // display each of the numbers in between the old sum and the new
            // IN3 indicators are cycling through while accumulate is happening
        // display end result
            // flash IN3 indicators 5 times
            // change LEDs to all red on nat1
            // change LEDs to all purple on nat20
        // wait for press of RESET or GO
        // GO redoes the current query (without going to selection menu)
        // RESET changes display back to last query
    // shut off display on any timeout of 2 minutes at any stage except maintenance
        // keep LEDs on in a glowy faint red state
        // turn on display after wakeup
            // wakeup on any button press or knob adjustments
            // wakeup goes back to previous known mode/display, no changes from wakeup input
    // maintenance/special modes
        // on press of both go and reset when both n and d-sel are set to 00
        // prevent cathode poisoning
            // cycle through all numbers on all tubes
            // have LEDs do a theatre chase to indicate this maintenance feature
            // break to beginning loop on press of any button
}

// prevent cathode poisoning
void maintenance(){
    // assume this function is launched while user is pressing at least one button
    Serial.println("In maintenance mode");
    if(digitalRead(BTN_RST) == LOW || digitalRead(BTN_GO) == LOW){
        delay(10);  // debounce initial press
        while(digitalRead(BTN_RST) == LOW || digitalRead(BTN_GO) == LOW){ // wait out as long as the user holds either button
            delay(10);
        }
        if(digitalRead(BTN_RST) == HIGH || digitalRead(BTN_GO) == LOW) // debounce release
            delay(10);
        delay(10);  // anotha one
    }

    // save indicator state
    uint32_t colors[NUM_RGB];
    for(uint8_t i = 0; i < NUM_RGB; i++){
        colors[i] = strip.getPixelColor(i);
        strip.setPixelColor(i, 0); // turn off LED
    }
    strip.show();

    //uint8_t reg3_temp = getRegValue(3);
    //setAllIndicators(true);
    //show();


    uint8_t theaterChaseIdx = 0;
    setAllLEDs(0);
    strip.setPixelColor(theaterChaseIdx, WHITE);
    strip.show();

    int16_t NSelPos = NSel.getPosition();
    int16_t DSelPos = DSel.getPosition();

    uint32_t start = millis();
    bool noPress = true;
    while(noPress){
        for(uint8_t i = 0; i < 10; i++){
            setAllDigits(i*1111);
            show();

            while(millis() < start + 2000){ // wait for button press inside this loop
                if(millis() % 500 == 0){
                    theaterChaseIdx = (theaterChaseIdx + 1) % NUM_RGB;
                    setAllLEDs(0);
                    strip.setPixelColor(theaterChaseIdx, WHITE);
                    strip.show();
                }

                delay(1);

                if(digitalRead(BTN_GO) == LOW || digitalRead(BTN_RST) == LOW){
                    noPress = false;
                    while(digitalRead(BTN_GO) == LOW || digitalRead(BTN_RST) == LOW){ // wait out press
                        delay(10);
                    }
                    delay(10); // wait out whatever

                    Serial.println("Leaving maintenance mode due to press of GO or RESET");
                    break;
                }

                NSel.tick();
                DSel.tick();
                if(NSelPos != NSel.getPosition() || DSelPos != DSel.getPosition()){
                    Serial.println("Leaving maintenance mode due to Sel adjustment");
                    noPress = false;
                    break;
                }
                NSelPos = NSel.getPosition();
                DSelPos = DSel.getPosition();
            }
            start = millis();
            if(!noPress)
                break;
        }
    }
    // restore indicator data and turn back on
    for(uint8_t i = 0; i < NUM_RGB; i++)
        strip.setPixelColor(i, colors[i]); // restore LED color
    strip.show();

    //setRegValue(3, reg3_temp);
    //show();

    lastActive = millis();
}

void sleep(){
    Serial.println("In sleep");

    // turn off nixie display via cutting off hvps
    digitalWrite(HVPS_EN, LOW);
    // save LED data and turn off control signals (LED power supply is directly connected to 5V)
    uint32_t colors[NUM_RGB];
    for(uint8_t i = 0; i < NUM_RGB; i++){
        colors[i] = strip.getPixelColor(i);
        strip.setPixelColor(i, 0); // turn off LED
    }
    strip.show();

    bool fading = false;
    uint8_t b = 0;

    int16_t NSelPos = NSel.getPosition();
    int16_t DSelPos = DSel.getPosition();

    while(digitalRead(BTN_RST) == HIGH && digitalRead(BTN_GO) == HIGH){
        NSel.tick();
        DSel.tick();
        if(NSelPos != NSel.getPosition() || DSelPos != DSel.getPosition())
            break;
        NSelPos = NSel.getPosition();
        DSelPos = DSel.getPosition();
        if(millis() % 15 == 0){
            if(!fading)
                b++;
            else
                b--;
            uint32_t color = strip.Color(0,0,b);
            if(color == BLUE)
                fading = true;
            else if(color == 0)
                fading = false;
            setAllLEDs(color);
            strip.show();
        }

        delay(1); // chill
    }

    oldNSelPos = NSelPos;
    oldDSelPos = DSelPos;


    while(digitalRead(BTN_RST) == LOW || digitalRead(BTN_GO) == LOW){
        delay(10);
    }
    delay(10);

    // turn on nixie display and hvps
    digitalWrite(HVPS_EN, HIGH);
    // restore LED data and turn back on
    for(uint8_t i = 0; i < NUM_RGB; i++){
        strip.setPixelColor(i, colors[i]); // restore LED color
    }
    strip.show();

    lastActive = millis();
}

// ideally this would be written as part of a class
// so we could actually reuse this code in a library
// but nah
// lets just use global variables instead
// reg1 controls tubes 1 and 2, reg2 controls tubes 3 and 4,
// reg3 controls IN3 indicator tubes (not digits)
uint8_t reg1, reg2, reg3;

void setDigit(uint8_t tube, uint8_t number){
    if(number > 9) // invalid digit check
        return;
    // strange mapping because of backwards footprint on Rev A board
    // ignore if on rev B or later
    /*switch(number){
        case 1: number = 0; break;
        case 2: number = 9; break;
        case 3: number = 8; break;
        case 4: number = 7; break;
        case 5: number = 6; break;
        case 6: number = 5; break;
        case 7: number = 4; break;
        case 8: number = 3; break;
        case 9: number = 2; break;
        case 0: number = 1; break;
    }
    number = (11-number) % 10;
    */

    switch(number){
        case 1: number = B1000; break;
        case 2: number = B0100; break;
        case 3: number = B1100; break;
        case 4: number = B0010; break;
        case 5: number = B1010; break;
        case 6: number = B0110; break;
        case 7: number = B1110; break;
        case 8: number = B0001; break;
        case 9: number = B1001; break;
        case 0: number = B0000; break;
    }


    const uint8_t UPPER = 0xF0;
    const uint8_t LOWER = 0x0F;

    if(tube == 1){
        reg1 &= ~UPPER;
        reg1 |= number << 4;
    }
    else if(tube == 2){
        reg1 &= ~LOWER;
        reg1 |= number;
    }
    else if(tube == 3){
        reg2 &= ~UPPER;
        reg2 |= number << 4;
    }
    else if(tube == 4){
        reg2 &= ~LOWER;
        reg2 |= number;
    }
}

void setHigherHalf(uint8_t number){
    number = min(99, number);
    setDigit(1, number / 10);
    setDigit(2, number % 10);
}

void setLowerHalf(uint8_t number){
    number = min(99, number);
    setDigit(3, number / 10);
    setDigit(4, number % 10);
}

void setAllDigits(uint16_t number){
    if(number > 9999)
        return;

    setDigit(1, number / 1000);
    number -= number/1000 * 1000;
    setDigit(2, number / 100);
    number -= number/100 * 100;
    setDigit(3, number / 10);
    number -= number/10 * 10;
    setDigit(4, number % 10); // mod is unnecessary here i guess
}

void setIndicator(uint8_t tube, bool value){
    if(tube > 3) // there are only three indicator tubes here
        return;  // and again, we are not zero-indexing. (tube 1-3)

    reg3 &= ~(1 << (8-tube));
    if(value)
       reg3 |= 1 << (8-tube);
}

void setAllIndicators(bool value){
    setIndicator(1, value);
    setIndicator(2, value);
    setIndicator(3, value);
}

void clearIndicators(){
    setAllIndicators(false);
}

void updateDisplay(){
    digitalWrite(SHIFT_LAT, LOW);
    SPI.transfer(reg3);
    SPI.transfer(reg2);
    SPI.transfer(reg1);
    digitalWrite(SHIFT_LAT, HIGH);
}

// wrap around updateDisplay() to also ensure display signals set
void show(){
    updateDisplay();
    digitalWrite(HVPS_EN, HIGH);
    digitalWrite(SHIFT_EN, LOW);
    digitalWrite(SHIFT_CLR, HIGH);
}

void setAllLEDs(uint32_t color){
    for(uint16_t i = 0; i < NUM_RGB; i++)
        strip.setPixelColor(i, color);
}

uint8_t getRegValue(uint8_t reg){
    if(reg < 1 || reg > 3)
        return -1; // ehhh
    else if(reg == 1)
        return reg1;
    else if(reg == 2)
        return reg2;
    else if(reg == 3)
        return reg3;
}

void setRegValue(uint8_t reg, uint8_t value){
    if(reg < 1 || reg > 3)
        return;
    else if(reg == 1)
        reg1 = value;
    else if(reg == 2)
        reg2 = value;
    else if(reg == 3)
        reg3 = value;
}
