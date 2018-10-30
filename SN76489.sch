EESchema Schematic File Version 4
LIBS:SN76489-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "SN76489 Sound Card for RC2014"
Date "2018-10-25"
Rev "REV1"
Comp "J.B. Langston"
Comment1 "https://github.com/jblang/SN76489"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x39 J1
U 1 1 5A772849
P 1800 3400
F 0 "J1" H 1800 5400 50  0000 C CNN
F 1 "BUS" H 1800 1400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x39_P2.54mm_Vertical" H 1800 3400 50  0001 C CNN
F 3 "" H 1800 3400 50  0001 C CNN
	1    1800 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:C C7
U 1 1 5A799B12
P 10400 1550
F 0 "C7" H 10425 1650 50  0000 L CNN
F 1 "0.1uf" H 10425 1450 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10438 1400 50  0001 C CNN
F 3 "" H 10400 1550 50  0001 C CNN
	1    10400 1550
	1    0    0    -1  
$EndComp
Text Label 2000 2700 0    60   ~ 0
D0
Text Label 2000 2600 0    60   ~ 0
D1
Text Label 2000 2500 0    60   ~ 0
D2
Text Label 2000 2400 0    60   ~ 0
D3
Text Label 2000 2300 0    60   ~ 0
D4
Text Label 2000 2200 0    60   ~ 0
D5
Text Label 2000 2100 0    60   ~ 0
D6
Text Label 2000 2000 0    60   ~ 0
D7
NoConn ~ 2000 1500
NoConn ~ 2000 1600
NoConn ~ 2000 1700
NoConn ~ 2000 1800
NoConn ~ 2000 1900
NoConn ~ 2000 3100
NoConn ~ 2000 5300
NoConn ~ 2000 5200
NoConn ~ 2000 5100
NoConn ~ 2000 5000
NoConn ~ 2000 4900
Text Label 2000 4200 0    60   ~ 0
A4
Text Label 2000 4300 0    60   ~ 0
A5
Text Label 2000 4400 0    60   ~ 0
A6
Text Label 2000 4500 0    60   ~ 0
A7
Text Label 2000 2800 0    60   ~ 0
~IORQ~
NoConn ~ 2000 4800
NoConn ~ 2000 4700
NoConn ~ 2000 4600
Text Label 2000 3000 0    60   ~ 0
~WR~
Text Label 2000 4000 0    60   ~ 0
A2
Text Label 2000 4100 0    60   ~ 0
A3
$Comp
L SN76489:SN76489 U1
U 1 1 5B4BDE6E
P 9400 4050
F 0 "U1" H 9400 4050 60  0000 C CNN
F 1 "SN76489 (L)" H 9400 5050 60  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 9400 4050 60  0001 C CNN
F 3 "" H 9400 4050 60  0001 C CNN
	1    9400 4050
	-1   0    0    -1  
$EndComp
Text Label 10050 3200 2    60   ~ 0
D0
Text Label 10050 3300 2    60   ~ 0
D1
Text Label 10050 3400 2    60   ~ 0
D2
Text Label 10050 3500 2    60   ~ 0
D3
Text Label 10050 3600 2    60   ~ 0
D4
Text Label 10050 3700 2    60   ~ 0
D5
Text Label 10050 3800 2    60   ~ 0
D6
Text Label 10050 3900 2    60   ~ 0
D7
Text Label 2000 3300 0    60   ~ 0
CLKIN
Text Label 8750 3600 0    60   ~ 0
CLK
$Comp
L power:GND #PWR0101
U 1 1 5B4BE88C
P 9400 4250
F 0 "#PWR0101" H 9400 4000 50  0001 C CNN
F 1 "GND" H 9400 4100 50  0000 C CNN
F 2 "" H 9400 4250 50  0001 C CNN
F 3 "" H 9400 4250 50  0001 C CNN
	1    9400 4250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0102
U 1 1 5B4BE8E3
P 9400 2850
F 0 "#PWR0102" H 9400 2700 50  0001 C CNN
F 1 "VCC" H 9400 3000 50  0000 C CNN
F 2 "" H 9400 2850 50  0001 C CNN
F 3 "" H 9400 2850 50  0001 C CNN
	1    9400 2850
	1    0    0    -1  
$EndComp
Text Label 5350 4950 0    60   ~ 0
~IORQ~
Text Label 5450 5050 0    60   ~ 0
~WR~
Wire Wire Line
	5550 4950 5350 4950
