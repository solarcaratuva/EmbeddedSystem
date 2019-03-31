EESchema Schematic File Version 4
LIBS:SolarCarECU-cache
EELAYER 26 0
EELAYER END
$Descr A2 23386 16535
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
L SolarCarECU-rescue:Teensy3.6-teensy-SolarCarECU-rescue U1
U 1 1 5C5DC16B
P 4250 12500
F 0 "U1" H 4250 14887 60  0000 C CNN
F 1 "Teensy3.6" H 4250 14781 60  0000 C CNN
F 2 "teensy:Teensy35_36" H 4250 12500 60  0001 C CNN
F 3 "" H 4250 12500 60  0000 C CNN
	1    4250 12500
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0101
U 1 1 5C5DC279
P 1850 13050
F 0 "#PWR0101" H 1850 12800 50  0001 C CNN
F 1 "GND" H 1855 12877 50  0000 C CNN
F 2 "" H 1850 13050 50  0001 C CNN
F 3 "" H 1850 13050 50  0001 C CNN
	1    1850 13050
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0102
U 1 1 5C5DC2B9
P 5700 12950
F 0 "#PWR0102" H 5700 12700 50  0001 C CNN
F 1 "GND" H 5705 12777 50  0000 C CNN
F 2 "" H 5700 12950 50  0001 C CNN
F 3 "" H 5700 12950 50  0001 C CNN
	1    5700 12950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 12800 5700 12800
$Comp
L SolarCarECU-rescue:GNDA-power-SolarCarECU-rescue #PWR0103
U 1 1 5C5DC865
P 6250 13900
F 0 "#PWR0103" H 6250 13650 50  0001 C CNN
F 1 "GNDA" H 6255 13727 50  0000 C CNN
F 2 "" H 6250 13900 50  0001 C CNN
F 3 "" H 6250 13900 50  0001 C CNN
	1    6250 13900
	1    0    0    -1  
$EndComp
Text Label 3000 14000 2    50   ~ 0
DAC_0
Text Label 3000 14100 2    50   ~ 0
DAC_1
Wire Wire Line
	3000 14000 3250 14000
$Comp
L SolarCarECU-rescue:+3V3-power-SolarCarECU-rescue #PWR0104
U 1 1 5C5E61B5
P 6300 11450
F 0 "#PWR0104" H 6300 11300 50  0001 C CNN
F 1 "+3V3" H 6315 11623 50  0000 C CNN
F 2 "" H 6300 11450 50  0001 C CNN
F 3 "" H 6300 11450 50  0001 C CNN
	1    6300 11450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 14100 3000 14100
$Comp
L SolarCarECU-rescue:MCP2562-E-P-Interface_CAN_LIN-SolarCarECU-rescue U5
U 1 1 5C5E3276
P 10250 11650
F 0 "U5" H 9900 12000 50  0000 C CNN
F 1 "MCP2562-E-P" H 10650 12000 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 10250 11150 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25167A.pdf" H 10250 11650 50  0001 C CNN
	1    10250 11650
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:+5V-power-SolarCarECU-rescue #PWR0105
U 1 1 5C5E351C
P 10250 11200
F 0 "#PWR0105" H 10250 11050 50  0001 C CNN
F 1 "+5V" H 10265 11373 50  0000 C CNN
F 2 "" H 10250 11200 50  0001 C CNN
F 3 "" H 10250 11200 50  0001 C CNN
	1    10250 11200
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0106
U 1 1 5C5E366D
P 10250 12250
F 0 "#PWR0106" H 10250 12000 50  0001 C CNN
F 1 "GND" H 10255 12077 50  0000 C CNN
F 2 "" H 10250 12250 50  0001 C CNN
F 3 "" H 10250 12250 50  0001 C CNN
	1    10250 12250
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:+3V3-power-SolarCarECU-rescue #PWR0107
U 1 1 5C5ED272
P 8950 11650
F 0 "#PWR0107" H 8950 11500 50  0001 C CNN
F 1 "+3V3" H 8965 11823 50  0000 C CNN
F 2 "" H 8950 11650 50  0001 C CNN
F 3 "" H 8950 11650 50  0001 C CNN
	1    8950 11650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 11650 8950 11750
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C13
U 1 1 5C5F2FAE
P 8950 12000
F 0 "C13" H 9065 12046 50  0000 L CNN
F 1 "0.47u" H 9065 11955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8988 11850 50  0001 C CNN
F 3 "~" H 8950 12000 50  0001 C CNN
	1    8950 12000
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0108
U 1 1 5C5F30F8
P 8950 12250
F 0 "#PWR0108" H 8950 12000 50  0001 C CNN
F 1 "GND" H 8955 12077 50  0000 C CNN
F 2 "" H 8950 12250 50  0001 C CNN
F 3 "" H 8950 12250 50  0001 C CNN
	1    8950 12250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 11850 8950 11750
Wire Wire Line
	8950 12150 8950 12250
Connection ~ 8950 11750
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C11
U 1 1 5C616A5C
P 8400 12000
F 0 "C11" H 8515 12046 50  0000 L CNN
F 1 "0.47u" H 8515 11955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8438 11850 50  0001 C CNN
F 3 "~" H 8400 12000 50  0001 C CNN
	1    8400 12000
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0109
U 1 1 5C616A63
P 8400 12250
F 0 "#PWR0109" H 8400 12000 50  0001 C CNN
F 1 "GND" H 8405 12077 50  0000 C CNN
F 2 "" H 8400 12250 50  0001 C CNN
F 3 "" H 8400 12250 50  0001 C CNN
	1    8400 12250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 12150 8400 12250
Wire Wire Line
	10250 11200 10250 11250
$Comp
L SolarCarECU-rescue:+5V-power-SolarCarECU-rescue #PWR0110
U 1 1 5C62B927
P 8400 11650
F 0 "#PWR0110" H 8400 11500 50  0001 C CNN
F 1 "+5V" H 8415 11823 50  0000 C CNN
F 2 "" H 8400 11650 50  0001 C CNN
F 3 "" H 8400 11650 50  0001 C CNN
	1    8400 11650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 11650 8400 11850
Wire Wire Line
	8950 11750 9750 11750
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R8
U 1 1 5C634D73
P 9450 12050
F 0 "R8" H 9520 12096 50  0000 L CNN
F 1 "100k" H 9520 12005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9380 12050 50  0001 C CNN
F 3 "~" H 9450 12050 50  0001 C CNN
	1    9450 12050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 11850 9450 11850
Wire Wire Line
	9450 11850 9450 11900
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0111
U 1 1 5C6380E3
P 9450 12250
F 0 "#PWR0111" H 9450 12000 50  0001 C CNN
F 1 "GND" H 9455 12077 50  0000 C CNN
F 2 "" H 9450 12250 50  0001 C CNN
F 3 "" H 9450 12250 50  0001 C CNN
	1    9450 12250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 12250 9450 12200
Wire Wire Line
	10250 12050 10250 12250
Text Label 2750 12400 2    50   ~ 0
CAN0_TX
Text Label 2750 12500 2    50   ~ 0
CAN0_RX
Text Label 3000 13300 2    50   ~ 0
CAN1_TX
Text Label 3000 13400 2    50   ~ 0
CAN1_RX
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R1
U 1 1 5C6832B5
P 3000 10800
F 0 "R1" V 3050 10950 50  0000 C CNN
F 1 "0" V 3050 10650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2930 10800 50  0001 C CNN
F 3 "~" H 3000 10800 50  0001 C CNN
	1    3000 10800
	0    -1   -1   0   
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R2
U 1 1 5C68ACDB
P 3000 10900
F 0 "R2" V 3050 11050 50  0000 C CNN
F 1 "0" V 3050 10750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2930 10900 50  0001 C CNN
F 3 "~" H 3000 10900 50  0001 C CNN
	1    3000 10900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 10800 3250 10800
Wire Wire Line
	3250 10900 3150 10900
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R3
U 1 1 5C692F5B
P 3000 12400
F 0 "R3" V 3050 12550 50  0000 C CNN
F 1 "0" V 3050 12250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2930 12400 50  0001 C CNN
F 3 "~" H 3000 12400 50  0001 C CNN
	1    3000 12400
	0    -1   -1   0   
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R4
U 1 1 5C692F62
P 3000 12500
F 0 "R4" V 3050 12650 50  0000 C CNN
F 1 "0" V 3050 12350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2930 12500 50  0001 C CNN
F 3 "~" H 3000 12500 50  0001 C CNN
	1    3000 12500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 12400 3250 12400
Wire Wire Line
	3250 12500 3150 12500
Wire Wire Line
	2750 10800 2850 10800
Wire Wire Line
	2750 10900 2850 10900
Wire Wire Line
	2750 12400 2850 12400
Wire Wire Line
	2750 12500 2850 12500
Text Label 2750 10800 2    50   ~ 0
CAN0_TX
Text Label 2750 10900 2    50   ~ 0
CAN0_RX
$Comp
L SolarCarECU-rescue:+3V3-power-SolarCarECU-rescue #PWR0112
U 1 1 5C6C1368
P 1800 11750
F 0 "#PWR0112" H 1800 11600 50  0001 C CNN
F 1 "+3V3" H 1815 11923 50  0000 C CNN
F 2 "" H 1800 11750 50  0001 C CNN
F 3 "" H 1800 11750 50  0001 C CNN
	1    1800 11750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 11750 1800 11800
$Comp
L SolarCarECU-rescue:+3V3-power-SolarCarECU-rescue #PWR0113
U 1 1 5C6C5A23
P 1850 12850
F 0 "#PWR0113" H 1850 12700 50  0001 C CNN
F 1 "+3V3" H 1865 13023 50  0000 C CNN
F 2 "" H 1850 12850 50  0001 C CNN
F 3 "" H 1850 12850 50  0001 C CNN
	1    1850 12850
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0114
U 1 1 5C6CA23C
P 2050 14250
F 0 "#PWR0114" H 2050 14000 50  0001 C CNN
F 1 "GND" H 2055 14077 50  0000 C CNN
F 2 "" H 2050 14250 50  0001 C CNN
F 3 "" H 2050 14250 50  0001 C CNN
	1    2050 14250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 14250 2050 14200
Wire Wire Line
	1850 13050 1850 13000
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0115
U 1 1 5C6CECD7
P 1700 10450
F 0 "#PWR0115" H 1700 10200 50  0001 C CNN
F 1 "GND" H 1705 10277 50  0000 C CNN
F 2 "" H 1700 10450 50  0001 C CNN
F 3 "" H 1700 10450 50  0001 C CNN
	1    1700 10450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 10450 1700 10400
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0116
U 1 1 5C6E5842
P 6300 11700
F 0 "#PWR0116" H 6300 11450 50  0001 C CNN
F 1 "GND" H 6305 11527 50  0000 C CNN
F 2 "" H 6300 11700 50  0001 C CNN
F 3 "" H 6300 11700 50  0001 C CNN
	1    6300 11700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 11700 6300 11600
Wire Wire Line
	5250 12900 5700 12900
Wire Wire Line
	5700 12800 5700 12900
Text Label 5300 13000 0    50   ~ 0
USB_D+
Text Label 5300 13100 0    50   ~ 0
USB_D-
$Comp
L SolarCarECU-rescue:+5V-power-SolarCarECU-rescue #PWR0117
U 1 1 5C6F8F01
P 20200 1650
F 0 "#PWR0117" H 20200 1500 50  0001 C CNN
F 1 "+5V" H 20215 1823 50  0000 C CNN
F 2 "" H 20200 1650 50  0001 C CNN
F 3 "" H 20200 1650 50  0001 C CNN
	1    20200 1650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	20450 1750 20200 1750
Wire Wire Line
	20200 1750 20200 1650
Wire Wire Line
	21100 1950 20900 1950
Wire Wire Line
	21100 2050 20900 2050
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0118
U 1 1 5C707E77
P 21450 2450
F 0 "#PWR0118" H 21450 2200 50  0001 C CNN
F 1 "GND" H 21455 2277 50  0000 C CNN
F 2 "" H 21450 2450 50  0001 C CNN
F 3 "" H 21450 2450 50  0001 C CNN
	1    21450 2450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	21500 2350 21500 2400
Wire Wire Line
	21500 2400 21450 2400
Wire Wire Line
	21450 2400 21450 2450
Wire Wire Line
	21400 2350 21400 2400
Wire Wire Line
	21400 2400 21450 2400
Connection ~ 21450 2400
Text Label 20900 1950 2    50   ~ 0
USB_D+
Text Label 20900 2050 2    50   ~ 0
USB_D-
Wire Wire Line
	5250 13000 5300 13000
Wire Wire Line
	5250 13100 5300 13100
Wire Wire Line
	5700 12950 5700 12900
Connection ~ 5700 12900
$Comp
L SolarCarECU-rescue:+5V-power-SolarCarECU-rescue #PWR0119
U 1 1 5C734E15
P 6250 13050
F 0 "#PWR0119" H 6250 12900 50  0001 C CNN
F 1 "+5V" H 6265 13223 50  0000 C CNN
F 2 "" H 6250 13050 50  0001 C CNN
F 3 "" H 6250 13050 50  0001 C CNN
	1    6250 13050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 13200 6250 13050
$Comp
L SolarCarECU-rescue:+5V-power-SolarCarECU-rescue #PWR0120
U 1 1 5C73B0C8
P 6250 13650
F 0 "#PWR0120" H 6250 13500 50  0001 C CNN
F 1 "+5V" H 6265 13823 50  0000 C CNN
F 2 "" H 6250 13650 50  0001 C CNN
F 3 "" H 6250 13650 50  0001 C CNN
	1    6250 13650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 13700 6250 13650
Wire Wire Line
	6300 11500 6300 11450
Text Label 9650 11450 2    50   ~ 0
CAN0_TX
Text Label 9650 11550 2    50   ~ 0
CAN0_RX
Wire Wire Line
	9650 11450 9750 11450
Wire Wire Line
	9650 11550 9750 11550
