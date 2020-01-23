EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Mars-64"
Date "2020-01-23"
Rev "A"
Comp "Bio Balance Detector"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Mars-64-rescue:ADG731-Analog_Switch U101
U 1 1 5E2A9665
P 3300 3900
F 0 "U101" H 3000 5950 50  0000 L CNN
F 1 "ADG731" H 3000 5850 50  0000 L CNN
F 2 "Package_QFP:TQFP-48-1EP_7x7mm_P0.5mm_EP5x5mm" H 3550 1950 50  0001 L CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADG725_731.pdf" H 3310 4300 50  0001 C CNN
	1    3300 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Top_Bottom J1
U 1 1 5E2AF0E4
P 9000 2200
F 0 "J1" H 9050 2617 50  0000 C CNN
F 1 "Conn_02x06_Top_Bottom" H 9050 2526 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 9000 2200 50  0001 C CNN
F 3 "~" H 9000 2200 50  0001 C CNN
	1    9000 2200
	1    0    0    -1  
$EndComp
$Comp
L Mars-64-rescue:ADG731-Analog_Switch U102
U 1 1 5E2C09E7
P 6300 3900
F 0 "U102" H 6000 5950 50  0000 L CNN
F 1 "ADG731" H 6000 5850 50  0000 L CNN
F 2 "Package_QFP:TQFP-48-1EP_7x7mm_P0.5mm_EP5x5mm" H 6550 1950 50  0001 L CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADG725_731.pdf" H 6310 4300 50  0001 C CNN
	1    6300 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2500 2900 2500
$Comp
L Connector:TestPoint_Small TP101
U 1 1 5E316390
P 2600 2500
F 0 "TP101" V 2693 2500 50  0000 C CNN
F 1 "TestPoint_Small" V 2694 2500 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 2800 2500 50  0001 C CNN
F 3 "~" H 2800 2500 50  0001 C CNN
	1    2600 2500
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP102
U 1 1 5E317DB9
P 2400 2600
F 0 "TP102" V 2493 2600 50  0000 C CNN
F 1 "TestPoint_Small" V 2494 2600 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 2600 2600 50  0001 C CNN
F 3 "~" H 2600 2600 50  0001 C CNN
	1    2400 2600
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP103
U 1 1 5E31886C
P 2200 2700
F 0 "TP103" V 2293 2700 50  0000 C CNN
F 1 "TestPoint_Small" V 2294 2700 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 2400 2700 50  0001 C CNN
F 3 "~" H 2400 2700 50  0001 C CNN
	1    2200 2700
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP104
U 1 1 5E318C8E
P 2000 2800
F 0 "TP104" V 2093 2800 50  0000 C CNN
F 1 "TestPoint_Small" V 2094 2800 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 2200 2800 50  0001 C CNN
F 3 "~" H 2200 2800 50  0001 C CNN
	1    2000 2800
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP105
U 1 1 5E3191F8
P 1800 2900
F 0 "TP105" V 1893 2900 50  0000 C CNN
F 1 "TestPoint_Small" V 1894 2900 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 2000 2900 50  0001 C CNN
F 3 "~" H 2000 2900 50  0001 C CNN
	1    1800 2900
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP106
U 1 1 5E3197C1
P 1600 3000
F 0 "TP106" V 1693 3000 50  0000 C CNN
F 1 "TestPoint_Small" V 1694 3000 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 1800 3000 50  0001 C CNN
F 3 "~" H 1800 3000 50  0001 C CNN
	1    1600 3000
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP107
U 1 1 5E319C05
P 1400 3100
F 0 "TP107" V 1493 3100 50  0000 C CNN
F 1 "TestPoint_Small" V 1494 3100 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 1600 3100 50  0001 C CNN
F 3 "~" H 1600 3100 50  0001 C CNN
	1    1400 3100
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP108
U 1 1 5E319EED
P 1200 3200
F 0 "TP108" V 1293 3200 50  0000 C CNN
F 1 "TestPoint_Small" V 1294 3200 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 1400 3200 50  0001 C CNN
F 3 "~" H 1400 3200 50  0001 C CNN
	1    1200 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 2600 2900 2600
Wire Wire Line
	2900 2700 2200 2700
Wire Wire Line
	2900 2800 2000 2800
Wire Wire Line
	2900 2900 1800 2900
