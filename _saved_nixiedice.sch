EESchema Schematic File Version 2
LIBS:nixiedice-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:custom
LIBS:nixiedice-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74HC595 U1
U 1 1 5847EBB4
P 4350 1350
F 0 "U1" H 4500 1950 50  0000 C CNN
F 1 "74HC595" H 4350 750 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 4350 1350 50  0001 C CNN
F 3 "" H 4350 1350 50  0000 C CNN
	1    4350 1350
	1    0    0    -1  
$EndComp
$Comp
L DIL24 P3
U 1 1 5847EE6A
P 1900 4200
F 0 "P3" H 1900 4900 50  0000 C CNN
F 1 "ARDUINO PRO MICRO" H 1900 3500 50  0000 C CNN
F 2 "Arduino:Pro_Micro" H 1900 4200 50  0001 C CNN
F 3 "" H 1900 4200 50  0000 C CNN
	1    1900 4200
	1    0    0    -1  
$EndComp
NoConn ~ 8550 1050
NoConn ~ 8550 1200
$Comp
L IN-14 N1
U 1 1 5847F4E7
P 9500 1400
F 0 "N1" H 9250 2050 60  0000 C CNN
F 1 "IN-14" H 9550 2050 60  0000 C CNN
F 2 "Nixies:IN-14" H 9250 2050 60  0001 C CNN
F 3 "" H 9250 2050 60  0000 C CNN
	1    9500 1400
	1    0    0    -1  
$EndComp
$Comp
L K155ID1 U5
U 1 1 5847F6A1
P 6900 1500
F 0 "U5" H 6900 1500 60  0000 C CNN
F 1 "K155ID1" H 6900 1950 60  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 6900 1500 60  0001 C CNN
F 3 "" H 6900 1500 60  0000 C CNN
	1    6900 1500
	1    0    0    -1  
$EndComp
$Comp
L R R19
U 1 1 5847FA9E
P 8050 900
F 0 "R19" V 8130 900 50  0000 C CNN
F 1 "20K" V 8050 900 50  0000 C CNN
F 2 "Discret:R3" V 7980 900 50  0001 C CNN
F 3 "" H 8050 900 50  0000 C CNN
	1    8050 900 
	0    1    1    0   
$EndComp
Entry Wire Line
	7900 1150 8000 1250
Entry Wire Line
	7900 1250 8000 1350
Entry Wire Line
	7900 1350 8000 1450
Entry Wire Line
	7900 1450 8000 1550
Entry Wire Line
	7900 1650 8000 1750
Entry Wire Line
	7900 1750 8000 1850
Entry Wire Line
	7900 1850 8000 1950
Entry Wire Line
	5900 1150 5800 1250
Entry Wire Line
	5900 1250 5800 1350
Entry Wire Line
	5900 1850 5800 1950
Text Label 7550 1150 0    60   ~ 0
T1CATH0
Text Label 7550 1250 0    60   ~ 0
T1CATH1
Text Label 7550 1350 0    60   ~ 0
T1CATH5
Text Label 7550 1450 0    60   ~ 0
T1CATH4
Text Label 7550 1650 0    60   ~ 0
T1CATH6
Text Label 7550 1750 0    60   ~ 0
T1CATH7
Text Label 7550 1850 0    60   ~ 0
T1CATH3
Text Label 5900 1150 0    60   ~ 0
T1CATH8
Text Label 5900 1250 0    60   ~ 0
T1CATH9
Text Label 5900 1850 0    60   ~ 0
T1CATH2
Text Label 7550 1550 0    60   ~ 0
GND
Text Label 5900 1350 0    60   ~ 0
T1INA
Text Label 5900 1450 0    60   ~ 0
T1IND
Text Label 5900 1650 0    60   ~ 0
T1INB
Text Label 5900 1750 0    60   ~ 0
T1INC
Text Label 5900 1550 0    60   ~ 0
5V
Entry Wire Line
	8000 1250 8100 1350
Entry Wire Line
	8000 1400 8100 1500
Entry Wire Line
	8000 1550 8100 1650
Entry Wire Line
	8000 1700 8100 1800
Entry Wire Line
	10850 900  10950 1000
Entry Wire Line
	10850 1050 10950 1150
Entry Wire Line
	10850 1200 10950 1300
Entry Wire Line
	10850 1350 10950 1450
Entry Wire Line
	10850 1500 10950 1600
Entry Wire Line
	10850 1650 10950 1750
Text Label 10450 1650 0    60   ~ 0
T1CATH0
Text Label 8200 1350 0    60   ~ 0
T1CATH1
Text Label 8200 1500 0    60   ~ 0
T1CATH2
Text Label 8200 1650 0    60   ~ 0
T1CATH3
Text Label 8200 1800 0    60   ~ 0
T1CATH4
Text Label 10450 900  0    60   ~ 0
T1CATH5
Text Label 10450 1050 0    60   ~ 0
T1CATH6
Text Label 10450 1200 0    60   ~ 0
T1CATH7
Text Label 10450 1350 0    60   ~ 0
T1CATH8
Text Label 10450 1500 0    60   ~ 0
T1CATH9
Text Label 1300 3650 0    60   ~ 0
TXO
Text Label 1300 3750 0    60   ~ 0
RXI
Text Label 1300 3850 0    60   ~ 0
GND
Text Label 1300 3950 0    60   ~ 0
GND
Text Label 1300 4050 0    60   ~ 0
D2
Text Label 1300 4150 0    60   ~ 0
D3
Text Label 1300 4250 0    60   ~ 0
D4
Text Label 1300 4350 0    60   ~ 0
D5
Text Label 1300 4450 0    60   ~ 0
D6
Text Label 1300 4550 0    60   ~ 0
D7
Text Label 1300 4650 0    60   ~ 0
D8
Text Label 1300 4750 0    60   ~ 0
D9
Text Label 2250 3650 0    60   ~ 0
RAW
Text Label 2250 3750 0    60   ~ 0
GND
Text Label 2250 3850 0    60   ~ 0
RESET
Text Label 2250 4050 0    60   ~ 0
A3
Text Label 2250 4150 0    60   ~ 0
A2
Text Label 2250 4250 0    60   ~ 0
A1
Text Label 2250 4350 0    60   ~ 0
A0
Text Label 2250 4450 0    60   ~ 0
SCK
Text Label 2250 4550 0    60   ~ 0
MISO
Text Label 2250 4650 0    60   ~ 0
MOSI
Text Label 2250 4750 0    60   ~ 0
D10
Text Label 7550 900  0    60   ~ 0
170V
NoConn ~ 8550 2500
NoConn ~ 8550 2650
$Comp
L IN-14 N2
U 1 1 58483132
P 9500 2850
F 0 "N2" H 9250 3500 60  0000 C CNN
F 1 "IN-14" H 9550 3500 60  0000 C CNN
F 2 "Nixies:IN-14" H 9250 3500 60  0001 C CNN
F 3 "" H 9250 3500 60  0000 C CNN
	1    9500 2850
	1    0    0    -1  
