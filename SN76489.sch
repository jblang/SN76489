EESchema Schematic File Version 4
LIBS:SN76489-cache
EELAYER 26 0
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
L Connector_Generic:Conn_01x39 J1
U 1 1 5A772849
P 900 4250
F 0 "J1" H 900 6250 50  0000 C CNN
F 1 "BUS" H 900 2250 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x39_P2.54mm_Vertical" H 900 4250 50  0001 C CNN
F 3 "" H 900 4250 50  0001 C CNN
	1    900  4250
	-1   0    0    1   
$EndComp
$Comp
L Device:C C7
U 1 1 5A799B12
P 1150 7050
F 0 "C7" H 1175 7150 50  0000 L CNN
F 1 "0.1uf" H 1175 6950 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 1188 6900 50  0001 C CNN
F 3 "" H 1150 7050 50  0001 C CNN
	1    1150 7050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 5A79A0B1
P 1150 6850
F 0 "#PWR07" H 1150 6700 50  0001 C CNN
F 1 "VCC" H 1150 7000 50  0000 C CNN
F 2 "" H 1150 6850 50  0001 C CNN
F 3 "" H 1150 6850 50  0001 C CNN
	1    1150 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5A79A0FD
P 1150 7250
F 0 "#PWR08" H 1150 7000 50  0001 C CNN
F 1 "GND" H 1150 7100 50  0000 C CNN
F 2 "" H 1150 7250 50  0001 C CNN
F 3 "" H 1150 7250 50  0001 C CNN
	1    1150 7250
	1    0    0    -1  
$EndComp
Text Label 1100 3550 0    60   ~ 0
D0
Text Label 1100 3450 0    60   ~ 0
D1
Text Label 1100 3350 0    60   ~ 0
D2
Text Label 1100 3250 0    60   ~ 0
D3
Text Label 1100 3150 0    60   ~ 0
D4
Text Label 1100 3050 0    60   ~ 0
D5
Text Label 1100 2950 0    60   ~ 0
D6
Text Label 1100 2850 0    60   ~ 0
D7
NoConn ~ 1100 2350
NoConn ~ 1100 2450
NoConn ~ 1100 2550
NoConn ~ 1100 2650
NoConn ~ 1100 2750
NoConn ~ 1100 3950
NoConn ~ 1100 6150
NoConn ~ 1100 6050
NoConn ~ 1100 5950
NoConn ~ 1100 5850
NoConn ~ 1100 5750
Text Label 1100 4650 0    60   ~ 0
A0
Text Label 1100 5050 0    60   ~ 0
A4
Text Label 1100 5150 0    60   ~ 0
A5
Text Label 1100 5250 0    60   ~ 0
A6
Text Label 1100 5350 0    60   ~ 0
A7
Text Label 1100 4250 0    60   ~ 0
~RESET~
Text Label 1100 4050 0    60   ~ 0
~INT~
Text Label 1100 3750 0    60   ~ 0
~RD~
Text Label 1100 3650 0    60   ~ 0
~IORQ~
NoConn ~ 1100 5650
NoConn ~ 1100 5550
NoConn ~ 1100 5450
Text Label 1100 3850 0    60   ~ 0
~WR~
Text Label 1100 4750 0    60   ~ 0
A1
Text Label 1100 4850 0    60   ~ 0
A2
Text Label 1100 4950 0    60   ~ 0
A3
Wire Wire Line
	1150 6900 1150 6850
Wire Wire Line
	1150 7200 1150 7250
$Comp
L 74xx:74LS138 U2
U 1 1 5B25AE81
P 6050 4050
F 0 "U2" H 6150 4550 50  0000 C CNN
F 1 "74LS138" H 6200 3501 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 6050 4050 50  0001 C CNN
F 3 "" H 6050 4050 50  0001 C CNN
	1    6050 4050
	1    0    0    -1  
$EndComp
$Comp
L SN76489:SN76489 U1
U 1 1 5B4BDE6E
P 9400 3150
F 0 "U1" H 9400 3150 60  0000 C CNN
F 1 "SN76489 (L)" H 9400 4150 60  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 9400 3150 60  0001 C CNN
F 3 "" H 9400 3150 60  0001 C CNN
	1    9400 3150
	1    0    0    -1  