Wire Wire Line
	8900 3200 8850 3200
Wire Wire Line
	8850 3200 8850 3300
Wire Wire Line
	8850 3300 8900 3300
Wire Wire Line
	9750 4600 9500 4600
$Comp
L power:GND #PWR0110
U 1 1 5BC7E987
P 9500 4600
F 0 "#PWR0110" H 9500 4350 50  0001 C CNN
F 1 "GND" H 9500 4450 50  0000 C CNN
F 2 "" H 9500 4600 50  0001 C CNN
F 3 "" H 9500 4600 50  0001 C CNN
	1    9500 4600
	-1   0    0    -1  
$EndComp
Text Label 8900 3800 2    50   ~ 0
AUDIO_L
$Comp
L Device:C C2
U 1 1 5BC8AB20
P 10400 3550
F 0 "C2" H 10425 3650 50  0000 L CNN
F 1 "0.1uf" H 10425 3450 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10438 3400 50  0001 C CNN
F 3 "" H 10400 3550 50  0001 C CNN
	1    10400 3550
	1    0    0    -1  
$EndComp
Text Label 2000 3500 0    60   ~ 0
~M1~
$Comp
L power:GND #PWR0103
U 1 1 5BF5A8A9
P 2250 3700
F 0 "#PWR0103" H 2250 3450 50  0001 C CNN
F 1 "GND" H 2250 3550 50  0000 C CNN
F 2 "" H 2250 3700 50  0001 C CNN
F 3 "" H 2250 3700 50  0001 C CNN
	1    2250 3700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0112
U 1 1 5BF5AC14
P 2250 3600
F 0 "#PWR0112" H 2250 3450 50  0001 C CNN
F 1 "VCC" H 2250 3750 50  0000 C CNN
F 2 "" H 2250 3600 50  0001 C CNN
F 3 "" H 2250 3600 50  0001 C CNN
	1    2250 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J5
U 1 1 5BFCD4B3
P 2950 3300
F 0 "J5" H 2870 2575 50  0000 C CNN
F 1 "EXT BUS" H 2870 2666 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 2950 3300 50  0001 C CNN
F 3 "~" H 2950 3300 50  0001 C CNN
	1    2950 3300
	1    0    0    1   
$EndComp
Wire Wire Line
	2750 3600 2250 3600
Wire Wire Line
	2750 3700 2250 3700
Text Label 2750 2900 2    60   ~ 0
~WAIT~
NoConn ~ 2750 2800
NoConn ~ 2750 3000
NoConn ~ 2750 3100
NoConn ~ 2750 3200
NoConn ~ 2750 3400
NoConn ~ 2750 3500
Text Label 8700 3400 0    60   ~ 0
~WAIT~
$Comp
L Device:CP C4
U 1 1 5C11332A
P 8450 3950
F 0 "C4" H 8568 3996 50  0000 L CNN
F 1 "CP" H 8568 3905 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 8488 3800 50  0001 C CNN
F 3 "~" H 8450 3950 50  0001 C CNN
	1    8450 3950
	1    0    0    -1  
$EndComp
Text Label 5450 4350 0    60   ~ 0
A5
Text Label 5450 4450 0    60   ~ 0
A6
Text Label 5450 4550 0    60   ~ 0
A7
Wire Wire Line
	5450 4350 5550 4350
Wire Wire Line
	5450 4450 5550 4450
Wire Wire Line
	5450 4550 5550 4550
Wire Wire Line
	5550 5050 5450 5050
Wire Wire Line
	8700 3400 8900 3400
Wire Wire Line
	9900 3500 10050 3500
Wire Wire Line
	8900 3600 8750 3600
Wire Wire Line
	9900 3600 10050 3600
Wire Wire Line
	9900 3700 10050 3700
Wire Wire Line
	9900 3800 10050 3800
Wire Wire Line
	9900 3900 10050 3900
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J7
U 1 1 5BD162C1
P 7500 4650
F 0 "J7" H 7550 5167 50  0000 C CNN
F 1 "A7-A5 (L)" H 7550 5076 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 7500 4650 50  0001 C CNN
F 3 "~" H 7500 4650 50  0001 C CNN
	1    7500 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2400 5550 2400
Wire Wire Line
	5450 2500 5550 2500
Wire Wire Line
	5450 2600 5550 2600