Wire Wire Line
	2900 3000 1600 3000
Wire Wire Line
	2900 3100 1400 3100
Wire Wire Line
	2900 3200 1200 3200
Wire Wire Line
	2600 3300 2900 3300
$Comp
L Connector:TestPoint_Small TP109
U 1 1 5E31F668
P 2600 3300
F 0 "TP109" V 2693 3300 50  0000 C CNN
F 1 "TestPoint_Small" V 2694 3300 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 2800 3300 50  0001 C CNN
F 3 "~" H 2800 3300 50  0001 C CNN
	1    2600 3300
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP110
U 1 1 5E31F672
P 2400 3400
F 0 "TP110" V 2493 3400 50  0000 C CNN
F 1 "TestPoint_Small" V 2494 3400 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 2600 3400 50  0001 C CNN
F 3 "~" H 2600 3400 50  0001 C CNN
	1    2400 3400
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP111
U 1 1 5E31F67C
P 2200 3500
F 0 "TP111" V 2293 3500 50  0000 C CNN
F 1 "TestPoint_Small" V 2294 3500 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 2400 3500 50  0001 C CNN
F 3 "~" H 2400 3500 50  0001 C CNN
	1    2200 3500
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP112
U 1 1 5E31F686
P 2000 3600
F 0 "TP112" V 2093 3600 50  0000 C CNN
F 1 "TestPoint_Small" V 2094 3600 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 2200 3600 50  0001 C CNN
F 3 "~" H 2200 3600 50  0001 C CNN
	1    2000 3600
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP113
U 1 1 5E31F690
P 1800 3700
F 0 "TP113" V 1893 3700 50  0000 C CNN
F 1 "TestPoint_Small" V 1894 3700 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 2000 3700 50  0001 C CNN
F 3 "~" H 2000 3700 50  0001 C CNN
	1    1800 3700
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP114
U 1 1 5E31F69A
P 1600 3800
F 0 "TP114" V 1693 3800 50  0000 C CNN
F 1 "TestPoint_Small" V 1694 3800 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 1800 3800 50  0001 C CNN
F 3 "~" H 1800 3800 50  0001 C CNN
	1    1600 3800
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP115
U 1 1 5E31F6A4
P 1400 3900
F 0 "TP115" V 1493 3900 50  0000 C CNN
F 1 "TestPoint_Small" V 1494 3900 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 1600 3900 50  0001 C CNN
F 3 "~" H 1600 3900 50  0001 C CNN
	1    1400 3900
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP116
U 1 1 5E31F6AE
P 1200 4000
F 0 "TP116" V 1293 4000 50  0000 C CNN
F 1 "TestPoint_Small" V 1294 4000 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 1400 4000 50  0001 C CNN
F 3 "~" H 1400 4000 50  0001 C CNN
	1    1200 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 3400 2900 3400
Wire Wire Line
	2900 3500 2200 3500
Wire Wire Line
	2900 3600 2000 3600
Wire Wire Line
	2900 3700 1800 3700
Wire Wire Line
	2900 3800 1600 3800
Wire Wire Line
	2900 3900 1400 3900
Wire Wire Line
	2900 4000 1200 4000
Wire Wire Line
	2600 4100 2900 4100