$Comp
L SolarCarECU-rescue:MCP2562-E-P-Interface_CAN_LIN-SolarCarECU-rescue U6
U 1 1 5C7851F1
P 10250 13300
F 0 "U6" H 9900 13650 50  0000 C CNN
F 1 "MCP2562-E-P" H 10650 13650 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 10250 12800 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25167A.pdf" H 10250 13300 50  0001 C CNN
	1    10250 13300
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:+5V-power-SolarCarECU-rescue #PWR0121
U 1 1 5C7851F8
P 10250 12850
F 0 "#PWR0121" H 10250 12700 50  0001 C CNN
F 1 "+5V" H 10265 13023 50  0000 C CNN
F 2 "" H 10250 12850 50  0001 C CNN
F 3 "" H 10250 12850 50  0001 C CNN
	1    10250 12850
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0122
U 1 1 5C7851FE
P 10250 13900
F 0 "#PWR0122" H 10250 13650 50  0001 C CNN
F 1 "GND" H 10255 13727 50  0000 C CNN
F 2 "" H 10250 13900 50  0001 C CNN
F 3 "" H 10250 13900 50  0001 C CNN
	1    10250 13900
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:+3V3-power-SolarCarECU-rescue #PWR0123
U 1 1 5C785217
P 8950 13300
F 0 "#PWR0123" H 8950 13150 50  0001 C CNN
F 1 "+3V3" H 8965 13473 50  0000 C CNN
F 2 "" H 8950 13300 50  0001 C CNN
F 3 "" H 8950 13300 50  0001 C CNN
	1    8950 13300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 13300 8950 13400
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C14
U 1 1 5C78521E
P 8950 13650
F 0 "C14" H 9065 13696 50  0000 L CNN
F 1 "0.47u" H 9065 13605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8988 13500 50  0001 C CNN
F 3 "~" H 8950 13650 50  0001 C CNN
	1    8950 13650
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0124
U 1 1 5C785225
P 8950 13900
F 0 "#PWR0124" H 8950 13650 50  0001 C CNN
F 1 "GND" H 8955 13727 50  0000 C CNN
F 2 "" H 8950 13900 50  0001 C CNN
F 3 "" H 8950 13900 50  0001 C CNN
	1    8950 13900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 13500 8950 13400
Wire Wire Line
	8950 13800 8950 13900
Connection ~ 8950 13400
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C12
U 1 1 5C78522E
P 8400 13650
F 0 "C12" H 8515 13696 50  0000 L CNN
F 1 "0.47u" H 8515 13605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8438 13500 50  0001 C CNN
F 3 "~" H 8400 13650 50  0001 C CNN
	1    8400 13650
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0125
U 1 1 5C785235
P 8400 13900
F 0 "#PWR0125" H 8400 13650 50  0001 C CNN
F 1 "GND" H 8405 13727 50  0000 C CNN
F 2 "" H 8400 13900 50  0001 C CNN
F 3 "" H 8400 13900 50  0001 C CNN
	1    8400 13900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 13800 8400 13900
Wire Wire Line
	10250 12850 10250 12900
$Comp
L SolarCarECU-rescue:+5V-power-SolarCarECU-rescue #PWR0126
U 1 1 5C78523D
P 8400 13300
F 0 "#PWR0126" H 8400 13150 50  0001 C CNN
F 1 "+5V" H 8415 13473 50  0000 C CNN
F 2 "" H 8400 13300 50  0001 C CNN
F 3 "" H 8400 13300 50  0001 C CNN
	1    8400 13300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 13300 8400 13500
Wire Wire Line
	8950 13400 9750 13400
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R9
U 1 1 5C785245
P 9450 13700
F 0 "R9" H 9520 13746 50  0000 L CNN
F 1 "100k" H 9520 13655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9380 13700 50  0001 C CNN
F 3 "~" H 9450 13700 50  0001 C CNN
	1    9450 13700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 13500 9450 13500
Wire Wire Line
	9450 13500 9450 13550
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0127
U 1 1 5C78524E
P 9450 13900
F 0 "#PWR0127" H 9450 13650 50  0001 C CNN
F 1 "GND" H 9455 13727 50  0000 C CNN
F 2 "" H 9450 13900 50  0001 C CNN
F 3 "" H 9450 13900 50  0001 C CNN
	1    9450 13900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 13900 9450 13850
Wire Wire Line
	10250 13700 10250 13900
Text Label 9650 13100 2    50   ~ 0
CAN1_TX
Text Label 9650 13200 2    50   ~ 0
CAN1_RX
Wire Wire Line
	9650 13100 9750 13100
Wire Wire Line
	9650 13200 9750 13200
Wire Wire Line
	6250 13800 6250 13900
Wire Wire Line
	3000 13400 3250 13400
Wire Wire Line
	3000 13300 3250 13300
Text Label 5300 14500 0    50   ~ 0
SDA_0
Text Label 5300 14400 0    50   ~ 0
SCL_0
Text Label 2750 11600 2    50   ~ 0
MISO_0
Text Label 2750 11700 2    50   ~ 0
MOSI_0
Text Label 2750 11500 2    50   ~ 0
CS_0
Text Label 5500 11700 0    50   ~ 0
SCK_2
Text Label 5500 11800 0    50   ~ 0
MISO_2
Text Label 5500 11900 0    50   ~ 0
MOSI_2
Text Label 5500 12000 0    50   ~ 0
CS_2
Text Label 3000 14300 2    50   ~ 0
SCK_0
Wire Wire Line
	3000 14300 3250 14300
Text Label 3000 14400 2    50   ~ 0
LV_GEARSHIFT_CTRL
Wire Wire Line
	3000 14400 3250 14400
Wire Wire Line
	3000 14500 3250 14500
Text Label 3000 14500 2    50   ~ 0
LV_TURNSIG_CTRL
Wire Wire Line
	2050 14200 3250 14200
Wire Wire Line
	3000 14600 3250 14600
Text Label 3000 14600 2    50   ~ 0
LV_THROTTLE_CTRL
Text Label 5300 14600 0    50   ~ 0
LV_REGEN_CTRL
Text Label 2750 11900 2    50   ~ 0
LV_HAZARD_CTRL
Text Label 2750 12000 2    50   ~ 0
LV_HAZARD_LED
Text Label 2750 12100 2    50   ~ 0
LV_DOWN_CTRL
Text Label 2750 12200 2    50   ~ 0
LV_UP_CTRL
Text Label 2750 12300 2    50   ~ 0
LV_SEL_CTRL
Text Label 5300 14300 0    50   ~ 0
LV_BRAKE_CTRL
Wire Wire Line
	5250 13200 6250 13200
Text Label 20400 5550 0    50   ~ 0
MOTOR_L_FWD_EN
Text Label 20400 5150 0    50   ~ 0
MOTOR_L_THROTTLE
Text Label 20400 4100 0    50   ~ 0
MOTOR_R_THROTTLE
Text Label 20400 5050 0    50   ~ 0
MOTOR_L_REGEN
Text Label 20400 4000 0    50   ~ 0
MOTOR_R_REGEN
Wire Wire Line
	5250 13300 5300 13300
Wire Wire Line
	5250 13400 5300 13400
Wire Wire Line
	5250 14300 5300 14300
Wire Wire Line
	5300 14400 5250 14400
Wire Wire Line
	5250 14500 5300 14500
Wire Wire Line
	5300 14600 5250 14600
Wire Wire Line
	1700 10400 3250 10400
Text Label 20400 5650 0    50   ~ 0
MOTOR_L_REV_EN
Text Label 20400 4600 0    50   ~ 0
MOTOR_R_REV_EN
Text Label 20400 4500 0    50   ~ 0
MOTOR_R_FWD_EN
Text Label 20400 5350 0    50   ~ 0
MOTOR_L_REGEN_EN
Text Label 20400 4300 0    50   ~ 0
MOTOR_R_REGEN_EN
Text Label 20400 4400 0    50   ~ 0
MOTOR_R_ECO_EN
Text Label 20400 4200 0    50   ~ 0
MOTOR_R_METER
Text Label 20400 5250 0    50   ~ 0
MOTOR_L_METER
Text Label 20400 5450 0    50   ~ 0
MOTOR_L_ECO_EN
$Comp
L SolarCarECU-rescue:Screw_Terminal_01x08-Connector-SolarCarECU-rescue J4
U 1 1 5CAFCEA5
P 21450 4300
F 0 "J4" H 21530 4292 50  0000 L CNN
F 1 "Screw_Terminal_01x08" H 21530 4201 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 21450 4300 50  0001 C CNN
F 3 "~" H 21450 4300 50  0001 C CNN
	1    21450 4300
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:Screw_Terminal_01x08-Connector-SolarCarECU-rescue J5
U 1 1 5CAFCF49
P 21450 5350
F 0 "J5" H 21530 5342 50  0000 L CNN
F 1 "Screw_Terminal_01x08" H 21530 5251 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 21450 5350 50  0001 C CNN
F 3 "~" H 21450 5350 50  0001 C CNN
	1    21450 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	21250 4000 20400 4000
Wire Wire Line
	20400 4100 21250 4100
Wire Wire Line
	21250 4200 20400 4200
Wire Wire Line
	20400 4300 21250 4300
Wire Wire Line
	21250 4400 20400 4400
Wire Wire Line
	21250 4500 20400 4500
Wire Wire Line
	20400 4600 21250 4600
Wire Wire Line
	21250 5050 20400 5050
Wire Wire Line
	20400 5150 21250 5150
Wire Wire Line
	20400 5250 21250 5250
Wire Wire Line
	20400 5350 21250 5350
Wire Wire Line
	21250 5450 20400 5450
Wire Wire Line
	20400 5550 21250 5550
Wire Wire Line
	20400 5650 21250 5650
$Comp
L SolarCarECU-rescue:GNDA-power-SolarCarECU-rescue #PWR0128
U 1 1 5CC073AE
P 20400 4700
F 0 "#PWR0128" H 20400 4450 50  0001 C CNN
F 1 "GNDA" H 20405 4527 50  0000 C CNN
F 2 "" H 20400 4700 50  0001 C CNN
F 3 "" H 20400 4700 50  0001 C CNN
	1    20400 4700
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:4504-4xxx-SolarCarECU-rescue U9
U 1 1 5CC1567F
P 10300 9150
F 0 "U9" H 10000 10000 50  0000 C CNN
F 1 "4504" H 10550 10000 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 10300 7850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4504b.pdf" H 9650 8800 50  0001 C CNN
	1    10300 9150
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:4504-4xxx-SolarCarECU-rescue U8
U 1 1 5CC22D1D
P 10300 6100
F 0 "U8" H 10000 6950 50  0000 C CNN
F 1 "4504" H 10550 6950 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 10300 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4504b.pdf" H 9650 5750 50  0001 C CNN
	1    10300 6100
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0129
U 1 1 5CC22ECA
P 9650 10300
F 0 "#PWR0129" H 9650 10050 50  0001 C CNN
F 1 "GND" H 9655 10127 50  0000 C CNN
F 2 "" H 9650 10300 50  0001 C CNN
F 3 "" H 9650 10300 50  0001 C CNN
	1    9650 10300
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0130
U 1 1 5CC22FCC
P 9650 7200
F 0 "#PWR0130" H 9650 6950 50  0001 C CNN
F 1 "GND" H 9655 7027 50  0000 C CNN
F 2 "" H 9650 7200 50  0001 C CNN
F 3 "" H 9650 7200 50  0001 C CNN
	1    9650 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 10050 10300 10200
Wire Wire Line
	10300 10200 9650 10200
Wire Wire Line
	9650 10200 9650 10300
Wire Wire Line
	9850 9850 9650 9850
Wire Wire Line
	9650 9850 9650 10200
Connection ~ 9650 10200
Wire Wire Line
	9850 6800 9650 6800
Wire Wire Line
	9650 6800 9650 7100
Wire Wire Line
	10300 7000 10300 7100
Wire Wire Line
	10300 7100 9650 7100
Connection ~ 9650 7100
Wire Wire Line
	9650 7100 9650 7200
$Comp
L SolarCarECU-rescue:+3V3-power-SolarCarECU-rescue #PWR0131
U 1 1 5CC78E2A
P 10200 8100
F 0 "#PWR0131" H 10200 7950 50  0001 C CNN
F 1 "+3V3" H 10150 8250 50  0000 C CNN
F 2 "" H 10200 8100 50  0001 C CNN
F 3 "" H 10200 8100 50  0001 C CNN
	1    10200 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 8100 10200 8150
$Comp
L SolarCarECU-rescue:+3V3-power-SolarCarECU-rescue #PWR0132
U 1 1 5CC87C69
P 10200 5050
F 0 "#PWR0132" H 10200 4900 50  0001 C CNN
F 1 "+3V3" H 10150 5200 50  0000 C CNN
F 2 "" H 10200 5050 50  0001 C CNN
F 3 "" H 10200 5050 50  0001 C CNN
	1    10200 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 5050 10200 5100
$Comp
L SolarCarECU-rescue:+12V-power-SolarCarECU-rescue #PWR0133
U 1 1 5CC96DA1
P 10400 8100
F 0 "#PWR0133" H 10400 7950 50  0001 C CNN
F 1 "+12V" H 10450 8250 50  0000 C CNN
F 2 "" H 10400 8100 50  0001 C CNN
F 3 "" H 10400 8100 50  0001 C CNN
	1    10400 8100
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:+12V-power-SolarCarECU-rescue #PWR0134
U 1 1 5CCA5DFB
P 10400 5050
F 0 "#PWR0134" H 10400 4900 50  0001 C CNN
F 1 "+12V" H 10450 5200 50  0000 C CNN
F 2 "" H 10400 5050 50  0001 C CNN
F 3 "" H 10400 5050 50  0001 C CNN
	1    10400 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 5050 10400 5100
Text Label 10850 5600 0    50   ~ 0
MOTOR_L_REV_EN
Text Label 10850 5800 0    50   ~ 0
MOTOR_L_FWD_EN
Text Label 10850 6200 0    50   ~ 0
MOTOR_L_REGEN_EN
Text Label 10850 6000 0    50   ~ 0
MOTOR_L_ECO_EN
Text Label 10900 8850 0    50   ~ 0
MOTOR_R_REV_EN
Text Label 10900 9050 0    50   ~ 0
MOTOR_R_FWD_EN
Text Label 10900 9250 0    50   ~ 0
MOTOR_R_REGEN_EN
Text Label 10900 9450 0    50   ~ 0
MOTOR_R_ECO_EN
Wire Wire Line
	10850 5600 10750 5600
Wire Wire Line
	10850 5800 10750 5800
Wire Wire Line
	10850 6000 10750 6000
Wire Wire Line
	10850 6200 10750 6200
Wire Wire Line
	10750 9250 10900 9250