$EndComp
Text Label 8700 2500 0    60   ~ 0
D0
Text Label 8700 2400 0    60   ~ 0
D1
Text Label 8700 2300 0    60   ~ 0
D2
Text Label 10050 2400 2    60   ~ 0
D3
Text Label 10050 2600 2    60   ~ 0
D4
Text Label 10050 2700 2    60   ~ 0
D5
Text Label 10050 2800 2    60   ~ 0
D6
Text Label 10050 2900 2    60   ~ 0
D7
NoConn ~ 9900 3000
Text Label 1100 4150 0    60   ~ 0
CLKIN
Text Label 10050 2500 2    60   ~ 0
CLK
$Comp
L power:GND #PWR0101
U 1 1 5B4BE88C
P 8900 3050
F 0 "#PWR0101" H 8900 2800 50  0001 C CNN
F 1 "GND" H 8900 2900 50  0000 C CNN
F 2 "" H 8900 3050 50  0001 C CNN
F 3 "" H 8900 3050 50  0001 C CNN
	1    8900 3050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0102
U 1 1 5B4BE8E3
P 9900 2250
F 0 "#PWR0102" H 9900 2100 50  0001 C CNN
F 1 "VCC" H 9900 2400 50  0000 C CNN
F 2 "" H 9900 2250 50  0001 C CNN
F 3 "" H 9900 2250 50  0001 C CNN
	1    9900 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2300 9900 2250
Wire Wire Line
	8900 3050 8900 3000
Text Label 5350 4350 0    60   ~ 0
~IORQ~
Text Label 5450 4450 0    60   ~ 0
~WR~
Wire Wire Line
	5550 4250 5450 4250
Wire Wire Line
	5550 4350 5350 4350
Wire Wire Line
	8900 2700 8850 2700
Wire Wire Line
	8850 2700 8850 2800
Wire Wire Line
	8850 2800 8900 2800
Connection ~ 8850 2700
Wire Wire Line
	9400 4600 9650 4600
$Comp
L power:GND #PWR0110
U 1 1 5BC7E987
P 9650 4600
F 0 "#PWR0110" H 9650 4350 50  0001 C CNN
F 1 "GND" H 9650 4450 50  0000 C CNN
F 2 "" H 9650 4600 50  0001 C CNN
F 3 "" H 9650 4600 50  0001 C CNN
	1    9650 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 4800 9400 4800
Text Label 8900 2900 2    50   ~ 0
AUDIO_L
Wire Wire Line
	10200 5450 10200 5550
Text Label 10550 5550 2    50   ~ 0
AUDIO_R
Connection ~ 1150 7200
Connection ~ 1150 6900
$Comp
L Device:C C2
U 1 1 5BC8AB20
P 1400 7050
F 0 "C2" H 1425 7150 50  0000 L CNN
F 1 "0.1uf" H 1425 6950 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 1438 6900 50  0001 C CNN
F 3 "" H 1400 7050 50  0001 C CNN
	1    1400 7050
	1    0    0    -1  
$EndComp
Text Label 1100 4350 0    60   ~ 0
~M1~
$Comp
L power:GND #PWR0103
U 1 1 5BF5A8A9
P 1350 4550
F 0 "#PWR0103" H 1350 4300 50  0001 C CNN
F 1 "GND" H 1350 4400 50  0000 C CNN
F 2 "" H 1350 4550 50  0001 C CNN
F 3 "" H 1350 4550 50  0001 C CNN
	1    1350 4550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0112
U 1 1 5BF5AC14
P 1350 4450
F 0 "#PWR0112" H 1350 4300 50  0001 C CNN
F 1 "VCC" H 1350 4600 50  0000 C CNN
F 2 "" H 1350 4450 50  0001 C CNN
F 3 "" H 1350 4450 50  0001 C CNN
	1    1350 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J5
U 1 1 5BFCD4B3
P 2050 4150
F 0 "J5" H 1970 3425 50  0000 C CNN
F 1 "EXT BUS" H 1970 3516 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 2050 4150 50  0001 C CNN
F 3 "~" H 2050 4150 50  0001 C CNN
	1    2050 4150
	1    0    0    1   