$Comp
L Connector:TestPoint_Small TP117
U 1 1 5E327820
P 2600 4100
F 0 "TP117" V 2693 4100 50  0000 C CNN
F 1 "TestPoint_Small" V 2694 4100 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 2800 4100 50  0001 C CNN
F 3 "~" H 2800 4100 50  0001 C CNN
	1    2600 4100
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP118
U 1 1 5E32782A
P 2400 4200
F 0 "TP118" V 2493 4200 50  0000 C CNN
F 1 "TestPoint_Small" V 2494 4200 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 2600 4200 50  0001 C CNN
F 3 "~" H 2600 4200 50  0001 C CNN
	1    2400 4200
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP119
U 1 1 5E327834
P 2200 4300
F 0 "TP119" V 2293 4300 50  0000 C CNN
F 1 "TestPoint_Small" V 2294 4300 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 2400 4300 50  0001 C CNN
F 3 "~" H 2400 4300 50  0001 C CNN
	1    2200 4300
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP120
U 1 1 5E32783E
P 2000 4400
F 0 "TP120" V 2093 4400 50  0000 C CNN
F 1 "TestPoint_Small" V 2094 4400 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 2200 4400 50  0001 C CNN
F 3 "~" H 2200 4400 50  0001 C CNN
	1    2000 4400
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP121
U 1 1 5E327848
P 1800 4500
F 0 "TP121" V 1893 4500 50  0000 C CNN
F 1 "TestPoint_Small" V 1894 4500 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 2000 4500 50  0001 C CNN
F 3 "~" H 2000 4500 50  0001 C CNN
	1    1800 4500
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP122
U 1 1 5E327852
P 1600 4600
F 0 "TP122" V 1693 4600 50  0000 C CNN
F 1 "TestPoint_Small" V 1694 4600 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 1800 4600 50  0001 C CNN
F 3 "~" H 1800 4600 50  0001 C CNN
	1    1600 4600
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP123
U 1 1 5E32785C
P 1400 4700
F 0 "TP123" V 1493 4700 50  0000 C CNN
F 1 "TestPoint_Small" V 1494 4700 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 1600 4700 50  0001 C CNN
F 3 "~" H 1600 4700 50  0001 C CNN
	1    1400 4700
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP124
U 1 1 5E327866
P 1200 4800
F 0 "TP124" V 1293 4800 50  0000 C CNN
F 1 "TestPoint_Small" V 1294 4800 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 1400 4800 50  0001 C CNN
F 3 "~" H 1400 4800 50  0001 C CNN
	1    1200 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 4200 2900 4200
Wire Wire Line
	2900 4300 2200 4300
Wire Wire Line
	2900 4400 2000 4400
Wire Wire Line
	2900 4500 1800 4500
Wire Wire Line
	2900 4600 1600 4600
Wire Wire Line
	2900 4700 1400 4700
Wire Wire Line
	2900 4800 1200 4800
Wire Wire Line
	2600 4900 2900 4900
$Comp
L Connector:TestPoint_Small TP125
U 1 1 5E32C0DC
P 2600 4900
F 0 "TP125" V 2693 4900 50  0000 C CNN
F 1 "TestPoint_Small" V 2694 4900 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 2800 4900 50  0001 C CNN
F 3 "~" H 2800 4900 50  0001 C CNN
	1    2600 4900
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP126
U 1 1 5E32C0E6
P 2400 5000
F 0 "TP126" V 2493 5000 50  0000 C CNN
F 1 "TestPoint_Small" V 2494 5000 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 2600 5000 50  0001 C CNN
F 3 "~" H 2600 5000 50  0001 C CNN
	1    2400 5000
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP127
U 1 1 5E32C0F0
P 2200 5100
F 0 "TP127" V 2293 5100 50  0000 C CNN
F 1 "TestPoint_Small" V 2294 5100 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 2400 5100 50  0001 C CNN
F 3 "~" H 2400 5100 50  0001 C CNN
	1    2200 5100
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP128
U 1 1 5E32C0FA
P 2000 5200
F 0 "TP128" V 2093 5200 50  0000 C CNN
F 1 "TestPoint_Small" V 2094 5200 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 2200 5200 50  0001 C CNN
F 3 "~" H 2200 5200 50  0001 C CNN
	1    2000 5200
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP129
U 1 1 5E32C104
P 1800 5300
F 0 "TP129" V 1893 5300 50  0000 C CNN
F 1 "TestPoint_Small" V 1894 5300 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 2000 5300 50  0001 C CNN
F 3 "~" H 2000 5300 50  0001 C CNN
	1    1800 5300
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP130
U 1 1 5E32C10E
P 1600 5400
F 0 "TP130" V 1693 5400 50  0000 C CNN
F 1 "TestPoint_Small" V 1694 5400 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 1800 5400 50  0001 C CNN
F 3 "~" H 1800 5400 50  0001 C CNN
	1    1600 5400
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP131
U 1 1 5E32C118
P 1400 5500
F 0 "TP131" V 1493 5500 50  0000 C CNN
F 1 "TestPoint_Small" V 1494 5500 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 1600 5500 50  0001 C CNN
F 3 "~" H 1600 5500 50  0001 C CNN
	1    1400 5500
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP132
U 1 1 5E32C122
P 1200 5600
F 0 "TP132" V 1293 5600 50  0000 C CNN
F 1 "TestPoint_Small" V 1294 5600 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 1400 5600 50  0001 C CNN
F 3 "~" H 1400 5600 50  0001 C CNN
	1    1200 5600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 5000 2900 5000