Wire Wire Line
	10750 6400 10850 6400
Wire Wire Line
	10750 6600 10850 6600
$Comp
L SolarCarECU-rescue:Screw_Terminal_01x02-Connector-SolarCarECU-rescue J1
U 1 1 5CE84CDE
P 1950 2550
F 0 "J1" H 1870 2225 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1870 2316 50  0000 C CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_2-G-5.08_1x02_P5.08mm_Vertical" H 1950 2550 50  0001 C CNN
F 3 "~" H 1950 2550 50  0001 C CNN
	1    1950 2550
	-1   0    0    1   
$EndComp
$Comp
L SolarCarECU-rescue:L7805-Regulator_Linear-SolarCarECU-rescue U4
U 1 1 5CE85049
P 6350 2450
F 0 "U4" H 6350 2692 50  0000 C CNN
F 1 "L7805" H 6350 2601 50  0000 C CNN
F 2 "PCBDesign:PT78NR112H" H 6375 2300 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 6350 2400 50  0001 C CNN
	1    6350 2450
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:QM6015D-Transistor_FET-SolarCarECU-rescue Q1
U 1 1 5CEA1F94
P 3050 2550
F 0 "Q1" V 3393 2550 50  0000 C CNN
F 1 "QM6015D" V 3302 2550 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 3250 2475 50  0001 L CIN
F 3 "http://www.jaolen.com/images/pdf/QM6015D.pdf" V 3050 2550 50  0001 L CNN
	1    3050 2550
	0    -1   -1   0   
$EndComp
$Comp
L SolarCarECU-rescue:D_Zener-Device-SolarCarECU-rescue D2
U 1 1 5CEC2C1C
P 3500 2650
F 0 "D2" V 3454 2729 50  0000 L CNN
F 1 "D_Zener" V 3545 2729 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 3500 2650 50  0001 C CNN
F 3 "~" H 3500 2650 50  0001 C CNN
	1    3500 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 2550 2300 2550
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0135
U 1 1 5CF0032A
P 2300 3350
F 0 "#PWR0135" H 2300 3100 50  0001 C CNN
F 1 "GND" H 2305 3177 50  0000 C CNN
F 2 "" H 2300 3350 50  0001 C CNN
F 3 "" H 2300 3350 50  0001 C CNN
	1    2300 3350
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C9
U 1 1 5CF30EAF
P 5800 2750
F 0 "C9" H 5915 2796 50  0000 L CNN
F 1 "10uF" H 5915 2705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5838 2600 50  0001 C CNN
F 3 "~" H 5800 2750 50  0001 C CNN
	1    5800 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2450 5800 2600
Wire Wire Line
	5800 2450 6050 2450
$Comp
L SolarCarECU-rescue:CP-Device-SolarCarECU-rescue C10
U 1 1 5CF96F79
P 7050 2750
F 0 "C10" H 7168 2796 50  0000 L CNN
F 1 "10uF" H 7168 2705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D13.0mm_P5.00mm" H 7088 2600 50  0001 C CNN
F 3 "~" H 7050 2750 50  0001 C CNN
	1    7050 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2450 7050 2450
Wire Wire Line
	7050 2450 7050 2600
$Comp
L SolarCarECU-rescue:+5V-power-SolarCarECU-rescue #PWR0136
U 1 1 5CFF3868
P 7050 2250
F 0 "#PWR0136" H 7050 2100 50  0001 C CNN
F 1 "+5V-power" H 7065 2423 50  0000 C CNN
F 2 "" H 7050 2250 50  0001 C CNN
F 3 "" H 7050 2250 50  0001 C CNN
	1    7050 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2250 7050 2450
Connection ~ 7050 2450
Wire Wire Line
	3250 2450 3500 2450
Wire Wire Line
	3500 2450 3500 2500
Wire Wire Line
	2150 2450 2850 2450
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R6
U 1 1 5D0750F4
P 3500 3050
F 0 "R6" H 3570 3096 50  0000 L CNN
F 1 "1k" H 3570 3005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3430 3050 50  0001 C CNN
F 3 "~" H 3500 3050 50  0001 C CNN
	1    3500 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3200 3500 3300
Wire Wire Line
	2300 3300 3500 3300
Wire Wire Line
	3500 2800 3500 2850
Wire Wire Line
	3050 2750 3050 2850
Wire Wire Line
	3050 2850 3500 2850
Connection ~ 3500 2850
Wire Wire Line
	3500 2850 3500 2900
Wire Wire Line
	5800 2900 5800 3300
Wire Wire Line
	6350 3300 5800 3300
Wire Wire Line
	6350 2750 6350 3300
Connection ~ 5800 3300
Wire Wire Line
	7050 3300 6350 3300
Wire Wire Line
	7050 2900 7050 3300
Connection ~ 6350 3300
Wire Wire Line
	3500 3300 4050 3300
Wire Wire Line
	5400 2450 5800 2450
Connection ~ 5800 2450
Wire Wire Line
	3500 2450 4050 2450
Wire Wire Line
	5200 3200 5200 3300
Wire Wire Line
	5200 3300 5800 3300
Wire Wire Line
	5200 2900 5200 2850
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R7
U 1 1 5D19AE1F
P 4550 2650
F 0 "R7" H 4620 2696 50  0000 L CNN
F 1 "120" H 4620 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4480 2650 50  0001 C CNN
F 3 "~" H 4550 2650 50  0001 C CNN
	1    4550 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2500 4550 2450
Wire Wire Line
	4550 2450 5000 2450
Wire Wire Line
	4550 2800 4550 2850
Wire Wire Line
	4550 2850 5200 2850
Connection ~ 5200 2850
Wire Wire Line
	5200 2850 5200 2750
$Comp
L SolarCarECU-rescue:PZT2222A-Transistor_BJT-SolarCarECU-rescue Q2
U 1 1 5D1C0CBA
P 5200 2550
F 0 "Q2" V 5528 2550 50  0000 C CNN
F 1 "PZT2222A" V 5437 2550 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 5400 2475 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 5200 2550 50  0001 L CNN
	1    5200 2550
	0    -1   -1   0   
$EndComp
$Comp
L SolarCarECU-rescue:CP-Device-SolarCarECU-rescue C4
U 1 1 5D1C1081
P 5200 3050
F 0 "C4" H 5318 3096 50  0000 L CNN
F 1 "470uF" H 5318 3005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D13.0mm_P5.00mm" H 5238 2900 50  0001 C CNN
F 3 "~" H 5200 3050 50  0001 C CNN
	1    5200 3050
	1    0    0    -1  
$EndComp
Connection ~ 4050 2450
Wire Wire Line
	4050 2450 4550 2450
$Comp
L SolarCarECU-rescue:CP-Device-SolarCarECU-rescue C1
U 1 1 5D1D4AAE
P 4050 3050
F 0 "C1" H 4168 3096 50  0000 L CNN
F 1 "470uF" H 4168 3005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D13.0mm_P5.00mm" H 4088 2900 50  0001 C CNN
F 3 "~" H 4050 3050 50  0001 C CNN
	1    4050 3050
	1    0    0    -1  
$EndComp
Connection ~ 4050 3300
Wire Wire Line
	4050 3300 5200 3300
Wire Wire Line
	4050 3200 4050 3300
Wire Wire Line
	4050 2450 4050 2900
Text Label 8900 6200 0    50   ~ 0
LV_MOTOR_L_REGEN_EN
Text Label 8900 6000 0    50   ~ 0
LV_MOTOR_L_ECO_EN
Text Label 8850 8850 0    50   ~ 0
LV_MOTOR_R_REV_EN
Text Label 8850 9250 0    50   ~ 0
LV_MOTOR_R_REGEN_EN
Text Label 8850 9450 0    50   ~ 0
LV_MOTOR_R_ECO_EN
Wire Wire Line
	8900 5600 9850 5600
Wire Wire Line
	8900 6200 9850 6200
Text Label 8850 9050 0    50   ~ 0
LV_MOTOR_R_FWD_EN
Wire Wire Line
	8900 6000 9850 6000
Wire Wire Line
	8900 5800 9850 5800
Text Label 8900 5600 0    50   ~ 0
LV_MOTOR_L_REV_EN
Text Label 8900 5800 0    50   ~ 0
LV_MOTOR_L_FWD_EN
Text Label 8850 8650 0    50   ~ 0
LV_HAZARD_LED
Text Label 9750 3800 2    50   ~ 0
LV_KILL_SENSE
Text Label 5500 12300 0    50   ~ 0
LV_BLINKERS
Text Label 5500 12200 0    50   ~ 0
LV_BRAKELIGHTS
Text Label 5500 10500 0    50   ~ 0
LV_HEADLIGHTS
Wire Wire Line
	5250 11500 6300 11500
Wire Wire Line
	5250 11600 6300 11600
$Comp
L SolarCarECU-rescue:4504-4xxx-SolarCarECU-rescue U7
U 1 1 5D3D5BE3
P 10300 3500
F 0 "U7" H 10000 4350 50  0000 C CNN
F 1 "4504" H 10550 4350 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 10300 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4504b.pdf" H 9650 3150 50  0001 C CNN
	1    10300 3500
	-1   0    0    -1  
$EndComp
Text Label 11450 3000 2    50   ~ 0
HAZARD_CTRL
Wire Wire Line
	9850 3000 9750 3000
Text Label 11450 3200 2    50   ~ 0
DOWN_CTRL
Text Label 11450 3400 2    50   ~ 0
UP_CTRL
Text Label 11450 3600 2    50   ~ 0
SEL_CTRL
Wire Wire Line
	11450 3000 10750 3000
Wire Wire Line
	11450 3200 10750 3200
Wire Wire Line
	11450 3400 10750 3400
Wire Wire Line
	11450 3800 10750 3800
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0138
U 1 1 5D4903C6
P 11000 5200
F 0 "#PWR0138" H 11000 4950 50  0001 C CNN
F 1 "GND" H 11005 5027 50  0000 C CNN
F 2 "" H 11000 5200 50  0001 C CNN
F 3 "" H 11000 5200 50  0001 C CNN
	1    11000 5200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11000 4600 11000 4500
Wire Wire Line
	11000 4200 10750 4200
Wire Wire Line
	10300 4400 10300 4500
Wire Wire Line
	10300 4500 11000 4500
Connection ~ 11000 4500
Wire Wire Line
	11000 4500 11000 4200
Text Label 9750 3000 2    50   ~ 0
LV_HAZARD_CTRL
Text Label 9750 3200 2    50   ~ 0
LV_DOWN_CTRL
Text Label 9750 3400 2    50   ~ 0
LV_UP_CTRL
Text Label 9750 3600 2    50   ~ 0
LV_SEL_CTRL
Wire Wire Line
	9750 3800 9850 3800
Wire Wire Line
	9850 3600 9750 3600
Wire Wire Line
	9750 3400 9850 3400
Wire Wire Line
	9850 3200 9750 3200
Wire Wire Line
	10750 3600 11450 3600
Wire Wire Line
	10750 4000 11000 4000
$Comp
L SolarCarECU-rescue:+12V-power-SolarCarECU-rescue #PWR0139
U 1 1 5D5DAC7B
P 10400 2350
F 0 "#PWR0139" H 10400 2200 50  0001 C CNN
F 1 "+12V" H 10350 2500 50  0000 C CNN
F 2 "" H 10400 2350 50  0001 C CNN
F 3 "" H 10400 2350 50  0001 C CNN
	1    10400 2350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10400 2350 10400 2500
$Comp
L SolarCarECU-rescue:+3V3-power-SolarCarECU-rescue #PWR0140
U 1 1 5D5F4218
P 10200 2350
F 0 "#PWR0140" H 10200 2200 50  0001 C CNN
F 1 "+3V3" H 10250 2500 50  0000 C CNN
F 2 "" H 10200 2350 50  0001 C CNN
F 3 "" H 10200 2350 50  0001 C CNN
	1    10200 2350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 2350 10200 2500
Text Label 10900 8650 0    50   ~ 0
HAZARD_LED
Wire Wire Line
	10900 9450 10750 9450
Wire Wire Line
	10750 9650 10900 9650
Text Label 11450 3800 2    50   ~ 0
KILL_SENSE
Text Label 20450 3150 0    50   ~ 0
HEADLIGHTS
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0141
U 1 1 5D79350F
P 20450 3450
F 0 "#PWR0141" H 20450 3200 50  0001 C CNN
F 1 "GND" H 20455 3277 50  0000 C CNN
F 2 "" H 20450 3450 50  0001 C CNN
F 3 "" H 20450 3450 50  0001 C CNN
	1    20450 3450
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C17
U 1 1 5DBDAD8F
P 9750 8150
F 0 "C17" V 9498 8150 50  0000 C CNN
F 1 "0.47u" V 9589 8150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9788 8000 50  0001 C CNN
F 3 "~" H 9750 8150 50  0001 C CNN
	1    9750 8150
	0    1    1    0   
$EndComp
Wire Wire Line
	9900 8150 10200 8150
Connection ~ 10200 8150
Wire Wire Line
	10200 8150 10200 8250
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0142
U 1 1 5DBFE38F
P 9450 8250
F 0 "#PWR0142" H 9450 8000 50  0001 C CNN
F 1 "GND" H 9455 8077 50  0000 C CNN
F 2 "" H 9450 8250 50  0001 C CNN
F 3 "" H 9450 8250 50  0001 C CNN
	1    9450 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 8250 9450 8150
Wire Wire Line
	9450 8150 9600 8150
Text Label 20400 7150 0    50   ~ 0
HAZARD_CTRL
Text Label 20400 7250 0    50   ~ 0
DOWN_CTRL
Text Label 20400 7350 0    50   ~ 0
UP_CTRL
Text Label 20400 7450 0    50   ~ 0
SEL_CTRL
Text Label 20400 7550 0    50   ~ 0
KILL_SENSE
Text Label 20400 7650 0    50   ~ 0
HAZARD_LED
Text Label 20450 3250 0    50   ~ 0
BRAKELIGHTS
Text Label 20450 3350 0    50   ~ 0
BLINKERS
Wire Wire Line
	20450 3250 21250 3250
Wire Wire Line
	21250 3350 20450 3350
Wire Wire Line
	20450 3150 21250 3150
Wire Wire Line
	20400 7150 21250 7150
Wire Wire Line
	21250 7250 20400 7250
Wire Wire Line
	20400 7350 21250 7350