Text Label 5450 2600 0    60   ~ 0
A4
Text Label 5450 2400 0    60   ~ 0
A2
Text Label 5450 2500 0    60   ~ 0
A3
$Comp
L Connector_Generic:Conn_02x09_Odd_Even J6
U 1 1 5BD1FD5C
P 7500 2800
F 0 "J6" H 7550 3417 50  0000 C CNN
F 1 "A4-A2 (L)" H 7550 3326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x09_P2.54mm_Vertical" H 7500 2800 50  0001 C CNN
F 3 "~" H 7500 2800 50  0001 C CNN
	1    7500 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 5050 7800 4950
Wire Wire Line
	7800 4950 7800 4850
Connection ~ 7800 4950
Wire Wire Line
	7800 4850 7800 4750
Connection ~ 7800 4850
Wire Wire Line
	7800 4750 7800 4650
Connection ~ 7800 4750
Wire Wire Line
	7800 4650 7800 4550
Connection ~ 7800 4650
Wire Wire Line
	7800 4550 7800 4450
Connection ~ 7800 4550
Wire Wire Line
	7800 4450 7800 4350
Connection ~ 7800 4450
Connection ~ 7800 4350
$Comp
L SN76489:SN76489 U4
U 1 1 5BD75352
P 9400 2100
F 0 "U4" H 9400 2100 60  0000 C CNN
F 1 "SN76489 (R)" H 9400 3100 60  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 9400 2100 60  0001 C CNN
F 3 "" H 9400 2100 60  0001 C CNN
	1    9400 2100
	-1   0    0    -1  
$EndComp
Text Label 8750 1650 0    60   ~ 0
CLK
$Comp
L power:GND #PWR0106
U 1 1 5BD75362
P 9400 2300
F 0 "#PWR0106" H 9400 2050 50  0001 C CNN
F 1 "GND" H 9400 2150 50  0000 C CNN
F 2 "" H 9400 2300 50  0001 C CNN
F 3 "" H 9400 2300 50  0001 C CNN
	1    9400 2300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 5BD75368
P 9400 900
F 0 "#PWR0107" H 9400 750 50  0001 C CNN
F 1 "VCC" H 9400 1050 50  0000 C CNN
F 2 "" H 9400 900 50  0001 C CNN
F 3 "" H 9400 900 50  0001 C CNN
	1    9400 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 950  9400 900 
Wire Wire Line
	8900 1250 8850 1250
Wire Wire Line
	8850 1250 8850 1350
Wire Wire Line
	8850 1350 8900 1350
Text Label 8900 1850 2    50   ~ 0
AUDIO_R
Text Label 8700 1450 0    60   ~ 0
~WAIT~
Wire Wire Line
	8700 1450 8900 1450
Wire Wire Line
	8900 1650 8750 1650
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J9
U 1 1 5BD7F915
P 7500 5700
F 0 "J9" H 7550 6217 50  0000 C CNN
F 1 "A7-A5 (R)" H 7550 6126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 7500 5700 50  0001 C CNN
F 3 "~" H 7500 5700 50  0001 C CNN
	1    7500 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5050 7300 5050
$Comp
L Device:C C1
U 1 1 5BF9936C
P 6100 6500
F 0 "C1" H 6125 6600 50  0000 L CNN
F 1 "0.1uf" H 6125 6400 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 6138 6350 50  0001 C CNN
F 3 "" H 6100 6500 50  0001 C CNN
	1    6100 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5BF99401
P 5100 5000
F 0 "C3" H 5125 5100 50  0000 L CNN
F 1 "0.1uf" H 5125 4900 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 5138 4850 50  0001 C CNN
F 3 "" H 5100 5000 50  0001 C CNN
	1    5100 5000
	1    0    0    -1  
$EndComp
Connection ~ 2250 3600
Wire Wire Line
	2000 3600 2250 3600
Wire Wire Line
	2000 3700 2250 3700
Connection ~ 2250 3700
$Comp
L Device:CP C5
U 1 1 5BFE283F
P 8100 2000
F 0 "C5" H 8218 2046 50  0000 L CNN
F 1 "CP" H 8218 1955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 8138 1850 50  0001 C CNN
F 3 "~" H 8100 2000 50  0001 C CNN
	1    8100 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 4700 9600 4700
$Comp
L 74xx:74LS74 U5
U 1 1 5C05C4F8
P 3300 6300
F 0 "U5" H 2950 6050 50  0000 C CNN
F 1 "74HCT74" H 2950 5950 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 3300 6300 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 3300 6300 50  0001 C CNN
	1    3300 6300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U5