$EndComp
$Comp
L K155ID1 U6
U 1 1 58483138
P 6900 2950
F 0 "U6" H 6900 2950 60  0000 C CNN
F 1 "K155ID1" H 6900 3400 60  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 6900 2950 60  0001 C CNN
F 3 "" H 6900 2950 60  0000 C CNN
	1    6900 2950
	1    0    0    -1  
$EndComp
$Comp
L R R20
U 1 1 5848313E
P 8000 2350
F 0 "R20" V 8080 2350 50  0000 C CNN
F 1 "20K" V 8000 2350 50  0000 C CNN
F 2 "Discret:R3" V 7930 2350 50  0001 C CNN
F 3 "" H 8000 2350 50  0000 C CNN
	1    8000 2350
	0    1    1    0   
$EndComp
Entry Wire Line
	7900 2600 8000 2700
Entry Wire Line
	7900 2700 8000 2800
Entry Wire Line
	7900 2800 8000 2900
Entry Wire Line
	7900 2900 8000 3000
Entry Wire Line
	7900 3100 8000 3200
Entry Wire Line
	7900 3200 8000 3300
Entry Wire Line
	7900 3300 8000 3400
Entry Wire Line
	5900 2600 5800 2700
Entry Wire Line
	5900 2700 5800 2800
Entry Wire Line
	5900 3300 5800 3400
Text Label 7550 2600 0    60   ~ 0
T2CATH0
Text Label 7550 2700 0    60   ~ 0
T2CATH1
Text Label 7550 2800 0    60   ~ 0
T2CATH5
Text Label 7550 2900 0    60   ~ 0
T2CATH4
Text Label 7550 3100 0    60   ~ 0
T2CATH6
Text Label 7550 3200 0    60   ~ 0
T2CATH7
Text Label 7550 3300 0    60   ~ 0
T2CATH3
Text Label 5900 2600 0    60   ~ 0
T2CATH8
Text Label 5900 2700 0    60   ~ 0
T2CATH9
Text Label 5900 3300 0    60   ~ 0
T2CATH2
Text Label 7550 3000 0    60   ~ 0
GND
Text Label 5900 2800 0    60   ~ 0
T2INA
Text Label 5900 2900 0    60   ~ 0
T2IND
Text Label 5900 3100 0    60   ~ 0
T2INB
Text Label 5900 3200 0    60   ~ 0
T2INC
Text Label 5900 3000 0    60   ~ 0
5V
Entry Wire Line
	8000 2700 8100 2800
Entry Wire Line
	8000 2850 8100 2950
Entry Wire Line
	8000 3000 8100 3100
Entry Wire Line
	8000 3150 8100 3250
Entry Wire Line
	10850 2350 10950 2450
Entry Wire Line
	10850 2500 10950 2600
Entry Wire Line
	10850 2650 10950 2750
Entry Wire Line
	10850 2800 10950 2900
Entry Wire Line
	10850 2950 10950 3050
Entry Wire Line
	10850 3100 10950 3200
Text Label 10450 3100 0    60   ~ 0
T2CATH0
Text Label 8200 2800 0    60   ~ 0
T2CATH1
Text Label 8200 2950 0    60   ~ 0
T2CATH2
Text Label 8200 3100 0    60   ~ 0
T2CATH3
Text Label 8200 3250 0    60   ~ 0
T2CATH4
Text Label 10450 2350 0    60   ~ 0
T2CATH5
Text Label 10450 2500 0    60   ~ 0
T2CATH6
Text Label 10450 2650 0    60   ~ 0
T2CATH7
Text Label 10450 2800 0    60   ~ 0
T2CATH8
Text Label 10450 2950 0    60   ~ 0
T2CATH9
Text Label 7550 2350 0    60   ~ 0
170V
NoConn ~ 8550 3950
NoConn ~ 8550 4100
$Comp
L IN-14 N3
U 1 1 58483237
P 9500 4300
F 0 "N3" H 9250 4950 60  0000 C CNN
F 1 "IN-14" H 9550 4950 60  0000 C CNN
F 2 "Nixies:IN-14" H 9250 4950 60  0001 C CNN
F 3 "" H 9250 4950 60  0000 C CNN
	1    9500 4300
	1    0    0    -1  
$EndComp
$Comp
L K155ID1 U7
U 1 1 5848323D
P 6900 4400
F 0 "U7" H 6900 4400 60  0000 C CNN
F 1 "K155ID1" H 6900 4850 60  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 6900 4400 60  0001 C CNN
F 3 "" H 6900 4400 60  0000 C CNN
	1    6900 4400
	1    0    0    -1  
$EndComp
$Comp
L R R21
U 1 1 58483243
P 8000 3800
F 0 "R21" V 8080 3800 50  0000 C CNN
F 1 "20K" V 8000 3800 50  0000 C CNN
F 2 "Discret:R3" V 7930 3800 50  0001 C CNN
F 3 "" H 8000 3800 50  0000 C CNN
	1    8000 3800
	0    1    1    0   
$EndComp
Entry Wire Line
	7900 4050 8000 4150
Entry Wire Line
	7900 4150 8000 4250
Entry Wire Line
	7900 4250 8000 4350
Entry Wire Line
	7900 4350 8000 4450
Entry Wire Line
	7900 4550 8000 4650
Entry Wire Line
	7900 4650 8000 4750
Entry Wire Line
	7900 4750 8000 4850
Entry Wire Line
	5900 4050 5800 4150
Entry Wire Line
	5900 4150 5800 4250
Entry Wire Line
	5900 4750 5800 4850
Text Label 7550 4050 0    60   ~ 0
T3CATH0
Text Label 7550 4150 0    60   ~ 0
T3CATH1
Text Label 7550 4250 0    60   ~ 0
T3CATH5
Text Label 7550 4350 0    60   ~ 0
T3CATH4
Text Label 7550 4550 0    60   ~ 0
T3CATH6
Text Label 7550 4650 0    60   ~ 0
T3CATH7
Text Label 7550 4750 0    60   ~ 0
T3CATH3
Text Label 5900 4050 0    60   ~ 0
T3CATH8
Text Label 5900 4150 0    60   ~ 0
T3CATH9
Text Label 5900 4750 0    60   ~ 0
T3CATH2
Text Label 7550 4450 0    60   ~ 0
GND
Text Label 5900 4250 0    60   ~ 0
T3INA
Text Label 5900 4350 0    60   ~ 0
T3IND
Text Label 5900 4550 0    60   ~ 0
T3INB
Text Label 5900 4650 0    60   ~ 0
T3INC
Text Label 5900 4450 0    60   ~ 0
5V
Entry Wire Line
	8000 4150 8100 4250
Entry Wire Line
	8000 4300 8100 4400
Entry Wire Line
	8000 4450 8100 4550