Wire Wire Line
	21250 7450 20400 7450
Wire Wire Line
	20400 7550 21250 7550
Wire Wire Line
	21250 7650 20400 7650
Text Label 20400 6850 0    50   ~ 0
GEARSHIFT_CTRL
Text Label 20400 6950 0    50   ~ 0
TURNSIG_CTRL
Text Label 20400 7050 0    50   ~ 0
THROTTLE_CTRL
Wire Wire Line
	20400 7050 21250 7050
Wire Wire Line
	21250 6950 20400 6950
Wire Wire Line
	20400 6850 21250 6850
Text Label 20400 6750 0    50   ~ 0
REGEN_CTRL
Text Label 20400 6650 0    50   ~ 0
BRAKE_CTRL
Wire Wire Line
	20400 6650 21250 6650
Wire Wire Line
	20400 6750 21250 6750
$Comp
L SolarCarECU-rescue:Screw_Terminal_01x14-Connector-SolarCarECU-rescue J6
U 1 1 5E7BA93C
P 21450 6950
F 0 "J6" H 21530 6942 50  0000 L CNN
F 1 "Screw_Terminal_01x14" H 21530 6851 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x14_P2.54mm_Vertical" H 21450 6950 50  0001 C CNN
F 3 "~" H 21450 6950 50  0001 C CNN
	1    21450 6950
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:+5V-power-SolarCarECU-rescue #PWR0143
U 1 1 5E844CE9
P 21100 6250
F 0 "#PWR0143" H 21100 6100 50  0001 C CNN
F 1 "+5V" H 21115 6423 50  0000 C CNN
F 2 "" H 21100 6250 50  0001 C CNN
F 3 "" H 21100 6250 50  0001 C CNN
	1    21100 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	21100 6250 21100 6350
Wire Wire Line
	21100 6350 21250 6350
$Comp
L SolarCarECU-rescue:+12V-power-SolarCarECU-rescue #PWR0144
U 1 1 5E88AB82
P 20800 6250
F 0 "#PWR0144" H 20800 6100 50  0001 C CNN
F 1 "+12V" H 20850 6400 50  0000 C CNN
F 2 "" H 20800 6250 50  0001 C CNN
F 3 "" H 20800 6250 50  0001 C CNN
	1    20800 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	20800 6250 20800 6450
Wire Wire Line
	20800 6450 21250 6450
Wire Wire Line
	20200 6550 21250 6550
Wire Wire Line
	20200 6550 20200 7650
Text Label 2750 10500 2    50   ~ 0
UART_RX
Wire Wire Line
	2750 10500 3250 10500
Wire Wire Line
	2750 10600 3250 10600
Text Label 2750 10600 2    50   ~ 0
UART_TX
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R13
U 1 1 5ED592E0
P 14550 13050
F 0 "R13" H 14620 13096 50  0000 L CNN
F 1 "R" H 14620 13005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 14480 13050 50  0001 C CNN
F 3 "~" H 14550 13050 50  0001 C CNN
	1    14550 13050
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R19
U 1 1 5ED59376
P 15250 13050
F 0 "R19" H 15320 13096 50  0000 L CNN
F 1 "R" H 15320 13005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 15180 13050 50  0001 C CNN
F 3 "~" H 15250 13050 50  0001 C CNN
	1    15250 13050
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R29
U 1 1 5ED593EC
P 15950 13050
F 0 "R29" H 16020 13096 50  0000 L CNN
F 1 "R" H 16020 13005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 15880 13050 50  0001 C CNN
F 3 "~" H 15950 13050 50  0001 C CNN
	1    15950 13050
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R31
U 1 1 5ED59468
P 16600 13050
F 0 "R31" H 16670 13096 50  0000 L CNN
F 1 "R" H 16670 13005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 16530 13050 50  0001 C CNN
F 3 "~" H 16600 13050 50  0001 C CNN
	1    16600 13050
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R12
U 1 1 5ED595D9
P 14550 11850
F 0 "R12" H 14620 11896 50  0000 L CNN
F 1 "R" H 14620 11805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 14480 11850 50  0001 C CNN
F 3 "~" H 14550 11850 50  0001 C CNN
	1    14550 11850
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R18
U 1 1 5ED595E0
P 15250 11850
F 0 "R18" H 15320 11896 50  0000 L CNN
F 1 "R" H 15320 11805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 15180 11850 50  0001 C CNN
F 3 "~" H 15250 11850 50  0001 C CNN
	1    15250 11850
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R28
U 1 1 5ED595E7
P 15950 11850
F 0 "R28" H 16020 11896 50  0000 L CNN
F 1 "R" H 16020 11805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 15880 11850 50  0001 C CNN
F 3 "~" H 15950 11850 50  0001 C CNN
	1    15950 11850
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R30
U 1 1 5ED595EE
P 16600 11850
F 0 "R30" H 16670 11896 50  0000 L CNN
F 1 "R" H 16670 11805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 16530 11850 50  0001 C CNN
F 3 "~" H 16600 11850 50  0001 C CNN
	1    16600 11850
	1    0    0    -1  
$EndComp
Wire Wire Line
	14550 13200 14550 13350
Wire Wire Line
	15250 13350 15250 13200
Wire Wire Line
	15950 13200 15950 13350
Wire Wire Line
	16600 13200 16600 13350
Text Label 14350 12300 2    50   ~ 0
LV_GEARSHIFT_CTRL
Text Label 14350 12400 2    50   ~ 0
LV_TURNSIG_CTRL
Text Label 14350 12500 2    50   ~ 0
LV_THROTTLE_CTRL
Text Label 14350 12600 2    50   ~ 0
LV_REGEN_CTRL
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R41
U 1 1 5EE63934
P 17250 13050
F 0 "R41" H 17320 13096 50  0000 L CNN
F 1 "R" H 17320 13005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 17180 13050 50  0001 C CNN
F 3 "~" H 17250 13050 50  0001 C CNN
	1    17250 13050
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R40
U 1 1 5EE63942
P 17250 11850
F 0 "R40" H 17320 11896 50  0000 L CNN
F 1 "R" H 17320 11805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 17180 11850 50  0001 C CNN
F 3 "~" H 17250 11850 50  0001 C CNN
	1    17250 11850
	1    0    0    -1  
$EndComp
Wire Wire Line
	17250 13200 17250 13350
Text Label 14350 11200 2    50   ~ 0
GEARSHIFT_CTRL
Text Label 14350 11300 2    50   ~ 0
TURNSIG_CTRL
Text Label 14350 11400 2    50   ~ 0
THROTTLE_CTRL
Text Label 14350 11500 2    50   ~ 0
REGEN_CTRL
Text Label 14350 11600 2    50   ~ 0
BRAKE_CTRL
Wire Wire Line
	14350 11600 14550 11600
Wire Wire Line
	14550 11600 14550 11700
Wire Wire Line
	15250 11500 15250 11700
Wire Wire Line
	15950 11400 15950 11700
Wire Wire Line
	16600 11300 16600 11700
Wire Wire Line
	17250 11200 17250 11700
Text Label 14350 12700 2    50   ~ 0
LV_BRAKE_CTRL
Wire Wire Line
	14350 12700 14550 12700
Connection ~ 17250 12300
Connection ~ 16600 12400
Connection ~ 15950 12500
Connection ~ 15250 12600
Connection ~ 14550 12700
Wire Wire Line
	15950 12500 15950 12900
Wire Wire Line
	17250 12300 17250 12900
Wire Wire Line
	16600 12400 16600 12900
Wire Wire Line
	15250 12600 15250 12900
Wire Wire Line
	14550 12700 14550 12900
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C21
U 1 1 5F16A2A5
P 14850 13050
F 0 "C21" H 14965 13096 50  0000 L CNN
F 1 "C" H 14965 13005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 14888 12900 50  0001 C CNN
F 3 "~" H 14850 13050 50  0001 C CNN
	1    14850 13050
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C30
U 1 1 5F1B914E
P 15550 13050
F 0 "C30" H 15665 13096 50  0000 L CNN
F 1 "C" H 15665 13005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 15588 12900 50  0001 C CNN
F 3 "~" H 15550 13050 50  0001 C CNN
	1    15550 13050
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C35
U 1 1 5F208D80
P 16250 13050
F 0 "C35" H 16365 13096 50  0000 L CNN
F 1 "C" H 16365 13005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 16288 12900 50  0001 C CNN
F 3 "~" H 16250 13050 50  0001 C CNN
	1    16250 13050
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C37
U 1 1 5F28BEAA
P 16900 13050
F 0 "C37" H 17015 13096 50  0000 L CNN
F 1 "C" H 17015 13005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 16938 12900 50  0001 C CNN
F 3 "~" H 16900 13050 50  0001 C CNN
	1    16900 13050
	1    0    0    -1  
$EndComp
Wire Wire Line
	14850 13350 14850 13200
Wire Wire Line
	15550 13200 15550 13350
Wire Wire Line
	16250 13200 16250 13350
Wire Wire Line
	16900 13200 16900 13350
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C38
U 1 1 5F344BF9
P 17600 13050
F 0 "C38" H 17715 13096 50  0000 L CNN
F 1 "C" H 17715 13005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 17638 12900 50  0001 C CNN
F 3 "~" H 17600 13050 50  0001 C CNN
	1    17600 13050
	1    0    0    -1  
$EndComp
Wire Wire Line
	17600 13200 17600 13350
Wire Wire Line
	17600 12900 17600 12300
Wire Wire Line
	17600 12300 17250 12300
Wire Wire Line
	16900 12900 16900 12400
Wire Wire Line
	16900 12400 16600 12400
Wire Wire Line
	16250 12900 16250 12500
Wire Wire Line
	16250 12500 15950 12500
Wire Wire Line
	15550 12900 15550 12600
Wire Wire Line
	15550 12600 15250 12600
Wire Wire Line
	14850 12900 14850 12700
Wire Wire Line
	14850 12700 14550 12700
Wire Wire Line
	14350 11500 15250 11500
Wire Wire Line
	14350 11400 15950 11400
Wire Wire Line
	14350 11300 16600 11300
Wire Wire Line
	14350 11200 17250 11200
$Comp
L SolarCarECU-rescue:LM324A-Amplifier_Operational-SolarCarECU-rescue U10
U 1 1 5F546448
P 16600 2600
F 0 "U10" H 16800 2850 50  0000 C CNN
F 1 "LM324A" H 16900 2750 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 16550 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 16650 2800 50  0001 C CNN
	1    16600 2600
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:LM324A-Amplifier_Operational-SolarCarECU-rescue U10
U 3 1 5F546C66
P 16600 6400
F 0 "U10" H 16600 6767 50  0000 C CNN
F 1 "LM324A" H 16600 6676 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 16550 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 16650 6600 50  0001 C CNN
	3    16600 6400
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:LM324A-Amplifier_Operational-SolarCarECU-rescue U10
U 5 1 5F546E1F
P 16600 2600
F 0 "U10" H 16558 2646 50  0001 L CNN
F 1 "LM324A" H 16558 2600 50  0001 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 16550 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 16650 2800 50  0001 C CNN
	5    16600 2600
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R32
U 1 1 5F54744B
P 17050 2850
F 0 "R32" H 17120 2896 50  0000 L CNN
F 1 "1k" H 17120 2805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 16980 2850 50  0001 C CNN
F 3 "~" H 17050 2850 50  0001 C CNN
	1    17050 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	17800 2600 17050 2600
Connection ~ 17050 2600
Wire Wire Line
	17050 2700 17050 2600
Wire Wire Line
	17050 3000 17050 3100
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R33
U 1 1 5F5BE1A7
P 17050 3350
F 0 "R33" H 17120 3396 50  0000 L CNN
F 1 "1k" H 17120 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 16980 3350 50  0001 C CNN
F 3 "~" H 17050 3350 50  0001 C CNN
	1    17050 3350
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C26
U 1 1 5F5FB1E5
P 15700 2800
F 0 "C26" H 15815 2846 50  0000 L CNN
F 1 "6.8n" H 15815 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 15738 2650 50  0001 C CNN
F 3 "~" H 15700 2800 50  0001 C CNN
	1    15700 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	16900 2600 17050 2600
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R24
U 1 1 5F5FB59C
P 15950 2500
F 0 "R24" V 15743 2500 50  0000 C CNN
F 1 "36k" V 15834 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 15880 2500 50  0001 C CNN
F 3 "~" H 15950 2500 50  0001 C CNN
	1    15950 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	15700 2650 15700 2500
Wire Wire Line
	15700 2950 15700 3100
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R20
U 1 1 5F736000
P 15450 2500
F 0 "R20" V 15243 2500 50  0000 C CNN
F 1 "120k" V 15334 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 15380 2500 50  0001 C CNN
F 3 "~" H 15450 2500 50  0001 C CNN
	1    15450 2500
	0    1    1    0   
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R14
U 1 1 5F7560BC
P 14950 2500
F 0 "R14" V 14743 2500 50  0000 C CNN
F 1 "8.2k" V 14834 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 14880 2500 50  0001 C CNN
F 3 "~" H 14950 2500 50  0001 C CNN
	1    14950 2500
	0    1    1    0   
$EndComp
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C31
U 1 1 5F7B6B75
P 16200 2050
F 0 "C31" H 16315 2096 50  0000 L CNN
F 1 "2.2n" H 16315 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 16238 1900 50  0001 C CNN
F 3 "~" H 16200 2050 50  0001 C CNN
	1    16200 2050
	1    0    0    -1  
$EndComp
Connection ~ 16200 2500
Wire Wire Line
	16200 2500 16100 2500
Wire Wire Line
	16200 2500 16300 2500
Wire Wire Line
	15700 2500 15800 2500
Wire Wire Line
	15600 2500 15700 2500
Connection ~ 15700 2500
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C22
U 1 1 5F776321
P 15200 2050
F 0 "C22" H 15085 2004 50  0000 R CNN
F 1 "3.3n" H 15085 2095 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 15238 1900 50  0001 C CNN
F 3 "~" H 15200 2050 50  0001 C CNN
	1    15200 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	15200 2200 15200 2500
Wire Wire Line
	16200 2200 16200 2500
Wire Wire Line
	15100 2500 15200 2500
Connection ~ 15200 2500
Wire Wire Line
	15200 2500 15300 2500
Wire Wire Line
	17050 3200 17050 3100
Connection ~ 17050 3100
Wire Wire Line
	16200 2700 16200 3100