$EndComp
Wire Wire Line
	1850 4450 1350 4450
Wire Wire Line
	1850 4550 1350 4550
Text Label 1850 3750 2    60   ~ 0
~WAIT~
NoConn ~ 1850 3650
NoConn ~ 1850 3850
NoConn ~ 1850 3950
NoConn ~ 1850 4050
NoConn ~ 1850 4250
NoConn ~ 1850 4350
Text Label 8700 2600 0    60   ~ 0
~WAIT~
$Comp
L Connector:AudioJack3_Ground J2
U 1 1 5BC5E2D1
P 9200 4700
F 0 "J2" H 9204 5042 50  0000 C CNN
F 1 "AudioJack3_Ground" H 9204 4951 50  0000 C CNN
F 2 "Connector_Audio:Jack_Horizontal" H 9200 4700 50  0001 C CNN
F 3 "~" H 9200 4700 50  0001 C CNN
	1    9200 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 5C11332A
P 10200 5300
F 0 "C4" H 10318 5346 50  0000 L CNN
F 1 "CP" H 10318 5255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 10238 5150 50  0001 C CNN
F 3 "~" H 10200 5300 50  0001 C CNN
	1    10200 5300
	1    0    0    1   
$EndComp
Wire Wire Line
	1150 7200 1400 7200
Wire Wire Line
	1150 6900 1400 6900
Text Label 5450 3750 0    60   ~ 0
A5
Text Label 5450 3850 0    60   ~ 0
A6
Text Label 5450 3950 0    60   ~ 0
A7
Wire Wire Line
	5450 3750 5550 3750
Wire Wire Line
	5450 3850 5550 3850
Wire Wire Line
	5450 3950 5550 3950
Text Label 5450 4250 0    60   ~ 0
~M1~
Wire Wire Line
	5550 4450 5450 4450
Wire Wire Line
	8700 2300 8900 2300
Wire Wire Line
	8700 2400 8900 2400
Wire Wire Line
	8700 2500 8900 2500
Wire Wire Line
	8700 2600 8900 2600
Wire Wire Line
	9900 2400 10050 2400
Wire Wire Line
	9900 2500 10050 2500
Wire Wire Line
	9900 2600 10050 2600
Wire Wire Line
	9900 2700 10050 2700
Wire Wire Line
	9900 2800 10050 2800
Wire Wire Line
	9900 2900 10050 2900
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J7
U 1 1 5BD162C1
P 7500 4050
F 0 "J7" H 7550 4567 50  0000 C CNN
F 1 "A7-A5 (L)" H 7550 4476 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 7500 4050 50  0001 C CNN
F 3 "~" H 7500 4050 50  0001 C CNN
	1    7500 4050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS138 U3
U 1 1 5BD1722D
P 6050 2700
F 0 "U3" H 6150 3200 50  0000 C CNN
F 1 "74LS138" H 6200 2151 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 6050 2700 50  0001 C CNN
F 3 "" H 6050 2700 50  0001 C CNN
	1    6050 2700
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
	7800 4450 7800 4350
Wire Wire Line
	7800 4350 7800 4250
Connection ~ 7800 4350
Wire Wire Line
	7800 4250 7800 4150
Connection ~ 7800 4250
Wire Wire Line
	7800 4150 7800 4050
Connection ~ 7800 4150
Wire Wire Line
	7800 4050 7800 3950
Connection ~ 7800 4050
Wire Wire Line
	7800 3950 7800 3850
Connection ~ 7800 3950
Wire Wire Line
	7800 3850 7800 3750
Connection ~ 7800 3850
Wire Wire Line
	7800 3750 7800 3400
Wire Wire Line
	7800 3400 7300 3400
Wire Wire Line
	7300 3400 7300 3200
Connection ~ 7800 3750
Wire Wire Line
	5550 3400 5550 3100
Connection ~ 7300 3400
Wire Wire Line
	7800 3200 7800 3100
Wire Wire Line
	7800 3000 7800 3100
Connection ~ 7800 3100
Wire Wire Line
	7800 3000 7800 2900