Entry Wire Line
	8000 4600 8100 4700
Entry Wire Line
	10850 3800 10950 3900
Entry Wire Line
	10850 3950 10950 4050
Entry Wire Line
	10850 4100 10950 4200
Entry Wire Line
	10850 4250 10950 4350
Entry Wire Line
	10850 4400 10950 4500
Entry Wire Line
	10850 4550 10950 4650
Text Label 10450 4550 0    60   ~ 0
T3CATH0
Text Label 8200 4250 0    60   ~ 0
T3CATH1
Text Label 8200 4400 0    60   ~ 0
T3CATH2
Text Label 8200 4550 0    60   ~ 0
T3CATH3
Text Label 8200 4700 0    60   ~ 0
T3CATH4
Text Label 10450 3800 0    60   ~ 0
T3CATH5
Text Label 10450 3950 0    60   ~ 0
T3CATH6
Text Label 10450 4100 0    60   ~ 0
T3CATH7
Text Label 10450 4250 0    60   ~ 0
T3CATH8
Text Label 10450 4400 0    60   ~ 0
T3CATH9
Text Label 7550 3800 0    60   ~ 0
170V
NoConn ~ 8550 5400
NoConn ~ 8550 5550
$Comp
L IN-14 N4
U 1 1 584834BD
P 9500 5750
F 0 "N4" H 9250 6400 60  0000 C CNN
F 1 "IN-14" H 9550 6400 60  0000 C CNN
F 2 "Nixies:IN-14" H 9250 6400 60  0001 C CNN
F 3 "" H 9250 6400 60  0000 C CNN
	1    9500 5750
	1    0    0    -1  
$EndComp
$Comp
L K155ID1 U8
U 1 1 584834C3
P 6900 5850
F 0 "U8" H 6900 5850 60  0000 C CNN
F 1 "K155ID1" H 6900 6300 60  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 6900 5850 60  0001 C CNN
F 3 "" H 6900 5850 60  0000 C CNN
	1    6900 5850
	1    0    0    -1  
$EndComp
$Comp
L R R22
U 1 1 584834C9
P 8000 5250
F 0 "R22" V 8080 5250 50  0000 C CNN
F 1 "20K" V 8000 5250 50  0000 C CNN
F 2 "Discret:R3" V 7930 5250 50  0001 C CNN
F 3 "" H 8000 5250 50  0000 C CNN
	1    8000 5250
	0    1    1    0   
$EndComp
Entry Wire Line
	7900 5500 8000 5600
Entry Wire Line
	7900 5600 8000 5700
Entry Wire Line
	7900 5700 8000 5800
Entry Wire Line
	7900 5800 8000 5900
Entry Wire Line
	7900 6000 8000 6100
Entry Wire Line
	7900 6100 8000 6200
Entry Wire Line
	7900 6200 8000 6300
Entry Wire Line
	5900 5500 5800 5600
Entry Wire Line
	5900 5600 5800 5700
Entry Wire Line
	5900 6200 5800 6300
Text Label 7550 5500 0    60   ~ 0
T4CATH0
Text Label 7550 5600 0    60   ~ 0
T4CATH1
Text Label 7550 5700 0    60   ~ 0
T4CATH5
Text Label 7550 5800 0    60   ~ 0
T4CATH4
Text Label 7550 6000 0    60   ~ 0
T4CATH6
Text Label 7550 6100 0    60   ~ 0
T4CATH7
Text Label 7550 6200 0    60   ~ 0
T4CATH3
Text Label 5900 5500 0    60   ~ 0
T4CATH8
Text Label 5900 5600 0    60   ~ 0
T4CATH9
Text Label 5900 6200 0    60   ~ 0
T4CATH2
Text Label 7550 5900 0    60   ~ 0
GND
Text Label 5900 5700 0    60   ~ 0
T4INA
Text Label 5900 5800 0    60   ~ 0
T4IND
Text Label 5900 6000 0    60   ~ 0
T4INB
Text Label 5900 6100 0    60   ~ 0
T4INC
Text Label 5900 5900 0    60   ~ 0
5V
Entry Wire Line
	8000 5600 8100 5700
Entry Wire Line
	8000 5750 8100 5850
Entry Wire Line
	8000 5900 8100 6000
Entry Wire Line
	8000 6050 8100 6150
Entry Wire Line
	10850 5250 10950 5350
Entry Wire Line
	10850 5400 10950 5500
Entry Wire Line
	10850 5550 10950 5650
Entry Wire Line
	10850 5700 10950 5800
Entry Wire Line
	10850 5850 10950 5950
Entry Wire Line
	10850 6000 10950 6100
Text Label 10450 6000 0    60   ~ 0
T4CATH0
Text Label 8200 5700 0    60   ~ 0
T4CATH1
Text Label 8200 5850 0    60   ~ 0
T4CATH2
Text Label 8200 6000 0    60   ~ 0
T4CATH3
Text Label 8200 6150 0    60   ~ 0
T4CATH4
Text Label 10450 5250 0    60   ~ 0
T4CATH5
Text Label 10450 5400 0    60   ~ 0
T4CATH6
Text Label 10450 5550 0    60   ~ 0
T4CATH7
Text Label 10450 5700 0    60   ~ 0
T4CATH8
Text Label 10450 5850 0    60   ~ 0
T4CATH9
Text Label 7550 5250 0    60   ~ 0
170V
Text Label 5150 900  0    60   ~ 0
T1INA
Text Label 5150 1000 0    60   ~ 0
T1INB
Text Label 5150 1100 0    60   ~ 0
T1INC
Text Label 5150 1200 0    60   ~ 0
T1IND
Text Label 5150 1300 0    60   ~ 0
T2INA
Text Label 5150 1400 0    60   ~ 0
T2INB
Text Label 5150 1500 0    60   ~ 0
T2INC
Text Label 5150 1600 0    60   ~ 0
T2IND
Text Label 3250 900  0    60   ~ 0
MOSI
Text Label 3250 1100 0    60   ~ 0
SCK
Text Label 3250 1200 0    60   ~ 0
CLEAR
Text Label 3250 1500 0    60   ~ 0
ENABLE
Text Label 3250 1400 0    60   ~ 0
LATCH
$Comp
L 74HC595 U2
U 1 1 5848752F
P 4350 2800
F 0 "U2" H 4500 3400 50  0000 C CNN
F 1 "74HC595" H 4350 2200 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 4350 2800 50  0001 C CNN
F 3 "" H 4350 2800 50  0000 C CNN
	1    4350 2800
	1    0    0    -1  