Wire Wire Line
	16200 2700 16300 2700
Connection ~ 16200 3100
Wire Wire Line
	15700 3100 16200 3100
Wire Wire Line
	16200 3100 17050 3100
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0145
U 1 1 5FC6B5DD
P 16500 2900
F 0 "#PWR0145" H 16500 2650 50  0001 C CNN
F 1 "GND" H 16505 2727 50  0000 C CNN
F 2 "" H 16500 2900 50  0001 C CNN
F 3 "" H 16500 2900 50  0001 C CNN
	1    16500 2900
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:+5V-power-SolarCarECU-rescue #PWR0146
U 1 1 5FC6B976
P 16500 1850
F 0 "#PWR0146" H 16500 1700 50  0001 C CNN
F 1 "+5V" H 16515 2023 50  0000 C CNN
F 2 "" H 16500 1850 50  0001 C CNN
F 3 "" H 16500 1850 50  0001 C CNN
	1    16500 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	17050 3500 17050 3650
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C36
U 1 1 6005806B
P 16800 2050
F 0 "C36" H 16915 2096 50  0000 L CNN
F 1 "0.47u" H 16915 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 16838 1900 50  0001 C CNN
F 3 "~" H 16800 2050 50  0001 C CNN
	1    16800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	16800 2250 16800 2200
Wire Wire Line
	16500 2250 16800 2250
Connection ~ 16500 2250
Wire Wire Line
	16500 2250 16500 2300
Wire Wire Line
	16500 1850 16500 2250
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R34
U 1 1 6021D677
P 17050 4750
F 0 "R34" H 17120 4796 50  0000 L CNN
F 1 "1k" H 17120 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 16980 4750 50  0001 C CNN
F 3 "~" H 17050 4750 50  0001 C CNN
	1    17050 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	17800 4500 17050 4500
Connection ~ 17050 4500
Wire Wire Line
	17050 4600 17050 4500
Wire Wire Line
	17050 4900 17050 5000
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R35
U 1 1 6021D682
P 17050 5250
F 0 "R35" H 17120 5296 50  0000 L CNN
F 1 "1k" H 17120 5205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 16980 5250 50  0001 C CNN
F 3 "~" H 17050 5250 50  0001 C CNN
	1    17050 5250
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C27
U 1 1 6021D689
P 15700 4700
F 0 "C27" H 15815 4746 50  0000 L CNN
F 1 "6.8n" H 15815 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 15738 4550 50  0001 C CNN
F 3 "~" H 15700 4700 50  0001 C CNN
	1    15700 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	16900 4500 17050 4500
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R25
U 1 1 6021D691
P 15950 4400
F 0 "R25" V 15743 4400 50  0000 C CNN
F 1 "36k" V 15834 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 15880 4400 50  0001 C CNN
F 3 "~" H 15950 4400 50  0001 C CNN
	1    15950 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	15700 4550 15700 4400
Wire Wire Line
	15700 4850 15700 5000
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R21
U 1 1 6021D69A
P 15450 4400
F 0 "R21" V 15243 4400 50  0000 C CNN
F 1 "120k" V 15334 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 15380 4400 50  0001 C CNN
F 3 "~" H 15450 4400 50  0001 C CNN
	1    15450 4400
	0    1    1    0   
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R15
U 1 1 6021D6A1
P 14950 4400
F 0 "R15" V 14743 4400 50  0000 C CNN
F 1 "8.2k" V 14834 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 14880 4400 50  0001 C CNN
F 3 "~" H 14950 4400 50  0001 C CNN
	1    14950 4400
	0    1    1    0   
$EndComp
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C32
U 1 1 6021D6AE
P 16200 3950
F 0 "C32" H 16315 3996 50  0000 L CNN
F 1 "2.2n" H 16315 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 16238 3800 50  0001 C CNN
F 3 "~" H 16200 3950 50  0001 C CNN
	1    16200 3950
	1    0    0    -1  
$EndComp
Connection ~ 16200 4400
Wire Wire Line
	16200 4400 16100 4400
Wire Wire Line
	16200 4400 16300 4400
Wire Wire Line
	15700 4400 15800 4400
Wire Wire Line
	15600 4400 15700 4400
Connection ~ 15700 4400
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C23
U 1 1 6021D6C1
P 15200 3950
F 0 "C23" H 15085 3904 50  0000 R CNN
F 1 "3.3n" H 15085 3995 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 15238 3800 50  0001 C CNN
F 3 "~" H 15200 3950 50  0001 C CNN
	1    15200 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	15200 4100 15200 4400
Wire Wire Line
	16200 4100 16200 4400
Wire Wire Line
	15100 4400 15200 4400
Connection ~ 15200 4400
Wire Wire Line
	15200 4400 15300 4400
Wire Wire Line
	17050 5100 17050 5000
Connection ~ 17050 5000
Wire Wire Line
	16200 4600 16200 5000
Wire Wire Line
	16200 4600 16300 4600
Connection ~ 16200 5000
Wire Wire Line
	15700 5000 16200 5000
Wire Wire Line
	16200 5000 17050 5000
Wire Wire Line
	17050 5400 17050 5550
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R36
U 1 1 60269EFC
P 17050 6650
F 0 "R36" H 17120 6696 50  0000 L CNN
F 1 "1k" H 17120 6605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 16980 6650 50  0001 C CNN
F 3 "~" H 17050 6650 50  0001 C CNN
	1    17050 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	17800 6400 17050 6400
Connection ~ 17050 6400
Wire Wire Line
	17050 6500 17050 6400
Wire Wire Line
	17050 6800 17050 6900
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R37
U 1 1 60269F07
P 17050 7150
F 0 "R37" H 17120 7196 50  0000 L CNN
F 1 "1k" H 17120 7105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 16980 7150 50  0001 C CNN
F 3 "~" H 17050 7150 50  0001 C CNN
	1    17050 7150
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C28
U 1 1 60269F0E
P 15700 6600
F 0 "C28" H 15815 6646 50  0000 L CNN
F 1 "6.8n" H 15815 6555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 15738 6450 50  0001 C CNN
F 3 "~" H 15700 6600 50  0001 C CNN
	1    15700 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	16900 6400 17050 6400
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R26
U 1 1 60269F16
P 15950 6300
F 0 "R26" V 15743 6300 50  0000 C CNN
F 1 "36k" V 15834 6300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 15880 6300 50  0001 C CNN
F 3 "~" H 15950 6300 50  0001 C CNN
	1    15950 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	15700 6450 15700 6300
Wire Wire Line
	15700 6750 15700 6900
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R22
U 1 1 60269F1F
P 15450 6300
F 0 "R22" V 15243 6300 50  0000 C CNN
F 1 "120k" V 15334 6300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 15380 6300 50  0001 C CNN
F 3 "~" H 15450 6300 50  0001 C CNN
	1    15450 6300
	0    1    1    0   
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R16
U 1 1 60269F26
P 14950 6300
F 0 "R16" V 14743 6300 50  0000 C CNN
F 1 "8.2k" V 14834 6300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 14880 6300 50  0001 C CNN
F 3 "~" H 14950 6300 50  0001 C CNN
	1    14950 6300
	0    1    1    0   
$EndComp
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C33
U 1 1 60269F33
P 16200 5850
F 0 "C33" H 16315 5896 50  0000 L CNN
F 1 "2.2n" H 16315 5805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 16238 5700 50  0001 C CNN
F 3 "~" H 16200 5850 50  0001 C CNN
	1    16200 5850
	1    0    0    -1  
$EndComp
Connection ~ 16200 6300
Wire Wire Line
	16200 6300 16100 6300
Wire Wire Line
	16200 6300 16300 6300
Wire Wire Line
	15700 6300 15800 6300
Wire Wire Line
	15600 6300 15700 6300
Connection ~ 15700 6300
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C24
U 1 1 60269F46
P 15200 5850
F 0 "C24" H 15085 5804 50  0000 R CNN
F 1 "3.3n" H 15085 5895 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 15238 5700 50  0001 C CNN
F 3 "~" H 15200 5850 50  0001 C CNN
	1    15200 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	15200 6000 15200 6300
Wire Wire Line
	16200 6000 16200 6300
Wire Wire Line
	15100 6300 15200 6300
Connection ~ 15200 6300
Wire Wire Line
	15200 6300 15300 6300
Wire Wire Line
	17050 7000 17050 6900
Connection ~ 17050 6900
Wire Wire Line
	16200 6500 16200 6900
Wire Wire Line
	16200 6500 16300 6500
Connection ~ 16200 6900
Wire Wire Line
	15700 6900 16200 6900
Wire Wire Line
	16200 6900 17050 6900
Wire Wire Line
	17050 7300 17050 7450
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R38
U 1 1 60295C06
P 17050 8550
F 0 "R38" H 17120 8596 50  0000 L CNN
F 1 "1k" H 17120 8505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 16980 8550 50  0001 C CNN
F 3 "~" H 17050 8550 50  0001 C CNN
	1    17050 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	17800 8300 17050 8300
Connection ~ 17050 8300
Wire Wire Line
	17050 8400 17050 8300
Wire Wire Line
	17050 8700 17050 8800
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R39
U 1 1 60295C11
P 17050 9050
F 0 "R39" H 17120 9096 50  0000 L CNN
F 1 "1k" H 17120 9005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 16980 9050 50  0001 C CNN
F 3 "~" H 17050 9050 50  0001 C CNN
	1    17050 9050
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C29
U 1 1 60295C18
P 15700 8500
F 0 "C29" H 15815 8546 50  0000 L CNN
F 1 "6.8n" H 15815 8455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 15738 8350 50  0001 C CNN
F 3 "~" H 15700 8500 50  0001 C CNN
	1    15700 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	16900 8300 17050 8300
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R27
U 1 1 60295C20
P 15950 8200
F 0 "R27" V 15743 8200 50  0000 C CNN
F 1 "36k" V 15834 8200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 15880 8200 50  0001 C CNN
F 3 "~" H 15950 8200 50  0001 C CNN
	1    15950 8200
	0    1    1    0   
$EndComp
Wire Wire Line
	15700 8350 15700 8200
Wire Wire Line
	15700 8650 15700 8800
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R23
U 1 1 60295C29
P 15450 8200
F 0 "R23" V 15243 8200 50  0000 C CNN
F 1 "120k" V 15334 8200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 15380 8200 50  0001 C CNN
F 3 "~" H 15450 8200 50  0001 C CNN
	1    15450 8200
	0    1    1    0   
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R17
U 1 1 60295C30
P 14950 8200
F 0 "R17" V 14743 8200 50  0000 C CNN
F 1 "8.2k" V 14834 8200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 14880 8200 50  0001 C CNN
F 3 "~" H 14950 8200 50  0001 C CNN
	1    14950 8200
	0    1    1    0   
$EndComp
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C34
U 1 1 60295C3D
P 16200 7750
F 0 "C34" H 16315 7796 50  0000 L CNN
F 1 "2.2n" H 16315 7705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 16238 7600 50  0001 C CNN
F 3 "~" H 16200 7750 50  0001 C CNN
	1    16200 7750
	1    0    0    -1  
$EndComp
Connection ~ 16200 8200
Wire Wire Line
	16200 8200 16100 8200
Wire Wire Line
	16200 8200 16300 8200
Wire Wire Line
	15700 8200 15800 8200
Wire Wire Line
	15600 8200 15700 8200
Connection ~ 15700 8200
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C25
U 1 1 60295C50
P 15200 7750
F 0 "C25" H 15085 7704 50  0000 R CNN
F 1 "3.3n" H 15085 7795 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 15238 7600 50  0001 C CNN
F 3 "~" H 15200 7750 50  0001 C CNN
	1    15200 7750
	-1   0    0    1   
$EndComp
Wire Wire Line
	15200 7900 15200 8200
Wire Wire Line
	16200 7900 16200 8200
Wire Wire Line
	15100 8200 15200 8200
Connection ~ 15200 8200
Wire Wire Line
	15200 8200 15300 8200
Wire Wire Line
	17050 8900 17050 8800
Connection ~ 17050 8800
Wire Wire Line
	16200 8400 16200 8800
Wire Wire Line
	16200 8400 16300 8400
Connection ~ 16200 8800
Wire Wire Line
	15700 8800 16200 8800
Wire Wire Line
	16200 8800 17050 8800
Wire Wire Line
	17050 9200 17050 9350
$Comp
L SolarCarECU-rescue:LM324A-Amplifier_Operational-SolarCarECU-rescue U10
U 4 1 602F7370
P 16600 8300
F 0 "U10" H 16600 8667 50  0000 C CNN
F 1 "LM324A" H 16600 8576 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 16550 8400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 16650 8500 50  0001 C CNN
	4    16600 8300
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:LM324A-Amplifier_Operational-SolarCarECU-rescue U10
U 2 1 5F546B9C
P 16600 4500
F 0 "U10" H 16600 4867 50  0000 C CNN
F 1 "LM324A" H 16600 4776 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 16550 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 16650 4700 50  0001 C CNN
	2    16600 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	17050 7450 16200 7450
Wire Wire Line
	17050 5550 16200 5550
Wire Wire Line
	17050 3650 16200 3650
Wire Wire Line
	15200 3650 15200 3800
Connection ~ 15200 3650
Wire Wire Line
	16200 3650 16200 3800
Connection ~ 16200 3650
Wire Wire Line
	16200 3650 15200 3650
Wire Wire Line
	16200 5550 16200 5700
Connection ~ 16200 5550
Wire Wire Line
	16200 5550 15200 5550
Wire Wire Line
	15200 5550 15200 5700
Connection ~ 15200 5550
Wire Wire Line
	15200 7450 15200 7600
Connection ~ 15200 7450
Wire Wire Line
	16200 7450 16200 7600
Connection ~ 16200 7450
Wire Wire Line
	16200 7450 15200 7450
Text Label 17800 2600 0    50   ~ 0
MOTOR_L_THROTTLE
Text Label 17800 4500 0    50   ~ 0
MOTOR_L_REGEN
Text Label 17800 8300 0    50   ~ 0
MOTOR_R_REGEN
Text Label 17800 6400 0    50   ~ 0
MOTOR_R_THROTTLE
Wire Wire Line
	5250 13700 6250 13700
Wire Wire Line
	5250 13800 6250 13800
Text Label 13800 2500 0    50   ~ 0
PWM_MOTOR_L_THROTTLE
Wire Wire Line
	13800 2500 14800 2500