Wire Wire Line
	2900 5100 2200 5100
Wire Wire Line
	2900 5200 2000 5200
Wire Wire Line
	2900 5300 1800 5300
Wire Wire Line
	2900 5400 1600 5400
Wire Wire Line
	2900 5500 1400 5500
Wire Wire Line
	2900 5600 1200 5600
$Comp
L power:GND #PWR0101
U 1 1 5E2A6B18
P 3500 6000
F 0 "#PWR0101" H 3500 5750 50  0001 C CNN
F 1 "GND" H 3505 5827 50  0000 C CNN
F 2 "" H 3500 6000 50  0001 C CNN
F 3 "" H 3500 6000 50  0001 C CNN
	1    3500 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E2A787D
P 6500 6000
F 0 "#PWR0102" H 6500 5750 50  0001 C CNN
F 1 "GND" H 6505 5827 50  0000 C CNN
F 2 "" H 6500 6000 50  0001 C CNN
F 3 "" H 6500 6000 50  0001 C CNN
	1    6500 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5E2A7E08
P 3200 1600
F 0 "#PWR0103" H 3200 1350 50  0001 C CNN
F 1 "GND" H 3205 1427 50  0000 C CNN
F 2 "" H 3200 1600 50  0001 C CNN
F 3 "" H 3200 1600 50  0001 C CNN
	1    3200 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1600 3200 1400
Wire Wire Line
	3200 1400 3400 1400
Wire Wire Line
	3400 1400 3400 1900
$Comp
L power:GND #PWR0104
U 1 1 5E2AA47F
P 6200 1600
F 0 "#PWR0104" H 6200 1350 50  0001 C CNN
F 1 "GND" H 6205 1427 50  0000 C CNN
F 2 "" H 6200 1600 50  0001 C CNN
F 3 "" H 6200 1600 50  0001 C CNN
	1    6200 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1600 6200 1400
Wire Wire Line
	6200 1400 6400 1400
Wire Wire Line
	6400 1400 6400 1900
Wire Wire Line
	5600 2500 5900 2500
$Comp
L Connector:TestPoint_Small TP201
U 1 1 5E2B0A26
P 5600 2500
F 0 "TP201" V 5693 2500 50  0000 C CNN
F 1 "TestPoint_Small" V 5694 2500 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 5800 2500 50  0001 C CNN
F 3 "~" H 5800 2500 50  0001 C CNN
	1    5600 2500
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP202
U 1 1 5E2B0A30
P 5400 2600
F 0 "TP202" V 5493 2600 50  0000 C CNN
F 1 "TestPoint_Small" V 5494 2600 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 5600 2600 50  0001 C CNN
F 3 "~" H 5600 2600 50  0001 C CNN
	1    5400 2600
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP203
U 1 1 5E2B0A3A
P 5200 2700
F 0 "TP203" V 5293 2700 50  0000 C CNN
F 1 "TestPoint_Small" V 5294 2700 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 5400 2700 50  0001 C CNN
F 3 "~" H 5400 2700 50  0001 C CNN
	1    5200 2700
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP204
U 1 1 5E2B0A44
P 5000 2800
F 0 "TP204" V 5093 2800 50  0000 C CNN
F 1 "TestPoint_Small" V 5094 2800 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 5200 2800 50  0001 C CNN
F 3 "~" H 5200 2800 50  0001 C CNN
	1    5000 2800
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP205
U 1 1 5E2B0A4E
P 4800 2900
F 0 "TP205" V 4893 2900 50  0000 C CNN
F 1 "TestPoint_Small" V 4894 2900 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 5000 2900 50  0001 C CNN
F 3 "~" H 5000 2900 50  0001 C CNN
	1    4800 2900
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP206
U 1 1 5E2B0A58
P 4600 3000
F 0 "TP206" V 4693 3000 50  0000 C CNN
F 1 "TestPoint_Small" V 4694 3000 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 4800 3000 50  0001 C CNN
F 3 "~" H 4800 3000 50  0001 C CNN
	1    4600 3000
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP207
U 1 1 5E2B0A62
P 4400 3100
F 0 "TP207" V 4493 3100 50  0000 C CNN
F 1 "TestPoint_Small" V 4494 3100 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 4600 3100 50  0001 C CNN
F 3 "~" H 4600 3100 50  0001 C CNN
	1    4400 3100
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP208
U 1 1 5E2B0A6C
P 4200 3200
F 0 "TP208" V 4293 3200 50  0000 C CNN
F 1 "TestPoint_Small" V 4294 3200 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 4400 3200 50  0001 C CNN
F 3 "~" H 4400 3200 50  0001 C CNN
	1    4200 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5400 2600 5900 2600