$EndComp
Text Label 5150 2350 0    60   ~ 0
T3INA
Text Label 5150 2450 0    60   ~ 0
T3INB
Text Label 5150 2550 0    60   ~ 0
T3INC
Text Label 5150 2650 0    60   ~ 0
T3IND
Text Label 5150 2750 0    60   ~ 0
T4INA
Text Label 5150 2850 0    60   ~ 0
T4INB
Text Label 5150 2950 0    60   ~ 0
T4INC
Text Label 5150 3050 0    60   ~ 0
T4IND
Text Label 3250 2550 0    60   ~ 0
SCK
Text Label 3250 2650 0    60   ~ 0
CLEAR
Text Label 3250 2950 0    60   ~ 0
ENABLE
Text Label 3250 2850 0    60   ~ 0
LATCH
$Comp
L 74HC595 U3
U 1 1 5848758F
P 4350 4300
F 0 "U3" H 4500 4900 50  0000 C CNN
F 1 "74HC595" H 4350 3700 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 4350 4300 50  0001 C CNN
F 3 "" H 4350 4300 50  0000 C CNN
	1    4350 4300
	1    0    0    -1  
$EndComp
Text Label 3250 4050 0    60   ~ 0
SCK
Text Label 3250 4150 0    60   ~ 0
CLEAR
Text Label 3250 4450 0    60   ~ 0
ENABLE
Text Label 3250 4350 0    60   ~ 0
LATCH
Text Label 5500 3850 0    60   ~ 0
IN3_1
Text Label 5500 3950 0    60   ~ 0
IN3_2
Text Label 5500 4050 0    60   ~ 0
IN3_3
$Comp
L BARREL_JACK CON1
U 1 1 5848AFC9
P 1950 1150
F 0 "CON1" H 1950 1400 50  0000 C CNN
F 1 "BARREL_JACK" H 1950 950 50  0000 C CNN
F 2 "Connect:BARREL_JACK" H 1950 1150 50  0001 C CNN
F 3 "" H 1950 1150 50  0000 C CNN
	1    1950 1150
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 5848B19E
P 6100 6750
F 0 "SW1" H 6250 6860 50  0000 C CNN
F 1 "SW_PUSH" H 6100 6670 50  0000 C CNN
F 2 "Cherry Switches:CHERRY_PCB_100H" H 6100 6750 50  0001 C CNN
F 3 "" H 6100 6750 50  0000 C CNN
	1    6100 6750
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 5848B391
P 6100 7100
F 0 "SW2" H 6250 7210 50  0000 C CNN
F 1 "SW_PUSH" H 6100 7020 50  0000 C CNN
F 2 "Cherry Switches:CHERRY_PCB_100H" H 6100 7100 50  0001 C CNN
F 3 "" H 6100 7100 50  0000 C CNN
	1    6100 7100
	1    0    0    -1  
$EndComp
Text Label 1500 5550 0    60   ~ 0
RGBIN
Text Label 1500 5650 0    60   ~ 0
GND
Text Label 800  4350 0    60   ~ 0
RGBIN
$Comp
L LED N6
U 1 1 58492156
P 4300 6050
F 0 "N6" H 4300 6150 50  0000 C CNN
F 1 "IN-3" H 4300 5950 50  0000 C CNN
F 2 "Nixies:IN-3" H 4300 6050 50  0001 C CNN
F 3 "" H 4300 6050 50  0000 C CNN
	1    4300 6050
	1    0    0    1   
$EndComp
$Comp
L LED N5
U 1 1 58493225
P 4300 5450
F 0 "N5" H 4300 5550 50  0000 C CNN
F 1 "IN-3" H 4300 5350 50  0000 C CNN
F 2 "Nixies:IN-3" H 4300 5450 50  0001 C CNN
F 3 "" H 4300 5450 50  0000 C CNN
	1    4300 5450
	1    0    0    1   
$EndComp
$Comp
L LED N7
U 1 1 584932D9
P 4300 6650
F 0 "N7" H 4300 6750 50  0000 C CNN
F 1 "IN-3" H 4300 6550 50  0000 C CNN
F 2 "Nixies:IN-3" H 4300 6650 50  0001 C CNN
F 3 "" H 4300 6650 50  0000 C CNN
	1    4300 6650
	1    0    0    1   
$EndComp
Text Label 2600 3050 0    60   ~ 0
170V
$Comp
L CONN_01X03 DSEL1
U 1 1 58498114
P 6700 7550
F 0 "DSEL1" H 6700 7750 50  0000 C CNN
F 1 "ROT_ENC" V 6800 7550 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03" H 6700 7550 50  0001 C CNN
F 3 "" H 6700 7550 50  0000 C CNN
	1    6700 7550
	1    0    0    -1  
$EndComp
Text Label 800  4450 0    60   ~ 0
BTN_RST
Text Label 800  4550 0    60   ~ 0
BTN_GO
Text Label 6450 7100 0    60   ~ 0
GND
Text Label 6450 6750 0    60   ~ 0
GND
Text Label 5400 7100 0    60   ~ 0
BTN_GO
Text Label 5400 6750 0    60   ~ 0
BTN_RST
$Comp
L R R1
U 1 1 5849E07B
P 5200 3850
F 0 "R1" V 5150 4000 50  0000 C CNN
F 1 "10K" V 5200 3850 50  0000 C CNN
F 2 "Discret:R3" V 5130 3850 50  0001 C CNN
F 3 "" H 5200 3850 50  0000 C CNN
	1    5200 3850
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5849EBC3
P 5200 3950
F 0 "R2" V 5150 4100 50  0000 C CNN
F 1 "10K" V 5200 3950 50  0000 C CNN
F 2 "Discret:R3" V 5130 3950 50  0001 C CNN
F 3 "" H 5200 3950 50  0000 C CNN
	1    5200 3950
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5849EC73
P 5200 4050
F 0 "R3" V 5150 4200 50  0000 C CNN
F 1 "10k" V 5200 4050 50  0000 C CNN
F 2 "Discret:R3" V 5130 4050 50  0001 C CNN
F 3 "" H 5200 4050 50  0000 C CNN
	1    5200 4050
	0    1    1    0   
$EndComp
Text Label 3650 5850 0    60   ~ 0
GND
Text Label 3650 5450 0    60   ~ 0
IN3_1CATH
Text Label 3000 5650 0    60   ~ 0
IN3_1
Text Label 3650 6450 0    60   ~ 0
GND
Text Label 3650 6050 0    60   ~ 0
IN3_2CATH
Text Label 3650 7050 0    60   ~ 0
GND
Text Label 3650 6650 0    60   ~ 0
IN3_3CATH
Text Label 3000 6250 0    60   ~ 0
IN3_2
Text Label 3000 6850 0    60   ~ 0
IN3_3
Text Label 1100 1050 0    60   ~ 0
GND
Text Label 900  1150 0    60   ~ 0
D+
Text Label 900  1250 0    60   ~ 0
D-
Text Label 1150 1700 0    60   ~ 0
GND
Text Label 950  2100 0    60   ~ 0
GND
Text Label 950  2200 0    60   ~ 0
D+
Text Label 950  2300 0    60   ~ 0
D-
Text Label 2150 1950 0    60   ~ 0
RAW
$Comp
L USB_A P2
U 1 1 584AE83C
P 850 1800
F 0 "P2" H 1100 1700 50  0000 C CNN
F 1 "USB_A" H 800 2000 50  0000 C CNN
F 2 "Connect:USB_A" V 800 1700 50  0001 C CNN
F 3 "" V 800 1700 50  0000 C CNN
	1    850  1800
	1    0    0    -1  