Connection ~ 7800 3000
Wire Wire Line
	7800 2900 7800 2800
Connection ~ 7800 2900
Wire Wire Line
	7800 2800 7800 2700
Connection ~ 7800 2800
Wire Wire Line
	7800 2700 7800 2600
Connection ~ 7800 2700
Wire Wire Line
	7800 2600 7800 2500
Connection ~ 7800 2600
Wire Wire Line
	7800 2500 7800 2400
Connection ~ 7800 2500
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J4
U 1 1 5BD49E9C
P 4600 3350
F 0 "J4" H 4650 3679 50  0000 C CNN
F 1 "~A1/A0~" H 4650 3581 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 4600 3350 50  0001 C CNN
F 3 "~" H 4600 3350 50  0001 C CNN
	1    4600 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J3
U 1 1 5BD49EFA
P 4600 2600
F 0 "J3" H 4650 2917 50  0000 C CNN
F 1 "A1/A0" H 4650 2826 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 4600 2600 50  0001 C CNN
F 3 "~" H 4600 2600 50  0001 C CNN
	1    4600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3450 4900 3350
Wire Wire Line
	4900 3350 4900 3250
Connection ~ 4900 3350
Wire Wire Line
	4900 3250 4900 3000
Wire Wire Line
	4900 3000 5550 3000
Connection ~ 4900 3250
Wire Wire Line
	4900 2700 4900 2600
Wire Wire Line
	4900 2600 4900 2500
Connection ~ 4900 2600
Wire Wire Line
	4900 2700 4900 2900
Wire Wire Line
	4900 2900 5550 2900
Connection ~ 4900 2700
$Comp
L power:GND #PWR0104
U 1 1 5BD56043
P 4400 3500
F 0 "#PWR0104" H 4400 3250 50  0001 C CNN
F 1 "GND" H 4400 3350 50  0000 C CNN
F 2 "" H 4400 3500 50  0001 C CNN
F 3 "" H 4400 3500 50  0001 C CNN
	1    4400 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3500 4400 3450
$Comp
L power:VCC #PWR0105
U 1 1 5BD58473
P 4400 2450
F 0 "#PWR0105" H 4400 2300 50  0001 C CNN
F 1 "VCC" H 4400 2600 50  0000 C CNN
F 2 "" H 4400 2450 50  0001 C CNN
F 3 "" H 4400 2450 50  0001 C CNN
	1    4400 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2500 4400 2450
Text Label 4300 3250 0    60   ~ 0
A0
Text Label 4300 3350 0    60   ~ 0
A1
Wire Wire Line
	4400 3250 4300 3250
Wire Wire Line
	4400 3350 4300 3350
Text Label 4300 2600 0    60   ~ 0
A0
Text Label 4300 2700 0    60   ~ 0
A1
Wire Wire Line
	4400 2600 4300 2600
Wire Wire Line
	4400 2700 4300 2700
$Comp
L SN76489:SN76489 U4
U 1 1 5BD75352
P 9400 2000
F 0 "U4" H 9400 2000 60  0000 C CNN
F 1 "SN76489 (R)" H 9400 3000 60  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 9400 2000 60  0001 C CNN
F 3 "" H 9400 2000 60  0001 C CNN
	1    9400 2000
	1    0    0    -1  
$EndComp
Text Label 8700 1350 0    60   ~ 0
D0
Text Label 8700 1250 0    60   ~ 0
D1
Text Label 8700 1150 0    60   ~ 0
D2
Text Label 10050 1250 2    60   ~ 0
D3
Text Label 10050 1450 2    60   ~ 0
D4
Text Label 10050 1550 2    60   ~ 0
D5
Text Label 10050 1650 2    60   ~ 0
D6
Text Label 10050 1750 2    60   ~ 0
D7
NoConn ~ 9900 1850
Text Label 10050 1350 2    60   ~ 0
CLK
$Comp
L power:GND #PWR0106
U 1 1 5BD75362
P 8900 1900
F 0 "#PWR0106" H 8900 1650 50  0001 C CNN
F 1 "GND" H 8900 1750 50  0000 C CNN
F 2 "" H 8900 1900 50  0001 C CNN
F 3 "" H 8900 1900 50  0001 C CNN
	1    8900 1900
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 5BD75368
P 9900 1100
F 0 "#PWR0107" H 9900 950 50  0001 C CNN
F 1 "VCC" H 9900 1250 50  0000 C CNN
F 2 "" H 9900 1100 50  0001 C CNN
F 3 "" H 9900 1100 50  0001 C CNN
	1    9900 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 1150 9900 1100