Wire Wire Line
	5900 2700 5200 2700
Wire Wire Line
	5900 2800 5000 2800
Wire Wire Line
	5900 2900 4800 2900
Wire Wire Line
	5900 3000 4600 3000
Wire Wire Line
	5900 3100 4400 3100
Wire Wire Line
	5900 3200 4200 3200
Wire Wire Line
	5600 3300 5900 3300
$Comp
L Connector:TestPoint_Small TP209
U 1 1 5E2B0A7E
P 5600 3300
F 0 "TP209" V 5693 3300 50  0000 C CNN
F 1 "TestPoint_Small" V 5694 3300 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 5800 3300 50  0001 C CNN
F 3 "~" H 5800 3300 50  0001 C CNN
	1    5600 3300
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP210
U 1 1 5E2B0A88
P 5400 3400
F 0 "TP210" V 5493 3400 50  0000 C CNN
F 1 "TestPoint_Small" V 5494 3400 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 5600 3400 50  0001 C CNN
F 3 "~" H 5600 3400 50  0001 C CNN
	1    5400 3400
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP211
U 1 1 5E2B0A92
P 5200 3500
F 0 "TP211" V 5293 3500 50  0000 C CNN
F 1 "TestPoint_Small" V 5294 3500 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 5400 3500 50  0001 C CNN
F 3 "~" H 5400 3500 50  0001 C CNN
	1    5200 3500
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP212
U 1 1 5E2B0A9C
P 5000 3600
F 0 "TP212" V 5093 3600 50  0000 C CNN
F 1 "TestPoint_Small" V 5094 3600 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 5200 3600 50  0001 C CNN
F 3 "~" H 5200 3600 50  0001 C CNN
	1    5000 3600
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP213
U 1 1 5E2B0AA6
P 4800 3700
F 0 "TP213" V 4893 3700 50  0000 C CNN
F 1 "TestPoint_Small" V 4894 3700 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 5000 3700 50  0001 C CNN
F 3 "~" H 5000 3700 50  0001 C CNN
	1    4800 3700
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP214
U 1 1 5E2B0AB0
P 4600 3800
F 0 "TP214" V 4693 3800 50  0000 C CNN
F 1 "TestPoint_Small" V 4694 3800 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 4800 3800 50  0001 C CNN
F 3 "~" H 4800 3800 50  0001 C CNN
	1    4600 3800
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP215
U 1 1 5E2B0ABA
P 4400 3900
F 0 "TP215" V 4493 3900 50  0000 C CNN
F 1 "TestPoint_Small" V 4494 3900 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 4600 3900 50  0001 C CNN
F 3 "~" H 4600 3900 50  0001 C CNN
	1    4400 3900
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP216
U 1 1 5E2B0AC4
P 4200 4000
F 0 "TP216" V 4293 4000 50  0000 C CNN
F 1 "TestPoint_Small" V 4294 4000 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 4400 4000 50  0001 C CNN
F 3 "~" H 4400 4000 50  0001 C CNN
	1    4200 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5400 3400 5900 3400
Wire Wire Line
	5900 3500 5200 3500
Wire Wire Line
	5900 3600 5000 3600
Wire Wire Line
	5900 3700 4800 3700
Wire Wire Line
	5900 3800 4600 3800
Wire Wire Line
	5900 3900 4400 3900
Wire Wire Line
	5900 4000 4200 4000
Wire Wire Line
	5600 4100 5900 4100