$EndComp
Text Label 2350 1050 0    60   ~ 0
RAW
Text Label 2350 1150 0    60   ~ 0
GND
Text Label 2350 1250 0    60   ~ 0
GND
$Comp
L VCC #PWR01
U 1 1 584B33EB
P 1700 1950
F 0 "#PWR01" H 1700 1800 50  0001 C CNN
F 1 "VCC" H 1700 2100 50  0000 C CNN
F 2 "" H 1700 1950 50  0000 C CNN
F 3 "" H 1700 1950 50  0000 C CNN
	1    1700 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 584B3CE5
P 1400 1050
F 0 "#PWR02" H 1400 800 50  0001 C CNN
F 1 "GND" H 1400 900 50  0000 C CNN
F 2 "" H 1400 1050 50  0000 C CNN
F 3 "" H 1400 1050 50  0000 C CNN
	1    1400 1050
	1    0    0    -1  
$EndComp
$Comp
L 1364HVPS U4
U 1 1 584B4EB8
P 1950 2850
F 0 "U4" H 1950 2850 60  0000 C CNN
F 1 "1364HVPS" H 1950 3250 60  0000 C CNN
F 2 "TES Power Supplies:1364HVPS" H 1950 2850 60  0001 C CNN
F 3 "" H 1950 2850 60  0000 C CNN
	1    1950 2850
	1    0    0    -1  
$EndComp
Text Label 2600 2900 0    60   ~ 0
GND
Text Label 800  4650 0    60   ~ 0
170V_ENA
Text Label 800  4050 0    60   ~ 0
ENABLE
Text Label 800  4150 0    60   ~ 0
LATCH
Text Label 800  4250 0    60   ~ 0
CLEAR
Text Label 1100 2600 0    60   ~ 0
GND
$Comp
L R R9
U 1 1 584C56D3
P 1000 2800
F 0 "R9" V 1100 2800 50  0000 C CNN
F 1 "100K" V 1000 2800 50  0000 C CNN
F 2 "Discret:R3" V 930 2800 50  0001 C CNN
F 3 "" H 1000 2800 50  0000 C CNN
	1    1000 2800
	-1   0    0    1   
$EndComp
Text Label 6150 7550 0    60   ~ 0
GND
Text Label 6150 7450 0    60   ~ 0
DSEL_A
Text Label 6150 7650 0    60   ~ 0
DSEL_B
$Comp
L CONN_01X03 NSEL1
U 1 1 584CECC2
P 5900 7550
F 0 "NSEL1" H 5900 7750 50  0000 C CNN
F 1 "ROT_ENC" V 6000 7550 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03" H 5900 7550 50  0001 C CNN
F 3 "" H 5900 7550 50  0000 C CNN
	1    5900 7550
	1    0    0    -1  
$EndComp
Text Label 5350 7550 0    60   ~ 0
GND
Text Label 5350 7450 0    60   ~ 0
NSEL_A
Text Label 5350 7650 0    60   ~ 0
NSEL_B
Text Label 1000 3050 0    60   ~ 0
170V_ENA
Text Label 2250 3950 0    60   ~ 0
5V
Text Label 1100 2700 0    60   ~ 0
RAW
NoConn ~ 2600 2600
$Comp
L R R18
U 1 1 584FA3FF
P 2750 2700
F 0 "R18" V 2850 2700 50  0000 C CNN
F 1 "47K" V 2750 2700 50  0000 C CNN
F 2 "Discret:R3" V 2680 2700 50  0001 C CNN
F 3 "" H 2750 2700 50  0000 C CNN
	1    2750 2700
	0    -1   -1   0   
$EndComp
Text Label 2450 4350 0    60   ~ 0
RND
Text Label 2450 4150 0    60   ~ 0
NSEL_A
Text Label 2450 4050 0    60   ~ 0
NSEL_B
$Comp
L R R10
U 1 1 5850DD95
P 4650 5450
F 0 "R10" V 4550 5450 50  0000 C CNN
F 1 "68K" V 4650 5450 50  0000 C CNN
F 2 "Discret:R3" V 4580 5450 50  0001 C CNN
F 3 "" H 4650 5450 50  0000 C CNN
	1    4650 5450
	0    1    1    0   
$EndComp
Text Label 800  4750 0    60   ~ 0
DSEL_A
Text Label 2450 4750 0    60   ~ 0
DSEL_B
$Comp
L R R11
U 1 1 5851BBB9
P 4650 6050
F 0 "R11" V 4550 6050 50  0000 C CNN
F 1 "68K" V 4650 6050 50  0000 C CNN
F 2 "Discret:R3" V 4580 6050 50  0001 C CNN
F 3 "" H 4650 6050 50  0000 C CNN
	1    4650 6050
	0    1    1    0   
$EndComp
$Comp
L R R12
U 1 1 5851BD27
P 4650 6650
F 0 "R12" V 4550 6650 50  0000 C CNN
F 1 "68K" V 4650 6650 50  0000 C CNN
F 2 "Discret:R3" V 4580 6650 50  0001 C CNN
F 3 "" H 4650 6650 50  0000 C CNN
	1    4650 6650
	0    1    1    0   
$EndComp
$Comp
L Q_NPN_EBC Q1
U 1 1 5851EC4C
P 3450 5650
F 0 "Q1" H 3750 5700 50  0000 R CNN
F 1 "MPSA42" H 3950 5600 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 3650 5750 50  0001 C CNN
F 3 "" H 3450 5650 50  0000 C CNN
	1    3450 5650
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_EBC Q2
U 1 1 5851F5EA
P 3450 6250
F 0 "Q2" H 3750 6300 50  0000 R CNN
F 1 "MPSA42" H 3950 6200 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 3650 6350 50  0001 C CNN
F 3 "" H 3450 6250 50  0000 C CNN
	1    3450 6250
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_EBC Q3
U 1 1 5851F6C0
P 3450 6850
F 0 "Q3" H 3750 6900 50  0000 R CNN
F 1 "MPSA42" H 3950 6800 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 3650 6950 50  0001 C CNN
F 3 "" H 3450 6850 50  0000 C CNN
	1    3450 6850
	1    0    0    -1  
$EndComp
NoConn ~ 5050 4250
NoConn ~ 5050 4350
NoConn ~ 5050 4450
NoConn ~ 5050 4550
NoConn ~ 5050 4750
NoConn ~ 5050 4150
$Comp
L D_Schottky D1
U 1 1 58528E13
P 1950 1950
F 0 "D1" H 1950 1850 50  0000 C CNN
F 1 "1N5817" H 1950 2050 50  0000 C CNN
F 2 "Discret:DO-41" H 1950 1950 50  0001 C CNN
F 3 "" H 1950 1950 50  0000 C CNN
	1    1950 1950
	-1   0    0    1   