Wire Wire Line
	8900 1900 8900 1850
Wire Wire Line
	8900 1550 8850 1550
Wire Wire Line
	8850 1550 8850 1650
Wire Wire Line
	8850 1650 8900 1650
Connection ~ 8850 1550
Text Label 8900 1750 2    50   ~ 0
AUDIO_R
Text Label 8700 1450 0    60   ~ 0
~WAIT~
Wire Wire Line
	8700 1150 8900 1150
Wire Wire Line
	8700 1250 8900 1250
Wire Wire Line
	8700 1350 8900 1350
Wire Wire Line
	8700 1450 8900 1450
Wire Wire Line
	9900 1250 10050 1250
Wire Wire Line
	9900 1350 10050 1350
Wire Wire Line
	9900 1450 10050 1450
Wire Wire Line
	9900 1550 10050 1550
Wire Wire Line
	9900 1650 10050 1650
Wire Wire Line
	9900 1750 10050 1750
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J9
U 1 1 5BD7F915
P 7500 5100
F 0 "J9" H 7550 5617 50  0000 C CNN
F 1 "A7-A5 (R)" H 7550 5526 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 7500 5100 50  0001 C CNN
F 3 "~" H 7500 5100 50  0001 C CNN
	1    7500 5100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x09_Odd_Even J8
U 1 1 5BD7F923
P 7500 1550
F 0 "J8" H 7550 2167 50  0000 C CNN
F 1 "A4-A2 (R)" H 7550 2076 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x09_P2.54mm_Vertical" H 7500 1550 50  0001 C CNN
F 3 "~" H 7500 1550 50  0001 C CNN
	1    7500 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1850 7300 1850
Wire Wire Line
	7300 4800 7250 4800
Wire Wire Line
	7250 4800 7250 3750
Connection ~ 7250 3750
Wire Wire Line
	7250 3750 7300 3750
Wire Wire Line
	7300 4900 7150 4900
Wire Wire Line
	7150 4900 7150 3850
Connection ~ 7150 3850
Wire Wire Line
	7150 3850 7300 3850
Wire Wire Line
	7050 5000 7050 3950
Wire Wire Line
	7050 5000 7300 5000
Connection ~ 7050 3950
Wire Wire Line
	7050 3950 7300 3950
Wire Wire Line
	6950 5100 6950 4050
Wire Wire Line
	6950 5100 7300 5100
Connection ~ 6950 4050
Wire Wire Line
	6950 4050 7300 4050
Wire Wire Line
	6850 5200 6850 4150
Wire Wire Line
	6850 5200 7300 5200
Connection ~ 6850 4150
Wire Wire Line
	6850 4150 7300 4150
Wire Wire Line
	6750 5300 6750 4250
Wire Wire Line
	6750 5300 7300 5300
Connection ~ 6750 4250
Wire Wire Line
	6750 4250 7300 4250
Wire Wire Line
	6550 2400 7300 2400
Wire Wire Line
	6550 2500 6650 2500
Wire Wire Line
	6550 2600 6750 2600
Wire Wire Line
	6550 2700 6850 2700
Wire Wire Line
	6550 2800 6950 2800
Wire Wire Line
	6550 2900 7050 2900
Wire Wire Line
	6550 3000 7150 3000
Wire Wire Line
	6550 3100 7250 3100
Wire Wire Line
	6550 4450 7300 4450
Wire Wire Line
	6550 4350 6650 4350
Wire Wire Line
	6550 4250 6750 4250
Wire Wire Line
	6550 4150 6850 4150
Wire Wire Line
	6550 4050 6950 4050
Wire Wire Line
	6550 3950 7050 3950
Wire Wire Line
	6550 3850 7150 3850
Wire Wire Line
	6550 3750 7250 3750