U 2 1 5C05C53A
P 4150 6300
F 0 "U5" H 4500 6050 50  0000 C CNN
F 1 "74HCT74" H 4500 5950 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 4150 6300 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 4150 6300 50  0001 C CNN
	2    4150 6300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U5
U 3 1 5C05C5E2
P 5400 6550
F 0 "U5" H 5630 6596 50  0000 L CNN
F 1 "74HCT74" H 5630 6505 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5400 6550 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 5400 6550 50  0001 C CNN
	3    5400 6550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0108
U 1 1 5C05C6C2
P 5400 6100
F 0 "#PWR0108" H 5400 5950 50  0001 C CNN
F 1 "VCC" H 5400 6250 50  0000 C CNN
F 2 "" H 5400 6100 50  0001 C CNN
F 3 "" H 5400 6100 50  0001 C CNN
	1    5400 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5C05C6FB
P 5400 7000
F 0 "#PWR0109" H 5400 6750 50  0001 C CNN
F 1 "GND" H 5400 6850 50  0000 C CNN
F 2 "" H 5400 7000 50  0001 C CNN
F 3 "" H 5400 7000 50  0001 C CNN
	1    5400 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 6150 5400 6100
Wire Wire Line
	5400 7000 5400 6950
Text Label 1750 6050 2    60   ~ 0
CLKIN
Wire Wire Line
	3000 5750 3700 5750
Wire Wire Line
	3700 6400 3600 6400
Wire Wire Line
	3600 6200 3600 6300
Wire Wire Line
	3600 6300 3750 6300
Wire Wire Line
	3850 6200 3850 5750
Wire Wire Line
	3850 5750 4550 5750
Wire Wire Line
	4550 5750 4550 6400
Wire Wire Line
	4550 6400 4450 6400
Wire Wire Line
	3700 5750 3700 6400
Wire Wire Line
	3000 5750 3000 6200
Text Label 2750 3300 2    60   ~ 0
CLKIN2
$Comp
L Device:Jumper_NC_Dual JP1
U 1 1 5C0D165A
P 2000 6050
F 0 "JP1" H 2000 6289 50  0000 C CNN
F 1 "CLK SRC" H 2000 6198 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2000 6050 50  0001 C CNN
F 3 "~" H 2000 6050 50  0001 C CNN
	1    2000 6050
	1    0    0    -1  
$EndComp
Text Label 2250 6050 0    60   ~ 0
CLKIN2
Wire Wire Line
	2000 6150 2000 6300
Wire Wire Line
	2000 6300 3000 6300
$Comp
L power:VCC #PWR0111
U 1 1 5C0FE66D
P 3300 5950
F 0 "#PWR0111" H 3300 5800 50  0001 C CNN
F 1 "VCC" H 3300 6100 50  0000 C CNN
F 2 "" H 3300 5950 50  0001 C CNN
F 3 "" H 3300 5950 50  0001 C CNN
	1    3300 5950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0113
U 1 1 5C0FE8E0
P 4150 5950
F 0 "#PWR0113" H 4150 5800 50  0001 C CNN
F 1 "VCC" H 4150 6100 50  0000 C CNN
F 2 "" H 4150 5950 50  0001 C CNN
F 3 "" H 4150 5950 50  0001 C CNN
	1    4150 5950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0114
U 1 1 5C0FE91B
P 4150 6650
F 0 "#PWR0114" H 4150 6500 50  0001 C CNN
F 1 "VCC" H 4150 6800 50  0000 C CNN
F 2 "" H 4150 6650 50  0001 C CNN
F 3 "" H 4150 6650 50  0001 C CNN
	1    4150 6650
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR0115
U 1 1 5C0FE986
P 3300 6650
F 0 "#PWR0115" H 3300 6500 50  0001 C CNN
F 1 "VCC" H 3300 6800 50  0000 C CNN
F 2 "" H 3300 6650 50  0001 C CNN
F 3 "" H 3300 6650 50  0001 C CNN
	1    3300 6650
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 6000 4150 5950
Wire Wire Line
	3300 6000 3300 5950
Wire Wire Line
	3300 6650 3300 6600
Wire Wire Line
	4150 6650 4150 6600
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J11
U 1 1 5C12CD89
P 3200 7350
F 0 "J11" H 3250 7667 50  0000 C CNN
F 1 "CLK DIV" H 3250 7576 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 3200 7350 50  0001 C CNN
F 3 "~" H 3200 7350 50  0001 C CNN
	1    3200 7350
	1    0    0    -1  