Text Label 13800 4400 0    50   ~ 0
PWM_MOTOR_L_REGEN
Wire Wire Line
	13800 4400 14800 4400
Text Label 13800 6300 0    50   ~ 0
PWM_MOTOR_R_THROTTLE
Wire Wire Line
	13800 6300 14800 6300
Text Label 13800 8200 0    50   ~ 0
PWM_MOTOR_R_REGEN
Wire Wire Line
	14800 8200 13800 8200
Text Label 3000 13500 2    50   ~ 0
PWM_MOTOR_L_THROTTLE
Text Label 3000 13600 2    50   ~ 0
PWM_MOTOR_L_REGEN
Text Label 3000 13800 2    50   ~ 0
PWM_MOTOR_R_THROTTLE
Text Label 3000 13700 2    50   ~ 0
PWM_MOTOR_R_REGEN
Wire Wire Line
	3000 13700 3250 13700
Wire Wire Line
	3000 13800 3250 13800
Wire Wire Line
	3000 13600 3250 13600
Wire Wire Line
	3000 13500 3250 13500
$Comp
L SolarCarECU-rescue:GNDA-power-SolarCarECU-rescue #PWR0147
U 1 1 60CB1405
P 14500 3750
F 0 "#PWR0147" H 14500 3500 50  0001 C CNN
F 1 "GNDA" H 14505 3577 50  0000 C CNN
F 2 "" H 14500 3750 50  0001 C CNN
F 3 "" H 14500 3750 50  0001 C CNN
	1    14500 3750
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:GNDA-power-SolarCarECU-rescue #PWR0148
U 1 1 60CB18EE
P 14500 5650
F 0 "#PWR0148" H 14500 5400 50  0001 C CNN
F 1 "GNDA" H 14505 5477 50  0000 C CNN
F 2 "" H 14500 5650 50  0001 C CNN
F 3 "" H 14500 5650 50  0001 C CNN
	1    14500 5650
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:GNDA-power-SolarCarECU-rescue #PWR0149
U 1 1 60CB1A5D
P 14500 7550
F 0 "#PWR0149" H 14500 7300 50  0001 C CNN
F 1 "GNDA" H 14505 7377 50  0000 C CNN
F 2 "" H 14500 7550 50  0001 C CNN
F 3 "" H 14500 7550 50  0001 C CNN
	1    14500 7550
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:GNDA-power-SolarCarECU-rescue #PWR0150
U 1 1 60CB1B1A
P 17050 9350
F 0 "#PWR0150" H 17050 9100 50  0001 C CNN
F 1 "GNDA" H 17055 9177 50  0000 C CNN
F 2 "" H 17050 9350 50  0001 C CNN
F 3 "" H 17050 9350 50  0001 C CNN
	1    17050 9350
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:GNDA-power-SolarCarECU-rescue #PWR0151
U 1 1 60CB1BD7
P 14500 1600
F 0 "#PWR0151" H 14500 1350 50  0001 C CNN
F 1 "GNDA" H 14505 1427 50  0000 C CNN
F 2 "" H 14500 1600 50  0001 C CNN
F 3 "" H 14500 1600 50  0001 C CNN
	1    14500 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	16800 1550 16200 1550
Wire Wire Line
	14500 1550 14500 1600
Wire Wire Line
	16800 1550 16800 1900
Wire Wire Line
	15200 1550 15200 1900
Connection ~ 15200 1550
Wire Wire Line
	15200 1550 14500 1550
Wire Wire Line
	16200 1550 16200 1900
Connection ~ 16200 1550
Wire Wire Line
	16200 1550 15200 1550
Wire Wire Line
	14500 3750 14500 3650
Wire Wire Line
	14500 3650 15200 3650
Wire Wire Line
	14500 5550 14500 5650
Wire Wire Line
	14500 5550 15200 5550
Wire Wire Line
	14500 7450 15200 7450
Wire Wire Line
	14500 7450 14500 7550
$Comp
L SolarCarECU-rescue:GNDA-power-SolarCarECU-rescue #PWR0152
U 1 1 60E560BB
P 14300 13450
F 0 "#PWR0152" H 14300 13200 50  0001 C CNN
F 1 "GNDA" H 14305 13277 50  0000 C CNN
F 2 "" H 14300 13450 50  0001 C CNN
F 3 "" H 14300 13450 50  0001 C CNN
	1    14300 13450
	1    0    0    -1  
$EndComp
Wire Wire Line
	14300 13450 14300 13350
Wire Wire Line
	14300 13350 14550 13350
Connection ~ 14550 13350
Wire Wire Line
	14550 13350 14850 13350
Connection ~ 14850 13350
Wire Wire Line
	14850 13350 15250 13350
Connection ~ 15250 13350
Wire Wire Line
	15250 13350 15550 13350
Connection ~ 15550 13350
Wire Wire Line
	15550 13350 15950 13350
Connection ~ 15950 13350
Wire Wire Line
	15950 13350 16250 13350
Connection ~ 16250 13350
Wire Wire Line
	16250 13350 16600 13350
Connection ~ 16600 13350
Wire Wire Line
	16600 13350 16900 13350
Connection ~ 16900 13350
Wire Wire Line
	16900 13350 17250 13350
Connection ~ 17250 13350
Wire Wire Line
	17250 13350 17600 13350
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C16
U 1 1 60F1FBD2
P 9750 5100
F 0 "C16" V 9498 5100 50  0000 C CNN
F 1 "0.47u" V 9589 5100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9788 4950 50  0001 C CNN
F 3 "~" H 9750 5100 50  0001 C CNN
	1    9750 5100
	0    1    1    0   
$EndComp
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0153
U 1 1 60F1FBD9
P 9450 5200
F 0 "#PWR0153" H 9450 4950 50  0001 C CNN
F 1 "GND" H 9455 5027 50  0000 C CNN
F 2 "" H 9450 5200 50  0001 C CNN
F 3 "" H 9450 5200 50  0001 C CNN
	1    9450 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 5200 9450 5100
Wire Wire Line
	9450 5100 9600 5100
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C15
U 1 1 60F51E57
P 9750 2500
F 0 "C15" V 9498 2500 50  0000 C CNN
F 1 "0.47u" V 9589 2500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9788 2350 50  0001 C CNN
F 3 "~" H 9750 2500 50  0001 C CNN
	1    9750 2500
	0    1    1    0   
$EndComp
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0154
U 1 1 60F51E5E
P 9450 2600
F 0 "#PWR0154" H 9450 2350 50  0001 C CNN
F 1 "GND" H 9455 2427 50  0000 C CNN
F 2 "" H 9450 2600 50  0001 C CNN
F 3 "" H 9450 2600 50  0001 C CNN
	1    9450 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 2600 9450 2500
Wire Wire Line
	9450 2500 9600 2500
Wire Wire Line
	9900 2500 10200 2500
Connection ~ 10200 2500
Wire Wire Line
	10200 2500 10200 2600
Wire Wire Line
	9900 5100 10200 5100
Connection ~ 10200 5100
Wire Wire Line
	10200 5100 10200 5200
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C18
U 1 1 612287E9
P 10750 5100
F 0 "C18" V 10498 5100 50  0000 C CNN
F 1 "4.7u" V 10589 5100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10788 4950 50  0001 C CNN
F 3 "~" H 10750 5100 50  0001 C CNN
	1    10750 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	10400 5100 10600 5100
Connection ~ 10400 5100
Wire Wire Line
	10400 5100 10400 5200
Wire Wire Line
	10900 5100 11000 5100
Wire Wire Line
	11000 5100 11000 5200
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0155
U 1 1 61294BE1
P 11000 4600
F 0 "#PWR0155" H 11000 4350 50  0001 C CNN
F 1 "GND" H 11005 4427 50  0000 C CNN
F 2 "" H 11000 4600 50  0001 C CNN
F 3 "" H 11000 4600 50  0001 C CNN
	1    11000 4600
	-1   0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0156
U 1 1 61294DDE
P 11050 2600
F 0 "#PWR0156" H 11050 2350 50  0001 C CNN
F 1 "GND" H 11055 2427 50  0000 C CNN
F 2 "" H 11050 2600 50  0001 C CNN
F 3 "" H 11050 2600 50  0001 C CNN
	1    11050 2600
	-1   0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C19
U 1 1 61294DE4
P 10800 2500
F 0 "C19" V 10548 2500 50  0000 C CNN
F 1 "4.7u" V 10639 2500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10838 2350 50  0001 C CNN
F 3 "~" H 10800 2500 50  0001 C CNN
	1    10800 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	10950 2500 11050 2500
Wire Wire Line
	11050 2500 11050 2600
Wire Wire Line
	10650 2500 10400 2500
Connection ~ 10400 2500
Wire Wire Line
	10400 2500 10400 2600
Wire Wire Line
	21050 9100 21200 9100
Wire Wire Line
	21200 8900 21050 8900
Wire Wire Line
	21050 8800 21200 8800
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0157
U 1 1 6168AF3B
P 21050 10150
F 0 "#PWR0157" H 21050 9900 50  0001 C CNN
F 1 "GND" H 21055 9977 50  0000 C CNN
F 2 "" H 21050 10150 50  0001 C CNN
F 3 "" H 21050 10150 50  0001 C CNN
	1    21050 10150
	1    0    0    -1  
$EndComp
Wire Wire Line
	21050 8600 21050 8700
Wire Wire Line
	21050 8700 21200 8700
Text Label 20600 9400 2    50   ~ 0
UART_1_RX
Text Label 20600 9500 2    50   ~ 0
UART_1_TX
Wire Wire Line
	21050 10000 21050 10150
$Comp
L SolarCarECU-rescue:+5V-power-SolarCarECU-rescue #PWR0159
U 1 1 61C003E8
P 21050 8600
F 0 "#PWR0159" H 21050 8450 50  0001 C CNN
F 1 "+5V" H 21065 8773 50  0000 C CNN
F 2 "" H 21050 8600 50  0001 C CNN
F 3 "" H 21050 8600 50  0001 C CNN
	1    21050 8600
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:GNDA-power-SolarCarECU-rescue #PWR0161
U 1 1 61C3B6A5
P 20200 7650
F 0 "#PWR0161" H 20200 7400 50  0001 C CNN
F 1 "GNDA" H 20205 7477 50  0000 C CNN
F 2 "" H 20200 7650 50  0001 C CNN
F 3 "" H 20200 7650 50  0001 C CNN
	1    20200 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	20450 3450 21250 3450
Wire Wire Line
	20400 4700 21250 4700
$Comp
L SolarCarECU-rescue:GNDA-power-SolarCarECU-rescue #PWR0162
U 1 1 61D5C3B6
P 20400 5750
F 0 "#PWR0162" H 20400 5500 50  0001 C CNN
F 1 "GNDA" H 20405 5577 50  0000 C CNN
F 2 "" H 20400 5750 50  0001 C CNN
F 3 "" H 20400 5750 50  0001 C CNN
	1    20400 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	20400 5750 21250 5750
$Comp
L SolarCarECU-rescue:D_Schottky-Device-SolarCarECU-rescue D1
U 1 1 61EEC623
P 20600 1750
F 0 "D1" H 20600 1534 50  0000 C CNN
F 1 "D_Schottky" H 20600 1625 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 20600 1750 50  0001 C CNN
F 3 "~" H 20600 1750 50  0001 C CNN
	1    20600 1750
	1    0    0    1   
$EndComp
Wire Wire Line
	20750 1750 21100 1750
Text Label 5500 10400 0    50   ~ 0
USB_MASTER-SLAVE_SEL
Text Notes 19050 15750 0    50   ~ 0
UVA SOLAR CAR PRIMARY ECU\n
Text Notes 22300 15900 0    50   ~ 0
V0.0 (alpha)
Text Notes 19850 15900 0    50   ~ 0
2/9/2019\n
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R10
U 1 1 5C6D04F3
P 11200 13300
F 0 "R10" H 11270 13346 50  0000 L CNN
F 1 "120" H 11270 13255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 11130 13300 50  0001 C CNN
F 3 "~" H 11200 13300 50  0001 C CNN
	1    11200 13300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 13150 10900 13200
Wire Wire Line
	10750 13200 10900 13200
Connection ~ 11200 13150
Wire Wire Line
	11200 13150 10900 13150
Wire Wire Line
	10900 13400 10900 13450
Wire Wire Line
	10900 13450 11200 13450
Wire Wire Line
	10750 13400 10900 13400
Connection ~ 11200 13450
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R11
U 1 1 5C74990B
P 11250 11650
F 0 "R11" H 11320 11696 50  0000 L CNN
F 1 "120" H 11320 11605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 11180 11650 50  0001 C CNN
F 3 "~" H 11250 11650 50  0001 C CNN
	1    11250 11650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 11500 10950 11550
Connection ~ 11250 11500
Wire Wire Line
	11250 11500 10950 11500
Wire Wire Line
	10950 11750 10950 11800
Wire Wire Line
	10950 11800 11250 11800
Connection ~ 11250 11800
Wire Wire Line
	10750 11750 10950 11750
Wire Wire Line
	10750 11550 10950 11550
$Comp
L SolarCarECU-rescue:EL7202CN-Driver_FET-SolarCarECU-rescue U3
U 1 1 5C78DD62
P 3950 8550
F 0 "U3" H 3950 9128 50  0000 C CNN
F 1 "EL7202CN" H 3950 9037 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3950 8250 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/el72/el7202-12-22.pdf" H 3950 8250 50  0001 C CNN
	1    3950 8550
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0163
U 1 1 5C78E0D0
P 3950 9100
F 0 "#PWR0163" H 3950 8850 50  0001 C CNN
F 1 "GND" H 3955 8927 50  0000 C CNN
F 2 "" H 3950 9100 50  0001 C CNN
F 3 "" H 3950 9100 50  0001 C CNN
	1    3950 9100
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:QM6015D-Transistor_FET-SolarCarECU-rescue Q4
U 1 1 5C78E978
P 4850 8000
F 0 "Q4" V 5055 8046 50  0000 L CNN
F 1 "QM6015D" V 4750 8050 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 5050 7925 50  0001 L CIN
F 3 "http://www.jaolen.com/images/pdf/QM6015D.pdf" V 4850 8000 50  0001 L CNN
	1    4850 8000
	0    1    -1   0   