Wire Wire Line
	6650 5400 6650 4350
Wire Wire Line
	6650 5400 7300 5400
Connection ~ 6650 4350
Wire Wire Line
	6650 4350 7300 4350
Wire Wire Line
	6550 5500 6550 4450
Wire Wire Line
	6550 5500 7300 5500
Connection ~ 6550 4450
Wire Wire Line
	7800 5500 7800 5400
Wire Wire Line
	7800 5400 7800 5300
Connection ~ 7800 5400
Wire Wire Line
	7800 5300 7800 5200
Connection ~ 7800 5300
Wire Wire Line
	7800 5200 7800 5100
Connection ~ 7800 5200
Wire Wire Line
	7800 5100 7800 5000
Connection ~ 7800 5100
Wire Wire Line
	7800 5000 7800 4900
Connection ~ 7800 5000
Wire Wire Line
	7800 4900 7800 4800
Connection ~ 7800 4900
Wire Wire Line
	7800 4800 8200 4800
Wire Wire Line
	8200 4800 8200 2050
Connection ~ 7800 4800
Wire Wire Line
	7800 1950 7800 1850
Wire Wire Line
	7800 1850 7800 1750
Connection ~ 7800 1850
Wire Wire Line
	7800 1750 7800 1650
Connection ~ 7800 1750
Wire Wire Line
	7800 1650 7800 1550
Connection ~ 7800 1650
Connection ~ 7800 1550
Wire Wire Line
	7800 1550 7800 1450
Wire Wire Line
	7800 1450 7800 1350
Connection ~ 7800 1450
Wire Wire Line
	7800 1350 7800 1250
Connection ~ 7800 1350
Wire Wire Line
	7800 1250 7800 1150
Connection ~ 7800 1250
Wire Wire Line
	8200 2050 7300 2050
Wire Wire Line
	7300 2050 7300 1950
Wire Wire Line
	7300 1150 6550 1150
Wire Wire Line
	6550 1150 6550 2400
Connection ~ 6550 2400
Wire Wire Line
	6650 1250 6650 2500
Wire Wire Line
	6650 1250 7300 1250
Connection ~ 6650 2500
Wire Wire Line
	6650 2500 7300 2500
Wire Wire Line
	6750 1350 6750 2600
Wire Wire Line
	6750 1350 7300 1350
Connection ~ 6750 2600
Wire Wire Line
	6750 2600 7300 2600
Wire Wire Line
	6850 1450 6850 2700
Wire Wire Line
	6850 1450 7300 1450
Connection ~ 6850 2700
Wire Wire Line
	6850 2700 7300 2700
Wire Wire Line
	6950 1550 6950 2800
Wire Wire Line
	6950 1550 7300 1550
Connection ~ 6950 2800
Wire Wire Line
	6950 2800 7300 2800
Wire Wire Line
	7050 1650 7050 2900
Wire Wire Line
	7050 1650 7300 1650
Connection ~ 7050 2900
Wire Wire Line
	7050 2900 7300 2900
Wire Wire Line
	7150 1750 7150 3000
Wire Wire Line
	7150 1750 7300 1750
Connection ~ 7150 3000
Wire Wire Line
	7150 3000 7300 3000
Wire Wire Line
	7250 1850 7250 3100
Connection ~ 7250 3100
Wire Wire Line
	7250 3100 7300 3100
Wire Wire Line
	7800 2700 8850 2700
Wire Wire Line
	7800 1550 8850 1550
$Comp
L Device:C C1
U 1 1 5BF9936C
P 1650 7050
F 0 "C1" H 1675 7150 50  0000 L CNN
F 1 "0.1uf" H 1675 6950 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 1688 6900 50  0001 C CNN
F 3 "" H 1650 7050 50  0001 C CNN
	1    1650 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5BF99401
P 1900 7050
F 0 "C3" H 1925 7150 50  0000 L CNN
F 1 "0.1uf" H 1925 6950 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 1938 6900 50  0001 C CNN
F 3 "" H 1900 7050 50  0001 C CNN
	1    1900 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 6900 1650 6900
Connection ~ 1400 6900
Wire Wire Line
	1650 6900 1900 6900