$Comp
L Connector:TestPoint_Small TP217
U 1 1 5E2B0AD6
P 5600 4100
F 0 "TP217" V 5693 4100 50  0000 C CNN
F 1 "TestPoint_Small" V 5694 4100 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 5800 4100 50  0001 C CNN
F 3 "~" H 5800 4100 50  0001 C CNN
	1    5600 4100
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP218
U 1 1 5E2B0AE0
P 5400 4200
F 0 "TP218" V 5493 4200 50  0000 C CNN
F 1 "TestPoint_Small" V 5494 4200 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 5600 4200 50  0001 C CNN
F 3 "~" H 5600 4200 50  0001 C CNN
	1    5400 4200
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP219
U 1 1 5E2B0AEA
P 5200 4300
F 0 "TP219" V 5293 4300 50  0000 C CNN
F 1 "TestPoint_Small" V 5294 4300 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 5400 4300 50  0001 C CNN
F 3 "~" H 5400 4300 50  0001 C CNN
	1    5200 4300
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP220
U 1 1 5E2B0AF4
P 5000 4400
F 0 "TP220" V 5093 4400 50  0000 C CNN
F 1 "TestPoint_Small" V 5094 4400 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 5200 4400 50  0001 C CNN
F 3 "~" H 5200 4400 50  0001 C CNN
	1    5000 4400
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP221
U 1 1 5E2B0AFE
P 4800 4500
F 0 "TP221" V 4893 4500 50  0000 C CNN
F 1 "TestPoint_Small" V 4894 4500 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 5000 4500 50  0001 C CNN
F 3 "~" H 5000 4500 50  0001 C CNN
	1    4800 4500
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP222
U 1 1 5E2B0B08
P 4600 4600
F 0 "TP222" V 4693 4600 50  0000 C CNN
F 1 "TestPoint_Small" V 4694 4600 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 4800 4600 50  0001 C CNN
F 3 "~" H 4800 4600 50  0001 C CNN
	1    4600 4600
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP223
U 1 1 5E2B0B12
P 4400 4700
F 0 "TP223" V 4493 4700 50  0000 C CNN
F 1 "TestPoint_Small" V 4494 4700 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 4600 4700 50  0001 C CNN
F 3 "~" H 4600 4700 50  0001 C CNN
	1    4400 4700
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP224
U 1 1 5E2B0B1C
P 4200 4800
F 0 "TP224" V 4293 4800 50  0000 C CNN
F 1 "TestPoint_Small" V 4294 4800 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 4400 4800 50  0001 C CNN
F 3 "~" H 4400 4800 50  0001 C CNN
	1    4200 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5400 4200 5900 4200
Wire Wire Line
	5900 4300 5200 4300
Wire Wire Line
	5900 4400 5000 4400
Wire Wire Line
	5900 4500 4800 4500
Wire Wire Line
	5900 4600 4600 4600
Wire Wire Line
	5900 4700 4400 4700
Wire Wire Line
	5900 4800 4200 4800
Wire Wire Line
	5600 4900 5900 4900
$Comp
L Connector:TestPoint_Small TP225
U 1 1 5E2B0B2E
P 5600 4900
F 0 "TP225" V 5693 4900 50  0000 C CNN
F 1 "TestPoint_Small" V 5694 4900 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 5800 4900 50  0001 C CNN
F 3 "~" H 5800 4900 50  0001 C CNN
	1    5600 4900
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP226
U 1 1 5E2B0B38
P 5400 5000
F 0 "TP226" V 5493 5000 50  0000 C CNN
F 1 "TestPoint_Small" V 5494 5000 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 5600 5000 50  0001 C CNN
F 3 "~" H 5600 5000 50  0001 C CNN
	1    5400 5000
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP227
U 1 1 5E2B0B42
P 5200 5100
F 0 "TP227" V 5293 5100 50  0000 C CNN
F 1 "TestPoint_Small" V 5294 5100 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 5400 5100 50  0001 C CNN
F 3 "~" H 5400 5100 50  0001 C CNN
	1    5200 5100
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP228
U 1 1 5E2B0B4C
P 5000 5200
F 0 "TP228" V 5093 5200 50  0000 C CNN
F 1 "TestPoint_Small" V 5094 5200 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 5200 5200 50  0001 C CNN
F 3 "~" H 5200 5200 50  0001 C CNN
	1    5000 5200
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP229
U 1 1 5E2B0B56
P 4800 5300
F 0 "TP229" V 4893 5300 50  0000 C CNN
F 1 "TestPoint_Small" V 4894 5300 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 5000 5300 50  0001 C CNN
F 3 "~" H 5000 5300 50  0001 C CNN
	1    4800 5300
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP230
U 1 1 5E2B0B60
P 4600 5400
F 0 "TP230" V 4693 5400 50  0000 C CNN
F 1 "TestPoint_Small" V 4694 5400 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 4800 5400 50  0001 C CNN
F 3 "~" H 4800 5400 50  0001 C CNN
	1    4600 5400
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP231
U 1 1 5E2B0B6A
P 4400 5500
F 0 "TP231" V 4493 5500 50  0000 C CNN
F 1 "TestPoint_Small" V 4494 5500 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 4600 5500 50  0001 C CNN
F 3 "~" H 4600 5500 50  0001 C CNN
	1    4400 5500
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Small TP232
U 1 1 5E2B0B74
P 4200 5600
F 0 "TP232" V 4293 5600 50  0000 C CNN
F 1 "TestPoint_Small" V 4294 5600 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 4400 5600 50  0001 C CNN
F 3 "~" H 4400 5600 50  0001 C CNN
	1    4200 5600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5400 5000 5900 5000