$EndComp
Connection ~ 2000 6300
Wire Wire Line
	3750 6300 3750 6850
Connection ~ 3750 6300
Wire Wire Line
	3750 6300 3850 6300
Wire Wire Line
	2850 6850 3750 6850
Wire Wire Line
	3000 7350 2950 7350
Wire Wire Line
	2950 6950 4750 6950
Wire Wire Line
	4750 6950 4750 6200
Wire Wire Line
	4750 6200 4450 6200
Wire Wire Line
	2000 7250 3000 7250
Wire Wire Line
	2850 7450 3000 7450
Wire Wire Line
	3500 7350 3650 7350
Text Label 3650 7350 2    50   ~ 0
CLK
Connection ~ 3500 7350
Wire Wire Line
	2000 6300 2000 7250
Wire Wire Line
	2850 6850 2850 7450
Wire Wire Line
	2950 6950 2950 7350
Wire Wire Line
	3500 7250 3500 7350
Wire Wire Line
	3500 7350 3500 7450
$Comp
L Device:C C6
U 1 1 5C276060
P 5200 3250
F 0 "C6" H 5225 3350 50  0000 L CNN
F 1 "0.1uf" H 5225 3150 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 5238 3100 50  0001 C CNN
F 3 "" H 5200 3250 50  0001 C CNN
	1    5200 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Dual JP2
U 1 1 5C292DF4
P 8450 4700
F 0 "JP2" H 8450 4939 50  0000 C CNN
F 1 "MONO/STEREO" H 8450 4848 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8450 4700 50  0001 C CNN
F 3 "~" H 8450 4700 50  0001 C CNN
	1    8450 4700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9900 3400 10050 3400
Wire Wire Line
	9900 3300 10050 3300
Wire Wire Line
	9900 3200 10050 3200
Text Label 10050 1250 2    60   ~ 0
D0
Text Label 10050 1350 2    60   ~ 0
D1
Text Label 10050 1450 2    60   ~ 0
D2
Text Label 10050 1550 2    60   ~ 0
D3
Text Label 10050 1650 2    60   ~ 0
D4
Text Label 10050 1750 2    60   ~ 0
D5
Text Label 10050 1850 2    60   ~ 0
D6
Text Label 10050 1950 2    60   ~ 0
D7
Wire Wire Line
	9900 1550 10050 1550
Wire Wire Line
	9900 1650 10050 1650
Wire Wire Line
	9900 1750 10050 1750
Wire Wire Line
	9900 1850 10050 1850
Wire Wire Line
	9900 1950 10050 1950
Wire Wire Line
	9900 1450 10050 1450
Wire Wire Line
	9900 1350 10050 1350
Wire Wire Line
	9900 1250 10050 1250
Wire Wire Line
	9400 2300 9400 2250
Wire Wire Line
	9400 4250 9400 4200
Wire Wire Line
	9400 2900 9400 2850
$Comp
L power:VCC #PWR0116
U 1 1 5C016B43
P 6050 4000
F 0 "#PWR0116" H 6050 3850 50  0001 C CNN
F 1 "VCC" H 6050 4150 50  0000 C CNN
F 2 "" H 6050 4000 50  0001 C CNN
F 3 "" H 6050 4000 50  0001 C CNN
	1    6050 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5C016B82
P 6050 5400
F 0 "#PWR0117" H 6050 5150 50  0001 C CNN
F 1 "GND" H 6050 5250 50  0000 C CNN
F 2 "" H 6050 5400 50  0001 C CNN
F 3 "" H 6050 5400 50  0001 C CNN
	1    6050 5400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0118
U 1 1 5C016C5D
P 6050 2050
F 0 "#PWR0118" H 6050 1900 50  0001 C CNN
F 1 "VCC" H 6050 2200 50  0000 C CNN
F 2 "" H 6050 2050 50  0001 C CNN
F 3 "" H 6050 2050 50  0001 C CNN
	1    6050 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5C016D04
P 6050 3450
F 0 "#PWR0119" H 6050 3200 50  0001 C CNN
F 1 "GND" H 6050 3300 50  0000 C CNN
F 2 "" H 6050 3450 50  0001 C CNN
F 3 "" H 6050 3450 50  0001 C CNN
	1    6050 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4050 6050 4000