$EndComp
$Comp
L SolarCarECU-rescue:QM6015D-Transistor_FET-SolarCarECU-rescue Q6
U 1 1 5C907AA4
P 5300 8450
F 0 "Q6" V 5505 8496 50  0000 L CNN
F 1 "QM6015D" V 5200 8500 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 5500 8375 50  0001 L CIN
F 3 "http://www.jaolen.com/images/pdf/QM6015D.pdf" V 5300 8450 50  0001 L CNN
	1    5300 8450
	0    1    -1   0   
$EndComp
Wire Wire Line
	3950 8150 3950 7900
Connection ~ 3950 7900
Wire Wire Line
	2750 7250 2750 7400
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0164
U 1 1 5C9C7A14
P 2750 7400
F 0 "#PWR0164" H 2750 7150 50  0001 C CNN
F 1 "GND" H 2755 7227 50  0000 C CNN
F 2 "" H 2750 7400 50  0001 C CNN
F 3 "" H 2750 7400 50  0001 C CNN
	1    2750 7400
	1    0    0    -1  
$EndComp
Text Label 2850 8650 0    50   ~ 0
LV_BLINKERS
Text Label 2850 8450 0    50   ~ 0
LV_BRAKELIGHTS
Wire Wire Line
	2850 8450 3550 8450
Wire Wire Line
	2850 8650 3550 8650
Wire Wire Line
	4850 8200 4850 8450
Wire Wire Line
	5100 8350 4400 8350
Wire Wire Line
	4400 8350 4400 7900
Connection ~ 4400 7900
Text Label 5900 6050 0    50   ~ 0
HEADLIGHTS
Text Label 5900 7900 0    50   ~ 0
BRAKELIGHTS
Text Label 5900 8350 0    50   ~ 0
BLINKERS
Wire Wire Line
	5500 8350 5900 8350
Wire Wire Line
	3950 8950 3950 9100
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C3
U 1 1 5CD7616E
P 3500 7550
F 0 "C3" H 3615 7596 50  0000 L CNN
F 1 "0.47u" H 3615 7505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3538 7400 50  0001 C CNN
F 3 "~" H 3500 7550 50  0001 C CNN
	1    3500 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 7250 3500 7400
Wire Wire Line
	3500 7700 3500 7900
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C6
U 1 1 5CD76177
P 3950 7550
F 0 "C6" H 4065 7596 50  0000 L CNN
F 1 "4.7u" H 4065 7505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3988 7400 50  0001 C CNN
F 3 "~" H 3950 7550 50  0001 C CNN
	1    3950 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 7700 3950 7900
Wire Wire Line
	3950 7400 3950 7250
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C8
U 1 1 5CD76181
P 4400 7550
F 0 "C8" H 4515 7596 50  0000 L CNN
F 1 "47u" H 4515 7505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4438 7400 50  0001 C CNN
F 3 "~" H 4400 7550 50  0001 C CNN
	1    4400 7550
	1    0    0    -1  
$EndComp
Connection ~ 3950 7250
Wire Wire Line
	4400 7250 4400 7400
Wire Wire Line
	4400 7700 4400 7900
Wire Wire Line
	2750 7250 3500 7250
Wire Wire Line
	3500 7900 3950 7900
Wire Wire Line
	3500 7250 3950 7250
Connection ~ 3500 7250
Wire Wire Line
	3950 7250 4400 7250
Wire Wire Line
	3950 7900 4400 7900
Wire Wire Line
	4400 7900 4650 7900
Wire Wire Line
	5900 7900 5050 7900
$Comp
L SolarCarECU-rescue:EL7202CN-Driver_FET-SolarCarECU-rescue U2
U 1 1 5D0CF265
P 3950 6250
F 0 "U2" H 3950 6828 50  0000 C CNN
F 1 "EL7202CN" H 3950 6737 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3950 5950 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/el72/el7202-12-22.pdf" H 3950 5950 50  0001 C CNN
	1    3950 6250
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0165
U 1 1 5D0CF26C
P 3950 6800
F 0 "#PWR0165" H 3950 6550 50  0001 C CNN
F 1 "GND" H 3955 6627 50  0000 C CNN
F 2 "" H 3950 6800 50  0001 C CNN
F 3 "" H 3950 6800 50  0001 C CNN
	1    3950 6800
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:QM6015D-Transistor_FET-SolarCarECU-rescue Q3
U 1 1 5D0CF272
P 4850 5700
F 0 "Q3" V 5055 5746 50  0000 L CNN
F 1 "QM6015D" V 4750 5750 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 5050 5625 50  0001 L CIN
F 3 "http://www.jaolen.com/images/pdf/QM6015D.pdf" V 4850 5700 50  0001 L CNN
	1    4850 5700
	0    1    -1   0   
$EndComp
$Comp
L SolarCarECU-rescue:QM6015D-Transistor_FET-SolarCarECU-rescue Q5
U 1 1 5D0CF279
P 5300 6150
F 0 "Q5" V 5505 6196 50  0000 L CNN
F 1 "QM6015D" V 5200 6200 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 5500 6075 50  0001 L CIN
F 3 "http://www.jaolen.com/images/pdf/QM6015D.pdf" V 5300 6150 50  0001 L CNN
	1    5300 6150
	0    1    -1   0   
$EndComp
Wire Wire Line
	3950 5850 3950 5600
Connection ~ 3950 5600
Wire Wire Line
	2750 4950 2750 5100
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0166
U 1 1 5D0CF283
P 2750 5100
F 0 "#PWR0166" H 2750 4850 50  0001 C CNN
F 1 "GND" H 2755 4927 50  0000 C CNN
F 2 "" H 2750 5100 50  0001 C CNN
F 3 "" H 2750 5100 50  0001 C CNN
	1    2750 5100
	1    0    0    -1  
$EndComp
Text Label 2850 6350 0    50   ~ 0
LV_HEADLIGHTS
Wire Wire Line
	2850 6150 3550 6150
Wire Wire Line
	2850 6350 3550 6350
Wire Wire Line
	4850 5900 4850 6150
Wire Wire Line
	5100 6050 4400 6050
Wire Wire Line
	4400 6050 4400 5600
Connection ~ 4400 5600
Wire Wire Line
	5500 6050 5900 6050
Wire Wire Line
	3950 6650 3950 6800
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C2
U 1 1 5D0CF296
P 3500 5250
F 0 "C2" H 3615 5296 50  0000 L CNN
F 1 "0.47u" H 3615 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3538 5100 50  0001 C CNN
F 3 "~" H 3500 5250 50  0001 C CNN
	1    3500 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4950 3500 5100
Wire Wire Line
	3500 5400 3500 5600
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C5
U 1 1 5D0CF29F
P 3950 5250
F 0 "C5" H 4065 5296 50  0000 L CNN
F 1 "4.7u" H 4065 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3988 5100 50  0001 C CNN
F 3 "~" H 3950 5250 50  0001 C CNN
	1    3950 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 5400 3950 5600
Wire Wire Line
	3950 5100 3950 4950
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C7
U 1 1 5D0CF2A8
P 4400 5250
F 0 "C7" H 4515 5296 50  0000 L CNN
F 1 "47u" H 4515 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4438 5100 50  0001 C CNN
F 3 "~" H 4400 5250 50  0001 C CNN
	1    4400 5250
	1    0    0    -1  
$EndComp
Connection ~ 3950 4950
Wire Wire Line
	4400 4950 4400 5100
Wire Wire Line
	4400 5400 4400 5600
Wire Wire Line
	2750 4950 3500 4950
Wire Wire Line
	3500 5600 3950 5600
Wire Wire Line
	3500 4950 3950 4950
Wire Wire Line
	3950 4950 4400 4950
Wire Wire Line
	3950 5600 4400 5600
Wire Wire Line
	4400 5600 4650 5600
Wire Wire Line
	5900 5600 5050 5600
Text Label 5900 5600 0    50   ~ 0
HORN
Text Label 2850 6150 0    50   ~ 0
LV_HORN
Wire Wire Line
	10400 8100 10400 8150
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0167
U 1 1 5D246BBF
P 11150 8250
F 0 "#PWR0167" H 11150 8000 50  0001 C CNN
F 1 "GND" H 11155 8077 50  0000 C CNN
F 2 "" H 11150 8250 50  0001 C CNN
F 3 "" H 11150 8250 50  0001 C CNN
	1    11150 8250
	-1   0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C20
U 1 1 5D246BC5
P 10900 8150
F 0 "C20" V 10648 8150 50  0000 C CNN
F 1 "4.7u" V 10739 8150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10938 8000 50  0001 C CNN
F 3 "~" H 10900 8150 50  0001 C CNN
	1    10900 8150
	0    1    1    0   
$EndComp
Wire Wire Line
	11050 8150 11150 8150
Wire Wire Line
	11150 8150 11150 8250
Wire Wire Line
	10750 8150 10400 8150
Connection ~ 10400 8150
Wire Wire Line
	10400 8150 10400 8250
Text Label 5500 10600 0    50   ~ 0
LV_HORN
Wire Wire Line
	2750 11900 3250 11900
Wire Wire Line
	2750 12000 3250 12000
Wire Wire Line
	2750 12100 3250 12100
Wire Wire Line
	2750 12200 3250 12200
Wire Wire Line
	2750 12300 3250 12300
Connection ~ 3500 4950
Connection ~ 5200 3300
Connection ~ 3500 3300
Wire Wire Line
	2300 2550 2300 3300
Wire Wire Line
	2300 3300 2300 3350
Connection ~ 2300 3300
Wire Wire Line
	11000 4200 11000 4000
Connection ~ 11000 4200
$Comp
L SolarCarECU-rescue:Screw_Terminal_01x14-Connector-SolarCarECU-rescue J7
U 1 1 5CA6D055
P 21400 9300
F 0 "J7" H 21480 9292 50  0000 L CNN
F 1 "Screw_Terminal_01x14" H 21480 9201 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x14_P2.54mm_Vertical" H 21400 9300 50  0001 C CNN
F 3 "~" H 21400 9300 50  0001 C CNN
	1    21400 9300
	1    0    0    -1  
$EndComp
Wire Wire Line
	21050 9000 21200 9000
Connection ~ 3500 2450
Connection ~ 4550 2450
$Comp
L power:+12V #PWR0160
U 1 1 5C8BE540
P 4550 1900
F 0 "#PWR0160" H 4550 1750 50  0001 C CNN
F 1 "+12V" H 4565 2073 50  0000 C CNN
F 2 "" H 4550 1900 50  0001 C CNN
F 3 "" H 4550 1900 50  0001 C CNN
	1    4550 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x05 J3
U 1 1 5C84D545
P 21450 3250
F 0 "J3" H 21530 3292 50  0000 L CNN
F 1 "Screw_Terminal_01x05" H 21530 3201 50  0000 L CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_5-G-5.08_1x05_P5.08mm_Vertical" H 21450 3250 50  0001 C CNN
F 3 "~" H 21450 3250 50  0001 C CNN
	1    21450 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	21250 3050 20450 3050
Text Label 20450 3050 0    50   ~ 0
HORN
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R45
U 1 1 5C9BA1F4
P 17950 13050
F 0 "R45" H 18020 13096 50  0000 L CNN
F 1 "R" H 18020 13005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 17880 13050 50  0001 C CNN
F 3 "~" H 17950 13050 50  0001 C CNN
	1    17950 13050
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R44
U 1 1 5C9BA1FB
P 17950 11850
F 0 "R44" H 18020 11896 50  0000 L CNN
F 1 "R" H 18020 11805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 17880 11850 50  0001 C CNN
F 3 "~" H 17950 11850 50  0001 C CNN
	1    17950 11850
	1    0    0    -1  
$EndComp
Wire Wire Line
	17950 13200 17950 13350
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C39
U 1 1 5C9BA207
P 18300 13050
F 0 "C39" H 18415 13096 50  0000 L CNN
F 1 "C" H 18415 13005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 18338 12900 50  0001 C CNN
F 3 "~" H 18300 13050 50  0001 C CNN
	1    18300 13050
	1    0    0    -1  
$EndComp
Wire Wire Line
	18300 13200 18300 13350
Wire Wire Line
	17600 13350 17950 13350
Connection ~ 17950 13350
Wire Wire Line
	17950 13350 18300 13350
Wire Wire Line
	17950 11100 14350 11100
Wire Wire Line
	17950 11100 17950 11700
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R47
U 1 1 5CA55688
P 18650 13050
F 0 "R47" H 18720 13096 50  0000 L CNN
F 1 "R" H 18720 13005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 18580 13050 50  0001 C CNN
F 3 "~" H 18650 13050 50  0001 C CNN
	1    18650 13050
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R46
U 1 1 5CA5568F
P 18650 11850
F 0 "R46" H 18720 11896 50  0000 L CNN
F 1 "R" H 18720 11805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 18580 11850 50  0001 C CNN
F 3 "~" H 18650 11850 50  0001 C CNN
	1    18650 11850
	1    0    0    -1  
$EndComp
Wire Wire Line
	18650 13200 18650 13350
$Comp
L SolarCarECU-rescue:C-Device-SolarCarECU-rescue C40
U 1 1 5CA5569A
P 19000 13050
F 0 "C40" H 19115 13096 50  0000 L CNN
F 1 "C" H 19115 13005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 19038 12900 50  0001 C CNN
F 3 "~" H 19000 13050 50  0001 C CNN
	1    19000 13050
	1    0    0    -1  
$EndComp
Wire Wire Line
	19000 13200 19000 13350
Wire Wire Line
	18300 13350 18650 13350
Connection ~ 18650 13350
Wire Wire Line
	18650 13350 19000 13350
Wire Wire Line
	18650 11000 18650 11700
Wire Wire Line
	18650 11000 14350 11000
Connection ~ 17600 13350
Connection ~ 18300 13350
Wire Wire Line
	14350 12300 17250 12300
Wire Wire Line
	14350 12600 15250 12600
Wire Wire Line
	14350 12500 15950 12500
Wire Wire Line
	14350 12400 16600 12400
Wire Wire Line
	14550 12000 14550 12700
Wire Wire Line
	15250 12000 15250 12600
Wire Wire Line
	15950 12000 15950 12500
Wire Wire Line
	16600 12000 16600 12400
Wire Wire Line
	17250 12000 17250 12300
Wire Wire Line
	17950 12200 18300 12200
Wire Wire Line
	17950 12200 17950 12900