Wire Wire Line
	1400 7200 1650 7200
Connection ~ 1400 7200
Wire Wire Line
	1650 7200 1900 7200
Connection ~ 1350 4450
Wire Wire Line
	1100 4450 1350 4450
Wire Wire Line
	1100 4550 1350 4550
Connection ~ 1350 4550
Wire Wire Line
	9050 5450 9050 5550
Text Label 9400 5550 2    50   ~ 0
AUDIO_L
$Comp
L Device:CP C5
U 1 1 5BFE283F
P 9050 5300
F 0 "C5" H 9168 5346 50  0000 L CNN
F 1 "CP" H 9168 5255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 9088 5150 50  0001 C CNN
F 3 "~" H 9050 5300 50  0001 C CNN
	1    9050 5300
	1    0    0    1   
$EndComp
Wire Wire Line
	9050 5550 9400 5550
Wire Wire Line
	10200 5550 10550 5550
Wire Wire Line
	9550 4700 9550 4950
Wire Wire Line
	9400 4700 9550 4700
Wire Wire Line
	9050 5150 9050 5050
Wire Wire Line
	9050 5050 9450 5050
Wire Wire Line
	9450 4800 9450 4850
$Comp
L 74xx:74LS74 U5
U 1 1 5C05C4F8
P 4000 6150
F 0 "U5" H 3650 5900 50  0000 C CNN
F 1 "74LS74" H 3650 5800 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 4000 6150 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 4000 6150 50  0001 C CNN
	1    4000 6150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U5
U 2 1 5C05C53A
P 4850 6150
F 0 "U5" H 5200 5900 50  0000 C CNN
F 1 "74LS74" H 5200 5800 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 4850 6150 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 4850 6150 50  0001 C CNN
	2    4850 6150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U5
U 3 1 5C05C5E2
P 6000 6350
F 0 "U5" H 6230 6396 50  0000 L CNN
F 1 "74LS74" H 6230 6305 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 6000 6350 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 6000 6350 50  0001 C CNN
	3    6000 6350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0108
U 1 1 5C05C6C2
P 6000 5900
F 0 "#PWR0108" H 6000 5750 50  0001 C CNN
F 1 "VCC" H 6000 6050 50  0000 C CNN
F 2 "" H 6000 5900 50  0001 C CNN
F 3 "" H 6000 5900 50  0001 C CNN
	1    6000 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5C05C6FB
P 6000 6800
F 0 "#PWR0109" H 6000 6550 50  0001 C CNN
F 1 "GND" H 6000 6650 50  0000 C CNN
F 2 "" H 6000 6800 50  0001 C CNN
F 3 "" H 6000 6800 50  0001 C CNN
	1    6000 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5950 6000 5900
Wire Wire Line
	6000 6800 6000 6750
Text Label 2450 5900 2    60   ~ 0
CLKIN
Wire Wire Line
	3700 5600 4400 5600
Wire Wire Line
	4400 6250 4300 6250
Wire Wire Line
	4300 6050 4300 6150
Wire Wire Line
	4300 6150 4450 6150
Wire Wire Line
	4550 6050 4550 5600
Wire Wire Line
	4550 5600 5250 5600
Wire Wire Line
	5250 5600 5250 6250
Wire Wire Line
	5250 6250 5150 6250
Wire Wire Line
	4400 5600 4400 6250
Wire Wire Line
	3700 5600 3700 6050
Text Label 1850 4150 2    60   ~ 0
CLKIN2
$Comp
L Device:Jumper_NC_Dual JP1
U 1 1 5C0D165A
P 2700 5900
F 0 "JP1" H 2700 6139 50  0000 C CNN
F 1 "CLK SRC" H 2700 6048 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2700 5900 50  0001 C CNN
F 3 "~" H 2700 5900 50  0001 C CNN
	1    2700 5900
	1    0    0    -1  
$EndComp
Text Label 2950 5900 0    60   ~ 0
CLKIN2
Wire Wire Line
	2700 6000 2700 6150
Wire Wire Line
	2700 6150 3700 6150