Wire Wire Line
	6050 3450 6050 3400
Wire Wire Line
	6050 5400 6050 5350
Wire Wire Line
	6050 2100 6050 2050
Wire Wire Line
	7800 3750 7800 4350
Connection ~ 7300 3750
Wire Wire Line
	7300 3750 7800 3750
Wire Wire Line
	5550 3100 5550 3750
Wire Wire Line
	5550 3750 7300 3750
Wire Wire Line
	5200 3400 5450 3400
Wire Wire Line
	5200 3100 5200 2100
Wire Wire Line
	5200 2100 5400 2100
Wire Wire Line
	6050 4050 5400 4050
Wire Wire Line
	5100 4050 5100 4850
Wire Wire Line
	5100 5350 6050 5350
Wire Wire Line
	5100 5150 5100 5350
Wire Wire Line
	5400 6150 6100 6150
Wire Wire Line
	6100 6150 6100 6350
Connection ~ 5400 6150
Wire Wire Line
	5400 6950 6100 6950
Wire Wire Line
	6100 6950 6100 6650
Connection ~ 5400 6950
Wire Wire Line
	9400 2900 10400 2900
Wire Wire Line
	10400 2900 10400 3400
Connection ~ 9400 2900
Wire Wire Line
	9400 4200 10400 4200
Wire Wire Line
	10400 4200 10400 3700
Connection ~ 9400 4200
Wire Wire Line
	10400 2250 10400 1700
Connection ~ 9400 2250
Wire Wire Line
	10400 950  10400 1400
Connection ~ 9400 950 
Wire Wire Line
	9400 2250 10400 2250
Wire Wire Line
	9400 950  10400 950 
Wire Wire Line
	8900 3800 8450 3800
Wire Wire Line
	8100 1850 8900 1850
Wire Wire Line
	8100 4700 8200 4700
Wire Wire Line
	8450 4100 8750 4100
Wire Wire Line
	8750 4100 8750 4700
Wire Wire Line
	8750 4700 8700 4700
Wire Wire Line
	8750 4700 8750 4800
Wire Wire Line
	8750 4800 9750 4800
Connection ~ 8750 4700
Wire Wire Line
	8450 4800 8450 4900
Wire Wire Line
	8450 4900 9600 4900
Wire Wire Line
	9600 4900 9600 4700
Wire Wire Line
	8100 2150 8100 4700
NoConn ~ 2000 2900
NoConn ~ 2000 3200
NoConn ~ 2000 3400
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5C3462F4
P 10400 6100
F 0 "#FLG0101" H 10400 6175 50  0001 C CNN
F 1 "PWR_FLAG" H 10400 6273 50  0000 C CNN
F 2 "" H 10400 6100 50  0001 C CNN
F 3 "~" H 10400 6100 50  0001 C CNN
	1    10400 6100
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5C34634A
P 10800 6050
F 0 "#FLG0102" H 10800 6125 50  0001 C CNN
F 1 "PWR_FLAG" H 10800 6224 50  0000 C CNN
F 2 "" H 10800 6050 50  0001 C CNN
F 3 "~" H 10800 6050 50  0001 C CNN
	1    10800 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5C346390
P 10800 6100
F 0 "#PWR0121" H 10800 5850 50  0001 C CNN
F 1 "GND" H 10800 5950 50  0000 C CNN
F 2 "" H 10800 6100 50  0001 C CNN
F 3 "" H 10800 6100 50  0001 C CNN
	1    10800 6100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0122
U 1 1 5C363E3B
P 10400 6050
F 0 "#PWR0122" H 10400 5900 50  0001 C CNN
F 1 "VCC" H 10400 6200 50  0000 C CNN
F 2 "" H 10400 6050 50  0001 C CNN
F 3 "" H 10400 6050 50  0001 C CNN
	1    10400 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 6100 10400 6050
Wire Wire Line
	10800 6100 10800 6050
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J8
U 1 1 5C3B0A9B
P 7500 1450
F 0 "J8" H 7550 2067 50  0000 C CNN
F 1 "A4-A2 (R)" H 7550 1976 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x10_P2.54mm_Vertical" H 7500 1450 50  0001 C CNN
F 3 "~" H 7500 1450 50  0001 C CNN
	1    7500 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3000 5450 3000
Wire Wire Line
	5450 3000 5450 3400
Connection ~ 5450 3400
Wire Wire Line
	5450 3400 6050 3400