Wire Wire Line
	18300 12200 18300 12900
Wire Wire Line
	17950 12000 17950 12200
Connection ~ 17950 12200
Wire Wire Line
	18650 12100 19000 12100
Wire Wire Line
	18650 12100 18650 12900
Wire Wire Line
	19000 12100 19000 12900
Wire Wire Line
	18650 12000 18650 12100
Connection ~ 18650 12100
Wire Wire Line
	17950 12200 14350 12200
Wire Wire Line
	18650 12100 14350 12100
Text Label 14350 11000 2    50   ~ 0
MOTOR_L_METER
Text Label 14350 11100 2    50   ~ 0
MOTOR_R_METER
Text Label 14350 12100 2    50   ~ 0
LV_MOTOR_L_METER
Text Label 14350 12200 2    50   ~ 0
LV_MOTOR_R_METER
Text Label 5300 13300 0    50   ~ 0
LV_MOTOR_L_METER
Text Label 5300 13400 0    50   ~ 0
LV_MOTOR_R_METER
Wire Wire Line
	5250 11100 5500 11100
Wire Wire Line
	5250 11000 5500 11000
Wire Wire Line
	5250 10900 5500 10900
Wire Wire Line
	5250 10800 5500 10800
Wire Wire Line
	5250 10700 5500 10700
Text Label 5500 11100 0    50   ~ 0
LV_MOTOR_L_REGEN_EN
Text Label 5500 11200 0    50   ~ 0
LV_MOTOR_L_ECO_EN
Text Label 5500 11000 0    50   ~ 0
LV_MOTOR_R_REV_EN
Text Label 3000 13900 2    50   ~ 0
LV_MOTOR_R_ECO_EN
Text Label 5500 10800 0    50   ~ 0
LV_MOTOR_R_REGEN_EN
Text Label 5500 10900 0    50   ~ 0
LV_MOTOR_R_FWD_EN
Wire Wire Line
	5250 11200 5500 11200
Wire Wire Line
	3000 13900 3250 13900
Text Label 5500 12100 0    50   ~ 0
LV_MOTOR_L_FWD_EN
Text Label 5500 10700 0    50   ~ 0
LV_MOTOR_L_REV_EN
$Comp
L power:+12V #PWR0169
U 1 1 5CA2EE3B
P 3150 5600
F 0 "#PWR0169" H 3150 5450 50  0001 C CNN
F 1 "+12V" H 3165 5773 50  0000 C CNN
F 2 "" H 3150 5600 50  0001 C CNN
F 3 "" H 3150 5600 50  0001 C CNN
	1    3150 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 5600 3500 5600
Connection ~ 3500 5600
$Comp
L power:+12V #PWR0170
U 1 1 5CA822B5
P 3150 7900
F 0 "#PWR0170" H 3150 7750 50  0001 C CNN
F 1 "+12V" H 3165 8073 50  0000 C CNN
F 2 "" H 3150 7900 50  0001 C CNN
F 3 "" H 3150 7900 50  0001 C CNN
	1    3150 7900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 7900 3500 7900
Connection ~ 3500 7900
$Comp
L Device:R R48
U 1 1 5CAD66BD
P 4600 6150
F 0 "R48" V 4700 6050 50  0000 C CNN
F 1 "4.7" V 4700 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4530 6150 50  0001 C CNN
F 3 "~" H 4600 6150 50  0001 C CNN
	1    4600 6150
	0    1    1    0   
$EndComp
$Comp
L Device:R R49
U 1 1 5CAD6840
P 4600 6350
F 0 "R49" V 4700 6250 50  0000 C CNN
F 1 "4.7" V 4700 6450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4530 6350 50  0001 C CNN
F 3 "~" H 4600 6350 50  0001 C CNN
	1    4600 6350
	0    1    1    0   
$EndComp
$Comp
L Device:R R50
U 1 1 5CAD694E
P 4600 8450
F 0 "R50" V 4700 8350 50  0000 C CNN
F 1 "4.7" V 4700 8550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4530 8450 50  0001 C CNN
F 3 "~" H 4600 8450 50  0001 C CNN
	1    4600 8450
	0    1    1    0   
$EndComp
$Comp
L Device:R R51
U 1 1 5CAD6A66
P 4600 8650
F 0 "R51" V 4700 8550 50  0000 C CNN
F 1 "4.7" V 4700 8750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4530 8650 50  0001 C CNN
F 3 "~" H 4600 8650 50  0001 C CNN
	1    4600 8650
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 8450 4850 8450
Wire Wire Line
	4750 8650 5300 8650
Wire Wire Line
	4450 8450 4350 8450
Wire Wire Line
	4350 8650 4450 8650
Wire Wire Line
	4350 6150 4450 6150
Wire Wire Line
	4350 6350 4450 6350
Wire Wire Line
	4750 6150 4850 6150
Wire Wire Line
	4750 6350 5300 6350
Text Label 21050 8800 2    50   ~ 0
CAN0_L
Text Label 11850 11800 2    50   ~ 0
CAN0_L
Wire Wire Line
	11250 11800 11850 11800
Wire Wire Line
	11250 11500 11850 11500
Text Label 11850 11500 2    50   ~ 0
CAN0_H
Wire Wire Line
	11200 13150 11800 13150
Wire Wire Line
	11200 13450 11800 13450
Text Label 11800 13150 2    50   ~ 0
CAN1_H
Text Label 11800 13450 2    50   ~ 0
CAN1_L
Text Label 21050 8900 2    50   ~ 0
CAN0_H
Text Label 21050 9000 2    50   ~ 0
CAN1_L
Text Label 21050 9100 2    50   ~ 0
CAN1_H
Text Label 2750 11300 2    50   ~ 0
UART_3_TX
Text Label 2750 11200 2    50   ~ 0
UART_3_RX
Text Label 5500 11400 0    50   ~ 0
UART_6_RX
Text Label 5500 11300 0    50   ~ 0
UART_6_TX
Wire Wire Line
	5500 11300 5250 11300
Wire Wire Line
	5250 11400 5500 11400
Wire Wire Line
	5250 11700 5500 11700
Wire Wire Line
	5250 11800 5500 11800
Wire Wire Line
	5250 11900 5500 11900
Wire Wire Line
	5250 12000 5500 12000
Wire Wire Line
	5250 12100 5500 12100
Wire Wire Line
	5250 12200 5500 12200
Wire Wire Line
	5250 12300 5500 12300
Text Label 20600 9600 2    50   ~ 0
UART_3_RX
Text Label 20600 9700 2    50   ~ 0
UART_3_TX
Text Label 20600 9800 2    50   ~ 0
UART_6_RX
Text Label 20600 9900 2    50   ~ 0
UART_6_TX
Wire Wire Line
	5250 10400 5500 10400
Wire Wire Line
	5250 10500 5500 10500
Wire Wire Line
	5250 10600 5500 10600
Wire Wire Line
	2750 11200 3250 11200
Wire Wire Line
	2750 11300 3250 11300
Wire Wire Line
	1800 11800 3250 11800
Wire Wire Line
	2750 11500 3250 11500
Wire Wire Line
	2750 11600 3250 11600
Wire Wire Line
	2750 11700 3250 11700
Text Label 2750 12600 2    50   ~ 0
UART_4_RX
Text Label 2750 12700 2    50   ~ 0
UART_4_TX
Wire Wire Line
	1850 12850 1850 12900
Wire Wire Line
	1850 12900 3250 12900
Wire Wire Line
	2750 12600 3250 12600
Wire Wire Line
	2750 12700 3250 12700
Wire Wire Line
	3250 12800 2150 12800
Wire Wire Line
	2150 12800 2150 12600
Wire Wire Line
	2150 12600 1350 12600
$Comp
L Device:Battery_Cell BT1
U 1 1 5D5D2FC8
P 1350 13450
F 0 "BT1" H 1468 13546 50  0000 L CNN
F 1 "Battery_Cell" H 1468 13455 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_1060_1x2032" V 1350 13510 50  0001 C CNN
F 3 "~" V 1350 13510 50  0001 C CNN
	1    1350 13450
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:GND-power-SolarCarECU-rescue #PWR0158
U 1 1 5D5D30E8
P 1350 13650
F 0 "#PWR0158" H 1350 13400 50  0001 C CNN
F 1 "GND" H 1355 13477 50  0000 C CNN
F 2 "" H 1350 13650 50  0001 C CNN
F 3 "" H 1350 13650 50  0001 C CNN
	1    1350 13650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 13650 1350 13550
Wire Wire Line
	1850 13000 3250 13000
Wire Wire Line
	1350 12600 1350 13250
Text Label 21050 9300 2    50   ~ 0
SDA_0
Text Label 21050 9200 2    50   ~ 0
SCL_0
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R53
U 1 1 5D96F75D
P 20500 9000
F 0 "R53" H 20570 9046 50  0000 L CNN
F 1 "1k" H 20570 8955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 20430 9000 50  0001 C CNN
F 3 "~" H 20500 9000 50  0001 C CNN
	1    20500 9000
	1    0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R52
U 1 1 5D96F989
P 20250 9000
F 0 "R52" H 20320 9046 50  0000 L CNN
F 1 "1k" H 20320 8955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 20180 9000 50  0001 C CNN
F 3 "~" H 20250 9000 50  0001 C CNN
	1    20250 9000
	1    0    0    -1  
$EndComp
Wire Wire Line
	21050 8700 20500 8700
Wire Wire Line
	20500 8700 20500 8850
Connection ~ 21050 8700
Wire Wire Line
	20500 8700 20250 8700
Wire Wire Line
	20250 8700 20250 8850
Connection ~ 20500 8700
Wire Wire Line
	20500 9150 20500 9200
Wire Wire Line
	20500 9200 21200 9200
Wire Wire Line
	20250 9300 20250 9150
Wire Wire Line
	20250 9300 21200 9300
Wire Wire Line
	21050 9400 21200 9400
Wire Wire Line
	21050 9500 21200 9500
Wire Wire Line
	21050 9600 21200 9600
Wire Wire Line
	21050 9700 21200 9700
Wire Wire Line
	21050 9800 21200 9800
Wire Wire Line
	21050 9900 21200 9900
Wire Wire Line
	21050 10000 21200 10000
Wire Wire Line
	4550 1900 4550 2000
Wire Wire Line
	4550 2300 4550 2450
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R43
U 1 1 5C90863D
P 4550 2150
F 0 "R43" H 4620 2196 50  0000 L CNN
F 1 "0" H 4620 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4480 2150 50  0001 C CNN
F 3 "~" H 4550 2150 50  0001 C CNN
	1    4550 2150
	1    0    0    -1  
$EndComp
Text Notes 4600 2000 0    50   ~ 0
This resistor is for debugging.\nIt can be removed it to disconnect\n12V from everything else.
$Comp
L Connector:USB_B J2
U 1 1 5E50E469
P 21400 1950
F 0 "J2" H 21171 1941 50  0000 R CNN
F 1 "USB_B" H 21171 1850 50  0000 R CNN
F 2 "Connector_USB:USB_B_OST_USB-B1HSxx_Horizontal" H 21550 1900 50  0001 C CNN
F 3 " ~" H 21550 1900 50  0001 C CNN
	1    21400 1950
	-1   0    0    -1  
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R5
U 1 1 5E90FAD3
P 20900 9400
F 0 "R5" V 20850 9550 50  0000 L CNN
F 1 "47" V 20850 9200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 20830 9400 50  0001 C CNN
F 3 "~" H 20900 9400 50  0001 C CNN
	1    20900 9400
	0    1    1    0   
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R42
U 1 1 5E9101E1
P 20900 9500
F 0 "R42" V 20850 9650 50  0000 L CNN
F 1 "47" V 20850 9300 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 20830 9500 50  0001 C CNN
F 3 "~" H 20900 9500 50  0001 C CNN
	1    20900 9500
	0    1    1    0   
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R54
U 1 1 5E9102E5
P 20900 9600
F 0 "R54" V 20850 9750 50  0000 L CNN
F 1 "47" V 20850 9400 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 20830 9600 50  0001 C CNN
F 3 "~" H 20900 9600 50  0001 C CNN
	1    20900 9600
	0    1    1    0   
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R55
U 1 1 5E9103EB
P 20900 9700
F 0 "R55" V 20850 9850 50  0000 L CNN
F 1 "47" V 20850 9500 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 20830 9700 50  0001 C CNN
F 3 "~" H 20900 9700 50  0001 C CNN
	1    20900 9700
	0    1    1    0   
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R56
U 1 1 5E9104F3
P 20900 9800
F 0 "R56" V 20850 9950 50  0000 L CNN
F 1 "47" V 20850 9600 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 20830 9800 50  0001 C CNN
F 3 "~" H 20900 9800 50  0001 C CNN
	1    20900 9800
	0    1    1    0   
$EndComp
$Comp
L SolarCarECU-rescue:R-Device-SolarCarECU-rescue R57
U 1 1 5E9105FF
P 20900 9900
F 0 "R57" V 20850 10050 50  0000 L CNN
F 1 "47" V 20850 9700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 20830 9900 50  0001 C CNN
F 3 "~" H 20900 9900 50  0001 C CNN
	1    20900 9900
	0    1    1    0   
$EndComp
Wire Wire Line
	20600 9400 20750 9400
Wire Wire Line
	20750 9500 20600 9500
Wire Wire Line
	20600 9600 20750 9600
Wire Wire Line
	20750 9700 20600 9700
Wire Wire Line
	20600 9800 20750 9800
Wire Wire Line
	20600 9900 20750 9900
Wire Wire Line
	10750 9050 10900 9050
Wire Wire Line
	10750 8850 10900 8850
Wire Wire Line
	10750 8650 10900 8650
Wire Wire Line
	8850 9250 9850 9250
Wire Wire Line
	8850 9450 9850 9450
Wire Wire Line
	8850 8850 9850 8850
Wire Wire Line
	8850 9050 9850 9050
Wire Wire Line
	8850 8650 9850 8650
Wire Wire Line
	9650 9650 9650 9850
Wire Wire Line
	9650 9650 9850 9650
Connection ~ 9650 9850
Wire Wire Line
	9650 6800 9650 6600
Connection ~ 9650 6800
Wire Wire Line
	9650 6400 9850 6400
Connection ~ 9650 6600
Wire Wire Line
	9650 6600 9650 6400
Wire Wire Line
	9650 6600 9850 6600
$EndSCHEMATC