Wire Wire Line
	5900 5100 5200 5100
Wire Wire Line
	5900 5200 5000 5200
Wire Wire Line
	5900 5300 4800 5300
Wire Wire Line
	5900 5400 4600 5400
Wire Wire Line
	5900 5500 4400 5500
Wire Wire Line
	5900 5600 4200 5600
Wire Wire Line
	9300 2100 10400 2100
Wire Wire Line
	8100 5700 8100 5500
Wire Wire Line
	6700 3900 7200 3900
Wire Wire Line
	7200 3900 7200 5300
Wire Wire Line
	7200 5300 7900 5300
Wire Wire Line
	3700 3900 3900 3900
Wire Wire Line
	3900 3900 3900 6400
Wire Wire Line
	3900 6400 7400 6400
Wire Wire Line
	7400 6400 7400 5100
Wire Wire Line
	7400 5100 8800 5100
Wire Wire Line
	6500 6000 6500 5800
Wire Wire Line
	3500 5800 3500 6000
Wire Wire Line
	2900 2100 2600 2100
Wire Wire Line
	2600 2100 2600 1000
Wire Wire Line
	2600 1000 5600 1000
Wire Wire Line
	8000 1000 8000 2300
Wire Wire Line
	8000 2300 8800 2300
Wire Wire Line
	5900 2100 5600 2100
Wire Wire Line
	5600 2100 5600 1000
Connection ~ 5600 1000
Wire Wire Line
	5600 1000 8000 1000
Wire Wire Line
	5900 2200 5500 2200
Wire Wire Line
	5500 2200 5500 900 
Wire Wire Line
	5500 900  8200 900 
Wire Wire Line
	8200 900  8200 2100
Wire Wire Line
	8200 2100 8800 2100
Wire Wire Line
	2900 2200 2500 2200
Wire Wire Line
	2500 2200 2500 900 
Wire Wire Line
	2500 900  5500 900 
Connection ~ 5500 900 
Wire Wire Line
	2900 2300 2400 2300
Wire Wire Line
	2400 2300 2400 800 
Wire Wire Line
	2400 800  5400 800 
Wire Wire Line
	8300 800  8300 2000
Wire Wire Line
	8300 2000 8800 2000
Wire Wire Line
	5900 2300 5400 2300
Wire Wire Line
	5400 2300 5400 800 
Connection ~ 5400 800 
Wire Wire Line
	5400 800  8300 800 
Wire Wire Line
	8800 2500 8200 2500
Wire Wire Line
	7800 2500 7800 1200
Wire Wire Line
	7800 1200 6500 1200
Wire Wire Line
	6500 1200 6500 1900
Wire Wire Line
	6500 1200 3500 1200
Wire Wire Line
	3500 1200 3500 1900
Connection ~ 6500 1200
Wire Wire Line
	8200 2500 8200 2800
Wire Wire Line
	8200 2800 9800 2800
Wire Wire Line
	9800 2800 9800 2500
Wire Wire Line
	9800 2500 9300 2500
Connection ~ 8200 2500
Wire Wire Line
	8200 2500 7800 2500