Wire Wire Line
	5550 2900 5400 2900
Wire Wire Line
	5400 2900 5400 2100
Connection ~ 5400 2100
Wire Wire Line
	5400 2100 6050 2100
Wire Wire Line
	5400 4850 5400 4050
Wire Wire Line
	5400 4850 5550 4850
Connection ~ 5400 4050
Wire Wire Line
	5400 4050 5100 4050
NoConn ~ 2000 3900
NoConn ~ 2000 3800
NoConn ~ 2000 3500
Connection ~ 6050 5350
Connection ~ 6050 4050
$Comp
L 74xx:74LS138 U2
U 1 1 5B25AE81
P 6050 4650
F 0 "U2" H 6150 5150 50  0000 C CNN
F 1 "74HCT138" H 6200 4101 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 6050 4650 50  0001 C CNN
F 3 "" H 6050 4650 50  0001 C CNN
	1    6050 4650
	1    0    0    -1  
$EndComp
Connection ~ 6050 3400
Connection ~ 6050 2100
$Comp
L 74xx:74LS138 U3
U 1 1 5BD1722D
P 6050 2700
F 0 "U3" H 6150 3200 50  0000 C CNN
F 1 "74HCT138" H 6200 2151 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 6050 2700 50  0001 C CNN
F 3 "" H 6050 2700 50  0001 C CNN
	1    6050 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1050 7300 1050
$Comp
L power:VCC #PWR0120
U 1 1 5C1FDC9E
P 7250 1050
F 0 "#PWR0120" H 7250 900 50  0001 C CNN
F 1 "VCC" H 7250 1200 50  0000 C CNN
F 2 "" H 7250 1050 50  0001 C CNN
F 3 "" H 7250 1050 50  0001 C CNN
	1    7250 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2400 7300 2400
Connection ~ 8850 1250
Wire Wire Line
	7800 1250 8850 1250
Connection ~ 7800 1250
Wire Wire Line
	7800 5400 7900 5400
Wire Wire Line
	7900 2050 7900 5400
Connection ~ 8850 3200
Wire Wire Line
	7800 3200 8850 3200
Wire Wire Line
	7800 1950 7800 1850
Wire Wire Line
	7800 1150 7800 1050
Wire Wire Line
	7800 1250 7800 1150
Wire Wire Line
	7800 1350 7800 1250
Wire Wire Line
	7800 1450 7800 1350
Wire Wire Line
	7800 1550 7800 1450
Wire Wire Line
	7800 1650 7800 1550
Wire Wire Line
	7800 1750 7800 1650
Wire Wire Line
	7800 1850 7800 1750
Connection ~ 7800 1850
Connection ~ 7800 1750
Connection ~ 7800 1650
Connection ~ 7800 1550
Connection ~ 7800 1450
Connection ~ 7800 1350
Connection ~ 7800 1150
Connection ~ 7800 3200
Connection ~ 7800 2500
Connection ~ 7800 2600
Connection ~ 7800 2700
Connection ~ 7800 2800
Connection ~ 7800 2900
Connection ~ 7800 3000
Connection ~ 7800 3100
Wire Wire Line
	7800 2700 7800 2600
Wire Wire Line
	7800 2600 7800 2500
Wire Wire Line
	7800 2500 7800 2400
Wire Wire Line
	7300 3200 7300 3750
Wire Wire Line
	7800 3200 7800 3100
Wire Wire Line
	7800 3000 7800 3100
Wire Wire Line
	7800 3000 7800 2900
Wire Wire Line
	7800 2800 7800 2700
Wire Wire Line
	7800 2900 7800 2800
Wire Wire Line
	7300 2050 7300 1950
Wire Wire Line
	7900 2050 7300 2050
Wire Wire Line
	6650 1250 7300 1250
Wire Wire Line
	6750 1350 7300 1350
Wire Wire Line
	6850 1450 7300 1450
Wire Wire Line
	6950 1550 7300 1550
Wire Wire Line
	7050 1650 7300 1650
Wire Wire Line
	7150 1750 7300 1750
Wire Wire Line
	7250 3100 7300 3100
Wire Wire Line
	6550 3100 7250 3100
Connection ~ 7250 3100
Wire Wire Line
	7250 1850 7250 3100
Wire Wire Line
	7150 3000 7300 3000
Wire Wire Line
	6550 3000 7150 3000
Connection ~ 7150 3000
Wire Wire Line
	7150 1750 7150 3000