$EndComp
Text Label 1750 1950 0    60   ~ 0
5V
Text Label 950  2400 0    60   ~ 0
5V
Text Label 900  1350 0    60   ~ 0
5V
$Comp
L USB_OTG P1
U 1 1 5852DB3E
P 800 750
F 0 "P1" H 1125 625 50  0000 C CNN
F 1 "USB_OTG" H 800 950 50  0000 C CNN
F 2 "Connect:USB_Micro-B" V 750 650 50  0001 C CNN
F 3 "" V 750 650 50  0000 C CNN
	1    800  750 
	1    0    0    -1  
$EndComp
NoConn ~ 900  1050
NoConn ~ 1700 2600
Text Label 4900 5450 0    60   ~ 0
170V
Text Label 900  5550 0    60   ~ 0
5V
Text Label 1500 6050 0    60   ~ 0
GND
Text Label 900  5950 0    60   ~ 0
5V
Text Label 1500 6450 0    60   ~ 0
GND
Text Label 900  6350 0    60   ~ 0
5V
Text Label 1500 6850 0    60   ~ 0
GND
Text Label 900  6750 0    60   ~ 0
5V
Wire Wire Line
	8200 900  8550 900 
Wire Wire Line
	7550 1150 7900 1150
Wire Wire Line
	7550 1250 7900 1250
Wire Wire Line
	7550 1350 7900 1350
Wire Wire Line
	7550 1450 7900 1450
Wire Wire Line
	7550 1650 7900 1650
Wire Wire Line
	7550 1750 7900 1750
Wire Wire Line
	7550 1850 7900 1850
Wire Bus Line
	8000 1250 8000 2050
Wire Wire Line
	6250 1150 5900 1150
Wire Wire Line
	6250 1250 5900 1250
Wire Wire Line
	6250 1850 5900 1850
Wire Bus Line
	5800 1250 5800 2050
Wire Wire Line
	7900 1550 7550 1550
Wire Wire Line
	5900 1350 6250 1350
Wire Wire Line
	5900 1450 6250 1450
Wire Wire Line
	5900 1550 6250 1550
Wire Wire Line
	5900 1650 6250 1650
Wire Wire Line
	5900 1750 6250 1750
Wire Wire Line
	8100 1350 8550 1350
Wire Wire Line
	8100 1500 8550 1500
Wire Wire Line
	8100 1650 8550 1650
Wire Wire Line
	8100 1800 8550 1800
Wire Wire Line
	10450 900  10850 900 
Wire Wire Line
	10450 1050 10850 1050
Wire Wire Line
	10450 1200 10850 1200
Wire Wire Line
	10450 1350 10850 1350
Wire Wire Line
	10450 1500 10850 1500
Wire Wire Line
	10450 1650 10850 1650
Wire Bus Line
	10950 1000 10950 2050
Wire Wire Line
	1150 3650 1550 3650
Wire Wire Line
	1150 3750 1550 3750
Wire Wire Line
	1150 3850 1550 3850
Wire Wire Line
	1150 3950 1550 3950
Wire Wire Line
	800  4050 1550 4050
Wire Wire Line
	800  4150 1550 4150
Wire Wire Line
	800  4250 1550 4250
Wire Wire Line
	800  4350 1550 4350
Wire Wire Line
	800  4450 1550 4450
Wire Wire Line
	800  4550 1550 4550
Wire Wire Line
	800  4650 1550 4650
Wire Wire Line
	800  4750 1550 4750
Wire Wire Line
	2250 3650 2650 3650
Wire Wire Line
	2250 3750 2650 3750
Wire Wire Line
	2250 3850 2650 3850
Wire Wire Line
	2250 3950 2750 3950
Wire Wire Line
	2250 4050 2750 4050
Wire Wire Line
	2250 4150 2750 4150
Wire Wire Line
	2250 4250 2650 4250
Wire Wire Line
	2250 4350 2650 4350
Wire Wire Line
	2250 4450 2650 4450
Wire Wire Line
	2250 4550 2650 4550
Wire Wire Line
	2250 4650 2650 4650
Wire Wire Line
	2250 4750 2750 4750
Wire Wire Line
	7500 550  7500 900 
Wire Bus Line
	10950 2050 5800 2050
Wire Wire Line
	8150 2350 8550 2350
Wire Wire Line
	7550 2600 7900 2600
Wire Wire Line
	7550 2700 7900 2700
Wire Wire Line
	7550 2800 7900 2800
Wire Wire Line
	7550 2900 7900 2900
Wire Wire Line
	7550 3100 7900 3100
Wire Wire Line
	7550 3200 7900 3200
Wire Wire Line
	7550 3300 7900 3300
Wire Bus Line
	8000 2700 8000 3500
Wire Wire Line
	6250 2600 5900 2600
Wire Wire Line
	6250 2700 5900 2700
Wire Wire Line
	6250 3300 5900 3300
Wire Bus Line
	5800 2700 5800 3500
Wire Wire Line
	7900 3000 7550 3000
Wire Wire Line
	5900 2800 6250 2800
Wire Wire Line
	5900 2900 6250 2900
Wire Wire Line
	5900 3000 6250 3000
Wire Wire Line
	5900 3100 6250 3100
Wire Wire Line
	5900 3200 6250 3200
Wire Wire Line
	8100 2800 8550 2800
Wire Wire Line
	8100 2950 8550 2950
Wire Wire Line
	8100 3100 8550 3100
Wire Wire Line
	8100 3250 8550 3250
Wire Wire Line
	10450 2350 10850 2350
Wire Wire Line
	10450 2500 10850 2500
Wire Wire Line
	10450 2650 10850 2650
Wire Wire Line
	10450 2800 10850 2800
Wire Wire Line
	10450 2950 10850 2950
Wire Wire Line
	10450 3100 10850 3100
Wire Bus Line
	10950 2450 10950 3500
Wire Bus Line
	10950 3500 5800 3500
Wire Wire Line
	8150 3800 8550 3800
Wire Wire Line
	7550 4050 7900 4050
Wire Wire Line
	7550 4150 7900 4150
Wire Wire Line
	7550 4250 7900 4250
Wire Wire Line
	7550 4350 7900 4350
Wire Wire Line
	7550 4550 7900 4550
Wire Wire Line
	7550 4650 7900 4650
Wire Wire Line
	7550 4750 7900 4750
Wire Bus Line
	8000 4150 8000 4950
Wire Wire Line
	6250 4050 5900 4050
Wire Wire Line
	6250 4150 5900 4150
Wire Wire Line
	6250 4750 5900 4750
Wire Bus Line
	5800 4150 5800 4950
Wire Wire Line
	7900 4450 7550 4450