NoConn ~ 8800 2200
$Comp
L Device:Jumper_NC_Dual JP4
U 1 1 5E309A8E
P 10400 5700
F 0 "JP4" V 10400 5802 50  0000 L CNN
F 1 "Jumper_NC_Dual" V 10445 5802 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10400 5700 50  0001 C CNN
F 3 "~" H 10400 5700 50  0001 C CNN
	1    10400 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	10400 2100 10400 3900
$Comp
L power:GND #PWR0105
U 1 1 5E31D05C
P 10400 6300
F 0 "#PWR0105" H 10400 6050 50  0001 C CNN
F 1 "GND" H 10405 6127 50  0000 C CNN
F 2 "" H 10400 6300 50  0001 C CNN
F 3 "" H 10400 6300 50  0001 C CNN
	1    10400 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 6300 10400 5950
Wire Wire Line
	8100 5700 9000 5700
$Comp
L power:GND #PWR0106
U 1 1 5E32D300
P 10000 3000
F 0 "#PWR0106" H 10000 2750 50  0001 C CNN
F 1 "GND" H 10005 2827 50  0000 C CNN
F 2 "" H 10000 3000 50  0001 C CNN
F 3 "" H 10000 3000 50  0001 C CNN
	1    10000 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5E32E821
P 8000 3000
F 0 "#PWR0107" H 8000 2750 50  0001 C CNN
F 1 "GND" H 8005 2827 50  0000 C CNN
F 2 "" H 8000 3000 50  0001 C CNN
F 3 "" H 8000 3000 50  0001 C CNN
	1    8000 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3000 8000 2400
Wire Wire Line
	8000 2400 8800 2400
Wire Wire Line
	9300 2400 10000 2400
Wire Wire Line
	10000 2400 10000 3000
Wire Wire Line
	9300 2300 10200 2300
Wire Wire Line
	10200 2300 10200 3900
Wire Wire Line
	10200 3900 7200 3900
Connection ~ 7200 3900
Wire Wire Line
	9300 2200 10300 2200
Wire Wire Line
	10300 2200 10300 4800
Wire Wire Line
	10300 4800 7400 4800
Wire Wire Line
	7400 4800 7400 5100
Connection ~ 7400 5100
$Comp
L Connector:TestPoint_Small TPAGND101
U 1 1 5E34D2B6
P 10400 3900
F 0 "TPAGND101" H 10448 3900 50  0000 L CNN
F 1 "TestPoint_Small" H 10448 3855 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 10600 3900 50  0001 C CNN
F 3 "~" H 10600 3900 50  0001 C CNN
	1    10400 3900
	1    0    0    -1  
$EndComp
Connection ~ 10400 3900
Wire Wire Line
	10400 3900 10400 5450
NoConn ~ 9300 2000
Text Label 8400 2000 0    50   ~ 0
~SPI_CE
Text Label 8400 2100 0    50   ~ 0
SPI_MOSI
Text Label 8400 2300 0    50   ~ 0
SPI_CLK
Text Label 8400 2400 0    50   ~ 0
GND
Text Label 8400 2500 0    50   ~ 0
VCC3V3
Text Label 9400 2100 0    50   ~ 0
AGND
Text Label 9400 2200 0    50   ~ 0
DA
Text Label 9400 2300 0    50   ~ 0
DB
Text Label 9400 2400 0    50   ~ 0
GND
Text Label 9400 2500 0    50   ~ 0
VCC3V3
$Comp
L Connector:Conn_Coaxial J3
U 1 1 5E2B58A0
P 8100 5300
F 0 "J3" H 8200 5229 50  0000 L CNN
F 1 "Conn_Coaxial" H 8200 5184 50  0001 L CNN
F 2 "Connector_Coaxial:SMA_Molex_73251-2200_Horizontal" H 8100 5300 50  0001 C CNN
F 3 " ~" H 8100 5300 50  0001 C CNN
	1    8100 5300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5E2B6373
P 9000 5100
F 0 "J2" H 9100 5029 50  0000 L CNN
F 1 "Conn_Coaxial" H 9100 4984 50  0001 L CNN
F 2 "Connector_Coaxial:SMA_Molex_73251-2200_Horizontal" H 9000 5100 50  0001 C CNN
F 3 " ~" H 9000 5100 50  0001 C CNN
	1    9000 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5300 9000 5700
Connection ~ 9000 5700
Wire Wire Line
	9000 5700 10300 5700
$EndSCHEMATC