Wire Wire Line
	7050 2900 7300 2900
Wire Wire Line
	6550 2900 7050 2900
Connection ~ 7050 2900
Wire Wire Line
	7050 1650 7050 2900
Wire Wire Line
	6950 2800 7300 2800
Wire Wire Line
	6550 2800 6950 2800
Connection ~ 6950 2800
Wire Wire Line
	6950 1550 6950 2800
Wire Wire Line
	6850 2700 7300 2700
Wire Wire Line
	6550 2700 6850 2700
Connection ~ 6850 2700
Wire Wire Line
	6850 1450 6850 2700
Wire Wire Line
	6750 2600 7300 2600
Wire Wire Line
	6550 2600 6750 2600
Connection ~ 6750 2600
Wire Wire Line
	6750 1350 6750 2600
Wire Wire Line
	6650 2500 7300 2500
Wire Wire Line
	6550 2500 6650 2500
Connection ~ 6650 2500
Wire Wire Line
	6650 1250 6650 2500
Wire Wire Line
	7250 1850 7300 1850
Wire Wire Line
	6550 1150 7300 1150
Connection ~ 6550 2400
Wire Wire Line
	6550 1150 6550 2400
Wire Wire Line
	7300 5400 7250 5400
Wire Wire Line
	7250 4350 7300 4350
Wire Wire Line
	6550 4350 7250 4350
Connection ~ 7250 4350
Wire Wire Line
	7250 5400 7250 4350
Connection ~ 7800 6000
Connection ~ 7800 5900
Connection ~ 7800 5800
Connection ~ 7800 5700
Connection ~ 7800 5600
Connection ~ 7800 5500
Connection ~ 7800 5400
Wire Wire Line
	7300 5500 7150 5500
Wire Wire Line
	7150 4450 7300 4450
Wire Wire Line
	6550 4450 7150 4450
Connection ~ 7150 4450
Wire Wire Line
	7150 5500 7150 4450
Wire Wire Line
	7050 4550 7300 4550
Wire Wire Line
	6550 4550 7050 4550
Connection ~ 7050 4550
Wire Wire Line
	7050 5600 7050 4550
Wire Wire Line
	7050 5600 7300 5600
Wire Wire Line
	6950 4650 7300 4650
Wire Wire Line
	6550 4650 6950 4650
Connection ~ 6950 4650
Wire Wire Line
	6950 5700 6950 4650
Wire Wire Line
	6950 5700 7300 5700
Wire Wire Line
	6850 4750 7300 4750
Wire Wire Line
	6550 4750 6850 4750
Connection ~ 6850 4750
Wire Wire Line
	6850 5800 6850 4750
Wire Wire Line
	6850 5800 7300 5800
Wire Wire Line
	6750 4850 7300 4850
Wire Wire Line
	6550 4850 6750 4850
Connection ~ 6750 4850
Wire Wire Line
	6750 5900 6750 4850
Wire Wire Line
	6750 5900 7300 5900
Wire Wire Line
	6550 4950 6650 4950
Wire Wire Line
	6650 4950 7300 4950
Connection ~ 6650 4950
Wire Wire Line
	6650 6000 6650 4950
Wire Wire Line
	6650 6000 7300 6000
Connection ~ 6550 5050
Wire Wire Line
	6550 6100 6550 5050
Wire Wire Line
	6550 6100 7300 6100
Wire Wire Line
	7800 6100 7800 6000
Wire Wire Line
	7800 6000 7800 5900
Wire Wire Line
	7800 5900 7800 5800
Wire Wire Line
	7800 5800 7800 5700
Wire Wire Line
	7800 5700 7800 5600
Wire Wire Line
	7800 5600 7800 5500
Wire Wire Line
	7800 5500 7800 5400
$Comp
L SJ1-3523N:SJ1-3523N J2
U 1 1 5BE41B07
P 10350 4700
F 0 "J2" H 9921 4746 50  0000 R CNN
F 1 "SJ1-3523N" H 9921 4655 50  0000 R CNN
F 2 "SJ1-3523N:CUI_SJ1-3523N" H 10350 4700 50  0001 L BNN
F 3 "Manufacturer recommendation" H 10350 4700 50  0001 L BNN
F 4 "1.02" H 10350 4700 50  0001 L BNN "Field4"
F 5 "CUI" H 10350 4700 50  0001 L BNN "Field5"
	1    10350 4700
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