Wire Wire Line
	5900 4250 6250 4250
Wire Wire Line
	5900 4350 6250 4350
Wire Wire Line
	5900 4450 6250 4450
Wire Wire Line
	5900 4550 6250 4550
Wire Wire Line
	5900 4650 6250 4650
Wire Wire Line
	8100 4250 8550 4250
Wire Wire Line
	8100 4400 8550 4400
Wire Wire Line
	8100 4550 8550 4550
Wire Wire Line
	8100 4700 8550 4700
Wire Wire Line
	10450 3800 10850 3800
Wire Wire Line
	10450 3950 10850 3950
Wire Wire Line
	10450 4100 10850 4100
Wire Wire Line
	10450 4250 10850 4250
Wire Wire Line
	10450 4400 10850 4400
Wire Wire Line
	10450 4550 10850 4550
Wire Bus Line
	10950 3900 10950 4950
Wire Bus Line
	10950 4950 5800 4950
Wire Wire Line
	8150 5250 8550 5250
Wire Wire Line
	7550 5500 7900 5500
Wire Wire Line
	7550 5600 7900 5600
Wire Wire Line
	7550 5700 7900 5700
Wire Wire Line
	7550 5800 7900 5800
Wire Wire Line
	7550 6000 7900 6000
Wire Wire Line
	7550 6100 7900 6100
Wire Wire Line
	7550 6200 7900 6200
Wire Bus Line
	8000 5600 8000 6400
Wire Wire Line
	6250 5500 5900 5500
Wire Wire Line
	6250 5600 5900 5600
Wire Wire Line
	6250 6200 5900 6200
Wire Bus Line
	5800 5600 5800 6400
Wire Wire Line
	7900 5900 7550 5900
Wire Wire Line
	5900 5700 6250 5700
Wire Wire Line
	5900 5800 6250 5800
Wire Wire Line
	5900 5900 6250 5900
Wire Wire Line
	5900 6000 6250 6000
Wire Wire Line
	5900 6100 6250 6100
Wire Wire Line
	8100 5700 8550 5700
Wire Wire Line
	8100 5850 8550 5850
Wire Wire Line
	8100 6000 8550 6000
Wire Wire Line
	8100 6150 8550 6150
Wire Wire Line
	10450 5250 10850 5250
Wire Wire Line
	10450 5400 10850 5400
Wire Wire Line
	10450 5550 10850 5550
Wire Wire Line
	10450 5700 10850 5700
Wire Wire Line
	10450 5850 10850 5850
Wire Wire Line
	10450 6000 10850 6000
Wire Bus Line
	10950 5350 10950 6400
Wire Bus Line
	10950 6400 5800 6400
Wire Wire Line
	5450 900  5050 900 
Wire Wire Line
	5450 1000 5050 1000
Wire Wire Line
	5450 1100 5050 1100
Wire Wire Line
	5450 1200 5050 1200
Wire Wire Line
	5450 1300 5050 1300
Wire Wire Line
	5450 1400 5050 1400
Wire Wire Line
	5450 1500 5050 1500
Wire Wire Line
	5450 1600 5050 1600
Wire Wire Line
	5450 1800 5050 1800
Wire Wire Line
	3650 900  3250 900 
Wire Wire Line
	3650 1100 3250 1100
Wire Wire Line
	3650 1200 3250 1200
Wire Wire Line
	3650 1400 3250 1400
Wire Wire Line
	3650 1500 3250 1500
Wire Wire Line
	5450 2350 5050 2350
Wire Wire Line
	5450 2450 5050 2450
Wire Wire Line
	5450 2550 5050 2550
Wire Wire Line
	5450 2650 5050 2650
Wire Wire Line
	5450 2750 5050 2750
Wire Wire Line
	5450 2850 5050 2850
Wire Wire Line
	5450 2950 5050 2950
Wire Wire Line
	5450 3050 5050 3050
Wire Wire Line
	5450 3250 5050 3250
Wire Wire Line
	3650 2350 3250 2350
Wire Wire Line
	3650 2550 3250 2550
Wire Wire Line
	3650 2650 3250 2650
Wire Wire Line
	3650 2850 3250 2850
Wire Wire Line
	3650 2950 3250 2950
Wire Wire Line
	5750 3850 5350 3850
Wire Wire Line
	5750 3950 5350 3950
Wire Wire Line
	5750 4050 5350 4050
Wire Wire Line
	3650 3850 3250 3850
Wire Wire Line
	3650 4050 3250 4050
Wire Wire Line
	3650 4150 3250 4150
Wire Wire Line
	3650 4350 3250 4350
Wire Wire Line
	3650 4450 3250 4450
Wire Wire Line
	5450 1800 5450 2100
Wire Wire Line
	5450 2100 3250 2100
Wire Wire Line
	3250 2100 3250 2350
Wire Wire Line
	5450 3250 5450 3550
Wire Wire Line
	5450 3550 3250 3550
Wire Wire Line
	3250 3550 3250 3850
Wire Wire Line
	1500 5550 1800 5550
Wire Wire Line
	1500 5650 1700 5650
Connection ~ 4800 6050
Wire Wire Line
	6400 7100 6650 7100
Wire Wire Line
	6400 6750 6650 6750
Wire Wire Line
	5400 7100 5800 7100
Wire Wire Line
	5400 6750 5800 6750
Wire Wire Line
	3550 5850 3850 5850
Wire Wire Line
	3550 5450 4100 5450
Wire Wire Line
	3550 6450 3850 6450
Wire Wire Line
	3550 6050 4100 6050
Wire Wire Line
	3550 7050 3850 7050
Wire Wire Line
	3550 6650 4100 6650
Wire Wire Line
	3000 5650 3250 5650
Wire Wire Line
	3000 6250 3250 6250
Wire Wire Line
	3000 6850 3250 6850
Wire Wire Line
	1200 650  1400 650 
Wire Wire Line
	1000 1050 1400 1050
Wire Wire Line
	1100 1150 800  1150
Wire Wire Line
	800  1150 800  1050
Wire Wire Line
	1100 1250 700  1250
Wire Wire Line
	700  1250 700  1050
Wire Wire Line
	600  1350 600  1050
Wire Wire Line
	1150 1700 1350 1700
Wire Wire Line
	950  2100 1150 2100
Wire Wire Line
	1150 2200 850  2200
Wire Wire Line
	850  2200 850  2100
Wire Wire Line
	1150 2300 750  2300
Wire Wire Line
	750  2300 750  2100
Wire Wire Line
	1150 2400 650  2400
Wire Wire Line
	650  2400 650  2100
Wire Wire Line
	2250 1050 2550 1050
Wire Wire Line
	2550 1150 2250 1150
Wire Wire Line
	2550 1250 2250 1250
Wire Wire Line
	2600 3050 2800 3050
Wire Wire Line
	1000 2600 1300 2600
Wire Wire Line
	1000 2950 1000 3050