$Comp
L power:VCC #PWR0111
U 1 1 5C0FE66D
P 4000 5800
F 0 "#PWR0111" H 4000 5650 50  0001 C CNN
F 1 "VCC" H 4000 5950 50  0000 C CNN
F 2 "" H 4000 5800 50  0001 C CNN
F 3 "" H 4000 5800 50  0001 C CNN
	1    4000 5800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0113
U 1 1 5C0FE8E0
P 4850 5800
F 0 "#PWR0113" H 4850 5650 50  0001 C CNN
F 1 "VCC" H 4850 5950 50  0000 C CNN
F 2 "" H 4850 5800 50  0001 C CNN
F 3 "" H 4850 5800 50  0001 C CNN
	1    4850 5800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0114
U 1 1 5C0FE91B
P 4850 6500
F 0 "#PWR0114" H 4850 6350 50  0001 C CNN
F 1 "VCC" H 4850 6650 50  0000 C CNN
F 2 "" H 4850 6500 50  0001 C CNN
F 3 "" H 4850 6500 50  0001 C CNN
	1    4850 6500
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR0115
U 1 1 5C0FE986
P 4000 6500
F 0 "#PWR0115" H 4000 6350 50  0001 C CNN
F 1 "VCC" H 4000 6650 50  0000 C CNN
F 2 "" H 4000 6500 50  0001 C CNN
F 3 "" H 4000 6500 50  0001 C CNN
	1    4000 6500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 5850 4850 5800
Wire Wire Line
	4000 5850 4000 5800
Wire Wire Line
	4000 6500 4000 6450
Wire Wire Line
	4850 6500 4850 6450
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J11
U 1 1 5C12CD89
P 3900 7200
F 0 "J11" H 3950 7517 50  0000 C CNN
F 1 "CLK DIV" H 3950 7426 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 3900 7200 50  0001 C CNN
F 3 "~" H 3900 7200 50  0001 C CNN
	1    3900 7200
	1    0    0    -1  
$EndComp
Connection ~ 2700 6150
Wire Wire Line
	4450 6150 4450 6700
Connection ~ 4450 6150
Wire Wire Line
	4450 6150 4550 6150
Wire Wire Line
	3550 6700 4450 6700
Wire Wire Line
	3700 7200 3650 7200
Wire Wire Line
	3650 6800 5450 6800
Wire Wire Line
	5450 6800 5450 6050
Wire Wire Line
	5450 6050 5150 6050
Wire Wire Line
	2700 7100 3700 7100
Wire Wire Line
	3550 7300 3700 7300
Wire Wire Line
	4200 7200 4350 7200
Text Label 4350 7200 2    50   ~ 0
CLK
Connection ~ 4200 7200
Wire Wire Line
	2700 6150 2700 7100
Wire Wire Line
	3550 6700 3550 7300
Wire Wire Line
	3650 6800 3650 7200
Wire Wire Line
	4200 7100 4200 7200
Wire Wire Line
	4200 7200 4200 7300
Connection ~ 1650 7200
Connection ~ 1650 6900
$Comp
L Device:C C6
U 1 1 5C276060
P 2150 7050
F 0 "C6" H 2175 7150 50  0000 L CNN
F 1 "0.1uf" H 2175 6950 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 2188 6900 50  0001 C CNN
F 3 "" H 2150 7050 50  0001 C CNN
	1    2150 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 6900 2150 6900
Wire Wire Line
	1900 7200 2150 7200
Connection ~ 1900 6900
Connection ~ 1900 7200
$Comp
L Device:Jumper_NC_Dual JP2
U 1 1 5C292DF4
P 9950 4850
F 0 "JP2" H 9950 5089 50  0000 C CNN
F 1 "MONO/STEREO" H 9950 4998 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9950 4850 50  0001 C CNN
F 3 "~" H 9950 4850 50  0001 C CNN
	1    9950 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 4950 9950 4950
Wire Wire Line
	10200 5150 10200 4850
Wire Wire Line
	9700 4850 9450 4850
Connection ~ 9450 4850
Wire Wire Line
	9450 4850 9450 5050
Connection ~ 6050 3400
Wire Wire Line
	6050 3400 7300 3400
Wire Wire Line
	5550 3400 6050 3400
$EndSCHEMATC