Wire Wire Line
	1000 2650 1000 2600
Wire Wire Line
	6150 7550 6500 7550
Wire Wire Line
	6150 7450 6500 7450
Wire Wire Line
	6150 7650 6500 7650
Wire Wire Line
	5350 7550 5700 7550
Wire Wire Line
	5350 7450 5700 7450
Wire Wire Line
	5350 7650 5700 7650
Wire Wire Line
	1100 2700 1300 2700
Wire Wire Line
	2900 2900 2600 2900
Wire Wire Line
	2600 2900 2600 2800
Wire Wire Line
	1000 3050 1300 3050
Wire Wire Line
	2900 2700 2900 2900
Wire Wire Line
	2100 1950 2350 1950
Wire Wire Line
	1800 1950 1700 1950
Wire Wire Line
	1100 1350 600  1350
Wire Wire Line
	5150 5450 4800 5450
Wire Wire Line
	4800 5450 4800 6650
Wire Wire Line
	1000 5550 900  5550
Wire Wire Line
	1500 6050 1700 6050
Wire Wire Line
	1000 5950 900  5950
Wire Wire Line
	1500 6450 1700 6450
Wire Wire Line
	1000 6350 900  6350
Wire Wire Line
	1500 6850 1700 6850
Wire Wire Line
	1000 6750 900  6750
Wire Wire Line
	1000 5650 900  5650
Wire Wire Line
	900  5650 900  5800
Wire Wire Line
	900  5800 1700 5800
Wire Wire Line
	1700 5800 1700 5950
Wire Wire Line
	1700 5950 1500 5950
Wire Wire Line
	1000 6050 900  6050
Wire Wire Line
	900  6050 900  6200
Wire Wire Line
	900  6200 1700 6200
Wire Wire Line
	1700 6200 1700 6350
Wire Wire Line
	1700 6350 1500 6350
Wire Wire Line
	1000 6450 900  6450
Wire Wire Line
	900  6450 900  6600
Wire Wire Line
	900  6600 1700 6600
Wire Wire Line
	1700 6600 1700 6750
Wire Wire Line
	1700 6750 1500 6750
Wire Wire Line
	1400 1050 1400 650 
$Comp
L CONN_01X04 P8
U 1 1 5853FA85
P 2450 7200
F 0 "P8" H 2450 7450 50  0000 C CNN
F 1 "CONN_01X04" V 2550 7200 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04" H 2450 7200 50  0001 C CNN
F 3 "" H 2450 7200 50  0000 C CNN
	1    2450 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  7050 2250 7050
Wire Wire Line
	1900 7150 2250 7150
Wire Wire Line
	1900 7250 2250 7250
Wire Wire Line
	1900 7350 2250 7350
Wire Wire Line
	1000 6850 900  6850
Wire Wire Line
	900  6850 900  7050
Text Label 1900 7050 0    60   ~ 0
RGBOUT
Text Label 1900 7350 0    60   ~ 0
GND
Text Label 1900 7250 0    60   ~ 0
5V
Text Label 1900 7150 0    60   ~ 0
A1
$Comp
L WS2812B D2
U 1 1 585410CE
P 1250 5600
F 0 "D2" H 1250 5750 50  0000 C CNN
F 1 "WS2812B" H 1250 5450 50  0000 C CNN
F 2 "LEDs:LED_WS2812B-PLCC4" H 1250 4400 50  0001 C CNN
F 3 "" H 1250 4400 50  0000 C CNN
	1    1250 5600
	1    0    0    -1  
$EndComp
$Comp
L WS2812B D3
U 1 1 585414E9
P 1250 6000
F 0 "D3" H 1250 6150 50  0000 C CNN
F 1 "WS2812B" H 1250 5850 50  0000 C CNN
F 2 "LEDs:LED_WS2812B-PLCC4" H 1250 4800 50  0001 C CNN
F 3 "" H 1250 4800 50  0000 C CNN
	1    1250 6000
	1    0    0    -1  
$EndComp
$Comp
L WS2812B D4
U 1 1 58541587
P 1250 6400
F 0 "D4" H 1250 6550 50  0000 C CNN
F 1 "WS2812B" H 1250 6250 50  0000 C CNN
F 2 "LEDs:LED_WS2812B-PLCC4" H 1250 5200 50  0001 C CNN
F 3 "" H 1250 5200 50  0000 C CNN
	1    1250 6400
	1    0    0    -1  
$EndComp
$Comp
L WS2812B D5
U 1 1 58541626
P 1250 6800
F 0 "D5" H 1250 6950 50  0000 C CNN
F 1 "WS2812B" H 1250 6650 50  0000 C CNN
F 2 "LEDs:LED_WS2812B-PLCC4" H 1250 5600 50  0001 C CNN
F 3 "" H 1250 5600 50  0000 C CNN
	1    1250 6800
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 58542B16
P 3500 1800
F 0 "C1" H 3525 1900 50  0000 L CNN
F 1 "0.1uF" H 3525 1700 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 3538 1650 50  0001 C CNN
F 3 "" H 3500 1800 50  0000 C CNN
	1    3500 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1650 3500 1650
Wire Wire Line
	3250 1950 3500 1950
Text Label 3250 1950 0    60   ~ 0
GND
Text Label 3250 1650 0    60   ~ 0
5V
$Comp
L C C2
U 1 1 585432C6
P 3500 3250
F 0 "C2" H 3525 3350 50  0000 L CNN
F 1 "0.1uF" H 3525 3150 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 3538 3100 50  0001 C CNN
F 3 "" H 3500 3250 50  0000 C CNN
	1    3500 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3100 3500 3100
Wire Wire Line
	3250 3400 3500 3400
Text Label 3250 3400 0    60   ~ 0
GND
Text Label 3250 3100 0    60   ~ 0
5V
$Comp
L C C3
U 1 1 5854342D
P 3500 4750
F 0 "C3" H 3525 4850 50  0000 L CNN
F 1 "0.1uF" H 3525 4650 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 3538 4600 50  0001 C CNN
F 3 "" H 3500 4750 50  0000 C CNN
	1    3500 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4600 3500 4600
Wire Wire Line
	3250 4900 3500 4900
Text Label 3250 4900 0    60   ~ 0
GND
Text Label 3250 4600 0    60   ~ 0
5V
Text Label 8200 900  0    60   ~ 0
T1ANODE
Wire Wire Line
	7500 900  7900 900 
Text Label 8150 2350 0    60   ~ 0
T2ANODE
Text Label 8150 3800 0    60   ~ 0
T3ANODE
Text Label 8150 5250 0    60   ~ 0
T4ANODE
Wire Wire Line
	7500 5250 7850 5250
Wire Wire Line
	7500 3800 7850 3800
Wire Wire Line
	7500 2350 7850 2350
Text Notes 800  7600 0    60   ~ 0
Maybe you'll want to do something with these? idk
NoConn ~ 2650 4350
$EndSCHEMATC
