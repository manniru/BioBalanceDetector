EESchema Schematic File Version 2
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
LIBS:BBDProto03_SensorPanelSquare-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Bio Balance Detector - Proto #3"
Date "2016-04-08"
Rev "B"
Comp "Andras Fuchs (andras.fuchs@gmail.com)"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Square Sensor Panel"
$EndDescr
$Comp
L CONN_02X08 P1
U 1 1 5707844D
P 1550 1700
F 0 "P1" H 1550 2150 50  0000 C CNN
F 1 "CONN_02X08" V 1550 1700 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x08" H 1550 500 50  0001 C CNN
F 3 "" H 1550 500 50  0000 C CNN
	1    1550 1700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P1-02
U 1 1 57078C5E
P 2350 1000
F 0 "P1-02" H 2350 1100 50  0000 C CNN
F 1 "CONN_01X01" V 2450 1000 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 2350 1000 50  0001 C CNN
F 3 "" H 2350 1000 50  0000 C CNN
	1    2350 1000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P1-04
U 1 1 57078CB9
P 2350 1200
F 0 "P1-04" H 2350 1300 50  0000 C CNN
F 1 "CONN_01X01" V 2450 1200 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 2350 1200 50  0001 C CNN
F 3 "" H 2350 1200 50  0000 C CNN
	1    2350 1200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P1-06
U 1 1 57078CD5
P 2350 1400
F 0 "P1-06" H 2350 1500 50  0000 C CNN
F 1 "CONN_01X01" V 2450 1400 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 2350 1400 50  0001 C CNN
F 3 "" H 2350 1400 50  0000 C CNN
	1    2350 1400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P1-08
U 1 1 57078D32
P 2350 1600
F 0 "P1-08" H 2350 1700 50  0000 C CNN
F 1 "CONN_01X01" V 2450 1600 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 2350 1600 50  0001 C CNN
F 3 "" H 2350 1600 50  0000 C CNN
	1    2350 1600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P1-10
U 1 1 57078D58
P 2350 1800
F 0 "P1-10" H 2350 1900 50  0000 C CNN
F 1 "CONN_01X01" V 2450 1800 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 2350 1800 50  0001 C CNN
F 3 "" H 2350 1800 50  0000 C CNN
	1    2350 1800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P1-12
U 1 1 57078D81
P 2350 2000
F 0 "P1-12" H 2350 2100 50  0000 C CNN
F 1 "CONN_01X01" V 2450 2000 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 2350 2000 50  0001 C CNN
F 3 "" H 2350 2000 50  0000 C CNN
	1    2350 2000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P1-14
U 1 1 57078DAD
P 2350 2200
F 0 "P1-14" H 2350 2300 50  0000 C CNN
F 1 "CONN_01X01" V 2450 2200 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 2350 2200 50  0001 C CNN
F 3 "" H 2350 2200 50  0000 C CNN
	1    2350 2200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P1-16
U 1 1 57078DDC
P 2350 2400
F 0 "P1-16" H 2350 2500 50  0000 C CNN
F 1 "CONN_01X01" V 2450 2400 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 2350 2400 50  0001 C CNN
F 3 "" H 2350 2400 50  0000 C CNN
	1    2350 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1650 2100 1650
Wire Wire Line
	2100 1650 2100 1600
Wire Wire Line
	2100 1600 2150 1600
Wire Wire Line
	1800 1550 2050 1550
Wire Wire Line
	2050 1550 2050 1400
Wire Wire Line
	2050 1400 2150 1400
Wire Wire Line
	1800 1450 1950 1450
Wire Wire Line
	1950 1450 1950 1200
Wire Wire Line
	1950 1200 2150 1200
Wire Wire Line
	1800 1350 1850 1350
Wire Wire Line
	1850 1350 1850 1000
Wire Wire Line
	1850 1000 2150 1000
Wire Wire Line
	1800 1750 2100 1750
Wire Wire Line
	2100 1750 2100 1800
Wire Wire Line
	2100 1800 2150 1800
Wire Wire Line
	1800 1850 2050 1850
Wire Wire Line
	2050 1850 2050 2000
Wire Wire Line
	2050 2000 2150 2000
Wire Wire Line
	1800 1950 1950 1950
Wire Wire Line
	1950 1950 1950 2200
Wire Wire Line
	1950 2200 2150 2200
Wire Wire Line
	1800 2050 1850 2050
Wire Wire Line
	1850 2050 1850 2400
Wire Wire Line
	1850 2400 2150 2400
$Comp
L CONN_01X01 P1-15
U 1 1 570792F2
P 750 2400
F 0 "P1-15" H 750 2500 50  0000 C CNN
F 1 "CONN_01X01" V 850 2400 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 750 2400 50  0001 C CNN
F 3 "" H 750 2400 50  0000 C CNN
	1    750  2400
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P1-13
U 1 1 570792F8
P 750 2200
F 0 "P1-13" H 750 2300 50  0000 C CNN
F 1 "CONN_01X01" V 850 2200 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 750 2200 50  0001 C CNN
F 3 "" H 750 2200 50  0000 C CNN
	1    750  2200
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P1-11
U 1 1 570792FE
P 750 2000
F 0 "P1-11" H 750 2100 50  0000 C CNN
F 1 "CONN_01X01" V 850 2000 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 750 2000 50  0001 C CNN
F 3 "" H 750 2000 50  0000 C CNN
	1    750  2000
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P1-09
U 1 1 57079304
P 750 1800
F 0 "P1-09" H 750 1900 50  0000 C CNN
F 1 "CONN_01X01" V 850 1800 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 750 1800 50  0001 C CNN
F 3 "" H 750 1800 50  0000 C CNN
	1    750  1800
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P1-07
U 1 1 5707930A
P 750 1600
F 0 "P1-07" H 750 1700 50  0000 C CNN
F 1 "CONN_01X01" V 850 1600 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 750 1600 50  0001 C CNN
F 3 "" H 750 1600 50  0000 C CNN
	1    750  1600
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P1-05
U 1 1 57079310
P 750 1400
F 0 "P1-05" H 750 1500 50  0000 C CNN
F 1 "CONN_01X01" V 850 1400 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 750 1400 50  0001 C CNN
F 3 "" H 750 1400 50  0000 C CNN
	1    750  1400
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P1-03
U 1 1 57079316
P 750 1200
F 0 "P1-03" H 750 1300 50  0000 C CNN
F 1 "CONN_01X01" V 850 1200 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 750 1200 50  0001 C CNN
F 3 "" H 750 1200 50  0000 C CNN
	1    750  1200
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P1-01
U 1 1 5707931C
P 750 1000
F 0 "P1-01" H 750 1100 50  0000 C CNN
F 1 "CONN_01X01" V 850 1000 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 750 1000 50  0001 C CNN
F 3 "" H 750 1000 50  0000 C CNN
	1    750  1000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1300 1750 1000 1750
Wire Wire Line
	1000 1750 1000 1800
Wire Wire Line
	1000 1800 950  1800
Wire Wire Line
	1300 1850 1050 1850
Wire Wire Line
	1050 1850 1050 2000
Wire Wire Line
	1050 2000 950  2000
Wire Wire Line
	1300 1950 1150 1950
Wire Wire Line
	1150 1950 1150 2200
Wire Wire Line
	1150 2200 950  2200
Wire Wire Line
	1300 2050 1250 2050
Wire Wire Line
	1250 2050 1250 2400
Wire Wire Line
	1250 2400 950  2400
Wire Wire Line
	1300 1650 1000 1650
Wire Wire Line
	1000 1650 1000 1600
Wire Wire Line
	1000 1600 950  1600
Wire Wire Line
	1300 1550 1050 1550
Wire Wire Line
	1050 1550 1050 1400
Wire Wire Line
	1050 1400 950  1400
Wire Wire Line
	1300 1450 1150 1450
Wire Wire Line
	1150 1450 1150 1200
Wire Wire Line
	1150 1200 950  1200
Wire Wire Line
	1300 1350 1250 1350
Wire Wire Line
	1250 1350 1250 1000
Wire Wire Line
	1250 1000 950  1000
$Comp
L CONN_02X08 P2
U 1 1 5707C110
P 3700 1700
F 0 "P2" H 3700 2150 50  0000 C CNN
F 1 "CONN_02X08" V 3700 1700 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x08" H 3700 500 50  0001 C CNN
F 3 "" H 3700 500 50  0000 C CNN
	1    3700 1700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P2-02
U 1 1 5707C116
P 4500 1000
F 0 "P2-02" H 4500 1100 50  0000 C CNN
F 1 "CONN_01X01" V 4600 1000 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4500 1000 50  0001 C CNN
F 3 "" H 4500 1000 50  0000 C CNN
	1    4500 1000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P2-04
U 1 1 5707C11C
P 4500 1200
F 0 "P2-04" H 4500 1300 50  0000 C CNN
F 1 "CONN_01X01" V 4600 1200 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4500 1200 50  0001 C CNN
F 3 "" H 4500 1200 50  0000 C CNN
	1    4500 1200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P2-06
U 1 1 5707C122
P 4500 1400
F 0 "P2-06" H 4500 1500 50  0000 C CNN
F 1 "CONN_01X01" V 4600 1400 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4500 1400 50  0001 C CNN
F 3 "" H 4500 1400 50  0000 C CNN
	1    4500 1400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P2-08
U 1 1 5707C128
P 4500 1600
F 0 "P2-08" H 4500 1700 50  0000 C CNN
F 1 "CONN_01X01" V 4600 1600 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4500 1600 50  0001 C CNN
F 3 "" H 4500 1600 50  0000 C CNN
	1    4500 1600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P2-10
U 1 1 5707C12E
P 4500 1800
F 0 "P2-10" H 4500 1900 50  0000 C CNN
F 1 "CONN_01X01" V 4600 1800 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4500 1800 50  0001 C CNN
F 3 "" H 4500 1800 50  0000 C CNN
	1    4500 1800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P2-12
U 1 1 5707C134
P 4500 2000
F 0 "P2-12" H 4500 2100 50  0000 C CNN
F 1 "CONN_01X01" V 4600 2000 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4500 2000 50  0001 C CNN
F 3 "" H 4500 2000 50  0000 C CNN
	1    4500 2000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P2-14
U 1 1 5707C13A
P 4500 2200
F 0 "P2-14" H 4500 2300 50  0000 C CNN
F 1 "CONN_01X01" V 4600 2200 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4500 2200 50  0001 C CNN
F 3 "" H 4500 2200 50  0000 C CNN
	1    4500 2200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P2-16
U 1 1 5707C140
P 4500 2400
F 0 "P2-16" H 4500 2500 50  0000 C CNN
F 1 "CONN_01X01" V 4600 2400 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4500 2400 50  0001 C CNN
F 3 "" H 4500 2400 50  0000 C CNN
	1    4500 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1650 4250 1650
Wire Wire Line
	4250 1650 4250 1600
Wire Wire Line
	4250 1600 4300 1600
Wire Wire Line
	3950 1550 4200 1550
Wire Wire Line
	4200 1550 4200 1400
Wire Wire Line
	4200 1400 4300 1400
Wire Wire Line
	3950 1450 4100 1450
Wire Wire Line
	4100 1450 4100 1200
Wire Wire Line
	4100 1200 4300 1200
Wire Wire Line
	3950 1350 4000 1350
Wire Wire Line
	4000 1350 4000 1000
Wire Wire Line
	4000 1000 4300 1000
Wire Wire Line
	3950 1750 4250 1750
Wire Wire Line
	4250 1750 4250 1800
Wire Wire Line
	4250 1800 4300 1800
Wire Wire Line
	3950 1850 4200 1850
Wire Wire Line
	4200 1850 4200 2000
Wire Wire Line
	4200 2000 4300 2000
Wire Wire Line
	3950 1950 4100 1950
Wire Wire Line
	4100 1950 4100 2200
Wire Wire Line
	4100 2200 4300 2200
Wire Wire Line
	3950 2050 4000 2050
Wire Wire Line
	4000 2050 4000 2400
Wire Wire Line
	4000 2400 4300 2400
$Comp
L CONN_01X01 P2-15
U 1 1 5707C15E
P 2900 2400
F 0 "P2-15" H 2900 2500 50  0000 C CNN
F 1 "CONN_01X01" V 3000 2400 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 2900 2400 50  0001 C CNN
F 3 "" H 2900 2400 50  0000 C CNN
	1    2900 2400
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P2-13
U 1 1 5707C164
P 2900 2200
F 0 "P2-13" H 2900 2300 50  0000 C CNN
F 1 "CONN_01X01" V 3000 2200 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 2900 2200 50  0001 C CNN
F 3 "" H 2900 2200 50  0000 C CNN
	1    2900 2200
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P2-11
U 1 1 5707C16A
P 2900 2000
F 0 "P2-11" H 2900 2100 50  0000 C CNN
F 1 "CONN_01X01" V 3000 2000 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 2900 2000 50  0001 C CNN
F 3 "" H 2900 2000 50  0000 C CNN
	1    2900 2000
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P2-09
U 1 1 5707C170
P 2900 1800
F 0 "P2-09" H 2900 1900 50  0000 C CNN
F 1 "CONN_01X01" V 3000 1800 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 2900 1800 50  0001 C CNN
F 3 "" H 2900 1800 50  0000 C CNN
	1    2900 1800
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P2-07
U 1 1 5707C176
P 2900 1600
F 0 "P2-07" H 2900 1700 50  0000 C CNN
F 1 "CONN_01X01" V 3000 1600 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 2900 1600 50  0001 C CNN
F 3 "" H 2900 1600 50  0000 C CNN
	1    2900 1600
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P2-05
U 1 1 5707C17C
P 2900 1400
F 0 "P2-05" H 2900 1500 50  0000 C CNN
F 1 "CONN_01X01" V 3000 1400 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 2900 1400 50  0001 C CNN
F 3 "" H 2900 1400 50  0000 C CNN
	1    2900 1400
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P2-03
U 1 1 5707C182
P 2900 1200
F 0 "P2-03" H 2900 1300 50  0000 C CNN
F 1 "CONN_01X01" V 3000 1200 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 2900 1200 50  0001 C CNN
F 3 "" H 2900 1200 50  0000 C CNN
	1    2900 1200
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P2-01
U 1 1 5707C188
P 2900 1000
F 0 "P2-01" H 2900 1100 50  0000 C CNN
F 1 "CONN_01X01" V 3000 1000 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 2900 1000 50  0001 C CNN
F 3 "" H 2900 1000 50  0000 C CNN
	1    2900 1000
	-1   0    0    1   
$EndComp
Wire Wire Line
	3450 1750 3150 1750
Wire Wire Line
	3150 1750 3150 1800
Wire Wire Line
	3150 1800 3100 1800
Wire Wire Line
	3450 1850 3200 1850
Wire Wire Line
	3200 1850 3200 2000
Wire Wire Line
	3200 2000 3100 2000
Wire Wire Line
	3450 1950 3300 1950
Wire Wire Line
	3300 1950 3300 2200
Wire Wire Line
	3300 2200 3100 2200
Wire Wire Line
	3450 2050 3400 2050
Wire Wire Line
	3400 2050 3400 2400
Wire Wire Line
	3400 2400 3100 2400
Wire Wire Line
	3450 1650 3150 1650
Wire Wire Line
	3150 1650 3150 1600
Wire Wire Line
	3150 1600 3100 1600
Wire Wire Line
	3450 1550 3200 1550
Wire Wire Line
	3200 1550 3200 1400
Wire Wire Line
	3200 1400 3100 1400
Wire Wire Line
	3450 1450 3300 1450
Wire Wire Line
	3300 1450 3300 1200
Wire Wire Line
	3300 1200 3100 1200
Wire Wire Line
	3450 1350 3400 1350
Wire Wire Line
	3400 1350 3400 1000
Wire Wire Line
	3400 1000 3100 1000
$Comp
L CONN_02X08 P3
U 1 1 5707CDD6
P 5750 1700
F 0 "P3" H 5750 2150 50  0000 C CNN
F 1 "CONN_02X08" V 5750 1700 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x08" H 5750 500 50  0001 C CNN
F 3 "" H 5750 500 50  0000 C CNN
	1    5750 1700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P3-02
U 1 1 5707CDDC
P 6550 1000
F 0 "P3-02" H 6550 1100 50  0000 C CNN
F 1 "CONN_01X01" V 6650 1000 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 6550 1000 50  0001 C CNN
F 3 "" H 6550 1000 50  0000 C CNN
	1    6550 1000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P3-04
U 1 1 5707CDE2
P 6550 1200
F 0 "P3-04" H 6550 1300 50  0000 C CNN
F 1 "CONN_01X01" V 6650 1200 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 6550 1200 50  0001 C CNN
F 3 "" H 6550 1200 50  0000 C CNN
	1    6550 1200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P3-06
U 1 1 5707CDE8
P 6550 1400
F 0 "P3-06" H 6550 1500 50  0000 C CNN
F 1 "CONN_01X01" V 6650 1400 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 6550 1400 50  0001 C CNN
F 3 "" H 6550 1400 50  0000 C CNN
	1    6550 1400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P3-08
U 1 1 5707CDEE
P 6550 1600
F 0 "P3-08" H 6550 1700 50  0000 C CNN
F 1 "CONN_01X01" V 6650 1600 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 6550 1600 50  0001 C CNN
F 3 "" H 6550 1600 50  0000 C CNN
	1    6550 1600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P3-10
U 1 1 5707CDF4
P 6550 1800
F 0 "P3-10" H 6550 1900 50  0000 C CNN
F 1 "CONN_01X01" V 6650 1800 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 6550 1800 50  0001 C CNN
F 3 "" H 6550 1800 50  0000 C CNN
	1    6550 1800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P3-12
U 1 1 5707CDFA
P 6550 2000
F 0 "P3-12" H 6550 2100 50  0000 C CNN
F 1 "CONN_01X01" V 6650 2000 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 6550 2000 50  0001 C CNN
F 3 "" H 6550 2000 50  0000 C CNN
	1    6550 2000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P3-14
U 1 1 5707CE00
P 6550 2200
F 0 "P3-14" H 6550 2300 50  0000 C CNN
F 1 "CONN_01X01" V 6650 2200 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 6550 2200 50  0001 C CNN
F 3 "" H 6550 2200 50  0000 C CNN
	1    6550 2200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P3-16
U 1 1 5707CE06
P 6550 2400
F 0 "P3-16" H 6550 2500 50  0000 C CNN
F 1 "CONN_01X01" V 6650 2400 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 6550 2400 50  0001 C CNN
F 3 "" H 6550 2400 50  0000 C CNN
	1    6550 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1650 6300 1650
Wire Wire Line
	6300 1650 6300 1600
Wire Wire Line
	6300 1600 6350 1600
Wire Wire Line
	6000 1550 6250 1550
Wire Wire Line
	6250 1550 6250 1400
Wire Wire Line
	6250 1400 6350 1400
Wire Wire Line
	6000 1450 6150 1450
Wire Wire Line
	6150 1450 6150 1200
Wire Wire Line
	6150 1200 6350 1200
Wire Wire Line
	6000 1350 6050 1350
Wire Wire Line
	6050 1350 6050 1000
Wire Wire Line
	6050 1000 6350 1000
Wire Wire Line
	6000 1750 6300 1750
Wire Wire Line
	6300 1750 6300 1800
Wire Wire Line
	6300 1800 6350 1800
Wire Wire Line
	6000 1850 6250 1850
Wire Wire Line
	6250 1850 6250 2000
Wire Wire Line
	6250 2000 6350 2000
Wire Wire Line
	6000 1950 6150 1950
Wire Wire Line
	6150 1950 6150 2200
Wire Wire Line
	6150 2200 6350 2200
Wire Wire Line
	6000 2050 6050 2050
Wire Wire Line
	6050 2050 6050 2400
Wire Wire Line
	6050 2400 6350 2400
$Comp
L CONN_01X01 P3-15
U 1 1 5707CE24
P 4950 2400
F 0 "P3-15" H 4950 2500 50  0000 C CNN
F 1 "CONN_01X01" V 5050 2400 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4950 2400 50  0001 C CNN
F 3 "" H 4950 2400 50  0000 C CNN
	1    4950 2400
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P3-13
U 1 1 5707CE2A
P 4950 2200
F 0 "P3-13" H 4950 2300 50  0000 C CNN
F 1 "CONN_01X01" V 5050 2200 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4950 2200 50  0001 C CNN
F 3 "" H 4950 2200 50  0000 C CNN
	1    4950 2200
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P3-11
U 1 1 5707CE30
P 4950 2000
F 0 "P3-11" H 4950 2100 50  0000 C CNN
F 1 "CONN_01X01" V 5050 2000 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4950 2000 50  0001 C CNN
F 3 "" H 4950 2000 50  0000 C CNN
	1    4950 2000
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P3-09
U 1 1 5707CE36
P 4950 1800
F 0 "P3-09" H 4950 1900 50  0000 C CNN
F 1 "CONN_01X01" V 5050 1800 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4950 1800 50  0001 C CNN
F 3 "" H 4950 1800 50  0000 C CNN
	1    4950 1800
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P3-07
U 1 1 5707CE3C
P 4950 1600
F 0 "P3-07" H 4950 1700 50  0000 C CNN
F 1 "CONN_01X01" V 5050 1600 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4950 1600 50  0001 C CNN
F 3 "" H 4950 1600 50  0000 C CNN
	1    4950 1600
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P3-05
U 1 1 5707CE42
P 4950 1400
F 0 "P3-05" H 4950 1500 50  0000 C CNN
F 1 "CONN_01X01" V 5050 1400 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4950 1400 50  0001 C CNN
F 3 "" H 4950 1400 50  0000 C CNN
	1    4950 1400
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P3-03
U 1 1 5707CE48
P 4950 1200
F 0 "P3-03" H 4950 1300 50  0000 C CNN
F 1 "CONN_01X01" V 5050 1200 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4950 1200 50  0001 C CNN
F 3 "" H 4950 1200 50  0000 C CNN
	1    4950 1200
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P3-01
U 1 1 5707CE4E
P 4950 1000
F 0 "P3-01" H 4950 1100 50  0000 C CNN
F 1 "CONN_01X01" V 5050 1000 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4950 1000 50  0001 C CNN
F 3 "" H 4950 1000 50  0000 C CNN
	1    4950 1000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 1750 5200 1750
Wire Wire Line
	5200 1750 5200 1800
Wire Wire Line
	5200 1800 5150 1800
Wire Wire Line
	5500 1850 5250 1850
Wire Wire Line
	5250 1850 5250 2000
Wire Wire Line
	5250 2000 5150 2000
Wire Wire Line
	5500 1950 5350 1950
Wire Wire Line
	5350 1950 5350 2200
Wire Wire Line
	5350 2200 5150 2200
Wire Wire Line
	5500 2050 5450 2050
Wire Wire Line
	5450 2050 5450 2400
Wire Wire Line
	5450 2400 5150 2400
Wire Wire Line
	5500 1650 5200 1650
Wire Wire Line
	5200 1650 5200 1600
Wire Wire Line
	5200 1600 5150 1600
Wire Wire Line
	5500 1550 5250 1550
Wire Wire Line
	5250 1550 5250 1400
Wire Wire Line
	5250 1400 5150 1400
Wire Wire Line
	5500 1450 5350 1450
Wire Wire Line
	5350 1450 5350 1200
Wire Wire Line
	5350 1200 5150 1200
Wire Wire Line
	5500 1350 5450 1350
Wire Wire Line
	5450 1350 5450 1000
Wire Wire Line
	5450 1000 5150 1000
$Comp
L CONN_02X08 P4
U 1 1 5707F545
P 7850 1700
F 0 "P4" H 7850 2150 50  0000 C CNN
F 1 "CONN_02X08" V 7850 1700 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x08" H 7850 500 50  0001 C CNN
F 3 "" H 7850 500 50  0000 C CNN
	1    7850 1700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P4-02
U 1 1 5707F54B
P 8650 1000
F 0 "P4-02" H 8650 1100 50  0000 C CNN
F 1 "CONN_01X01" V 8750 1000 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 8650 1000 50  0001 C CNN
F 3 "" H 8650 1000 50  0000 C CNN
	1    8650 1000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P4-04
U 1 1 5707F551
P 8650 1200
F 0 "P4-04" H 8650 1300 50  0000 C CNN
F 1 "CONN_01X01" V 8750 1200 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 8650 1200 50  0001 C CNN
F 3 "" H 8650 1200 50  0000 C CNN
	1    8650 1200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P4-06
U 1 1 5707F557
P 8650 1400
F 0 "P4-06" H 8650 1500 50  0000 C CNN
F 1 "CONN_01X01" V 8750 1400 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 8650 1400 50  0001 C CNN
F 3 "" H 8650 1400 50  0000 C CNN
	1    8650 1400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P4-08
U 1 1 5707F55D
P 8650 1600
F 0 "P4-08" H 8650 1700 50  0000 C CNN
F 1 "CONN_01X01" V 8750 1600 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 8650 1600 50  0001 C CNN
F 3 "" H 8650 1600 50  0000 C CNN
	1    8650 1600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P4-10
U 1 1 5707F563
P 8650 1800
F 0 "P4-10" H 8650 1900 50  0000 C CNN
F 1 "CONN_01X01" V 8750 1800 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 8650 1800 50  0001 C CNN
F 3 "" H 8650 1800 50  0000 C CNN
	1    8650 1800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P4-12
U 1 1 5707F569
P 8650 2000
F 0 "P4-12" H 8650 2100 50  0000 C CNN
F 1 "CONN_01X01" V 8750 2000 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 8650 2000 50  0001 C CNN
F 3 "" H 8650 2000 50  0000 C CNN
	1    8650 2000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P4-14
U 1 1 5707F56F
P 8650 2200
F 0 "P4-14" H 8650 2300 50  0000 C CNN
F 1 "CONN_01X01" V 8750 2200 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 8650 2200 50  0001 C CNN
F 3 "" H 8650 2200 50  0000 C CNN
	1    8650 2200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P4-16
U 1 1 5707F575
P 8650 2400
F 0 "P4-16" H 8650 2500 50  0000 C CNN
F 1 "CONN_01X01" V 8750 2400 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 8650 2400 50  0001 C CNN
F 3 "" H 8650 2400 50  0000 C CNN
	1    8650 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1650 8400 1650
Wire Wire Line
	8400 1650 8400 1600
Wire Wire Line
	8400 1600 8450 1600
Wire Wire Line
	8100 1550 8350 1550
Wire Wire Line
	8350 1550 8350 1400
Wire Wire Line
	8350 1400 8450 1400
Wire Wire Line
	8100 1450 8250 1450
Wire Wire Line
	8250 1450 8250 1200
Wire Wire Line
	8250 1200 8450 1200
Wire Wire Line
	8100 1350 8150 1350
Wire Wire Line
	8150 1350 8150 1000
Wire Wire Line
	8150 1000 8450 1000
Wire Wire Line
	8100 1750 8400 1750
Wire Wire Line
	8400 1750 8400 1800
Wire Wire Line
	8400 1800 8450 1800
Wire Wire Line
	8100 1850 8350 1850
Wire Wire Line
	8350 1850 8350 2000
Wire Wire Line
	8350 2000 8450 2000
Wire Wire Line
	8100 1950 8250 1950
Wire Wire Line
	8250 1950 8250 2200
Wire Wire Line
	8250 2200 8450 2200
Wire Wire Line
	8100 2050 8150 2050
Wire Wire Line
	8150 2050 8150 2400
Wire Wire Line
	8150 2400 8450 2400
$Comp
L CONN_01X01 P4-15
U 1 1 5707F593
P 7050 2400
F 0 "P4-15" H 7050 2500 50  0000 C CNN
F 1 "CONN_01X01" V 7150 2400 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 7050 2400 50  0001 C CNN
F 3 "" H 7050 2400 50  0000 C CNN
	1    7050 2400
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P4-13
U 1 1 5707F599
P 7050 2200
F 0 "P4-13" H 7050 2300 50  0000 C CNN
F 1 "CONN_01X01" V 7150 2200 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 7050 2200 50  0001 C CNN
F 3 "" H 7050 2200 50  0000 C CNN
	1    7050 2200
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P4-11
U 1 1 5707F59F
P 7050 2000
F 0 "P4-11" H 7050 2100 50  0000 C CNN
F 1 "CONN_01X01" V 7150 2000 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 7050 2000 50  0001 C CNN
F 3 "" H 7050 2000 50  0000 C CNN
	1    7050 2000
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P4-09
U 1 1 5707F5A5
P 7050 1800
F 0 "P4-09" H 7050 1900 50  0000 C CNN
F 1 "CONN_01X01" V 7150 1800 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 7050 1800 50  0001 C CNN
F 3 "" H 7050 1800 50  0000 C CNN
	1    7050 1800
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P4-07
U 1 1 5707F5AB
P 7050 1600
F 0 "P4-07" H 7050 1700 50  0000 C CNN
F 1 "CONN_01X01" V 7150 1600 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 7050 1600 50  0001 C CNN
F 3 "" H 7050 1600 50  0000 C CNN
	1    7050 1600
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P4-05
U 1 1 5707F5B1
P 7050 1400
F 0 "P4-05" H 7050 1500 50  0000 C CNN
F 1 "CONN_01X01" V 7150 1400 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 7050 1400 50  0001 C CNN
F 3 "" H 7050 1400 50  0000 C CNN
	1    7050 1400
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P4-03
U 1 1 5707F5B7
P 7050 1200
F 0 "P4-03" H 7050 1300 50  0000 C CNN
F 1 "CONN_01X01" V 7150 1200 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 7050 1200 50  0001 C CNN
F 3 "" H 7050 1200 50  0000 C CNN
	1    7050 1200
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P4-01
U 1 1 5707F5BD
P 7050 1000
F 0 "P4-01" H 7050 1100 50  0000 C CNN
F 1 "CONN_01X01" V 7150 1000 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 7050 1000 50  0001 C CNN
F 3 "" H 7050 1000 50  0000 C CNN
	1    7050 1000
	-1   0    0    1   
$EndComp
Wire Wire Line
	7600 1750 7300 1750
Wire Wire Line
	7300 1750 7300 1800
Wire Wire Line
	7300 1800 7250 1800
Wire Wire Line
	7600 1850 7350 1850
Wire Wire Line
	7350 1850 7350 2000
Wire Wire Line
	7350 2000 7250 2000
Wire Wire Line
	7600 1950 7450 1950
Wire Wire Line
	7450 1950 7450 2200
Wire Wire Line
	7450 2200 7250 2200
Wire Wire Line
	7600 2050 7550 2050
Wire Wire Line
	7550 2050 7550 2400
Wire Wire Line
	7550 2400 7250 2400
Wire Wire Line
	7600 1650 7300 1650
Wire Wire Line
	7300 1650 7300 1600
Wire Wire Line
	7300 1600 7250 1600
Wire Wire Line
	7600 1550 7350 1550
Wire Wire Line
	7350 1550 7350 1400
Wire Wire Line
	7350 1400 7250 1400
Wire Wire Line
	7600 1450 7450 1450
Wire Wire Line
	7450 1450 7450 1200
Wire Wire Line
	7450 1200 7250 1200
Wire Wire Line
	7600 1350 7550 1350
Wire Wire Line
	7550 1350 7550 1000
Wire Wire Line
	7550 1000 7250 1000
$Comp
L CONN_01X01 H1
U 1 1 5708FC5A
P 1050 3900
F 0 "H1" H 1050 4000 50  0000 C CNN
F 1 "CONN_01X01" V 1150 3900 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 1050 3900 50  0001 C CNN
F 3 "" H 1050 3900 50  0000 C CNN
	1    1050 3900
	1    0    0    -1  
$EndComp
NoConn ~ 850  3900
$Comp
L CONN_01X01 H2
U 1 1 5709555A
P 1050 4150
F 0 "H2" H 1050 4250 50  0000 C CNN
F 1 "CONN_01X01" V 1150 4150 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 1050 4150 50  0001 C CNN
F 3 "" H 1050 4150 50  0000 C CNN
	1    1050 4150
	1    0    0    -1  
$EndComp
NoConn ~ 850  4150
$Comp
L CONN_01X01 H3
U 1 1 570955FC
P 1050 4400
F 0 "H3" H 1050 4500 50  0000 C CNN
F 1 "CONN_01X01" V 1150 4400 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 1050 4400 50  0001 C CNN
F 3 "" H 1050 4400 50  0000 C CNN
	1    1050 4400
	1    0    0    -1  
$EndComp
NoConn ~ 850  4400
$Comp
L CONN_01X01 H4
U 1 1 5709C2E0
P 1050 4650
F 0 "H4" H 1050 4750 50  0000 C CNN
F 1 "CONN_01X01" V 1150 4650 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 1050 4650 50  0001 C CNN
F 3 "" H 1050 4650 50  0000 C CNN
	1    1050 4650
	1    0    0    -1  
$EndComp
NoConn ~ 850  4650
$Comp
L CONN_01X01 H5
U 1 1 5709C463
P 1050 4900
F 0 "H5" H 1050 5000 50  0000 C CNN
F 1 "CONN_01X01" V 1150 4900 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 1050 4900 50  0001 C CNN
F 3 "" H 1050 4900 50  0000 C CNN
	1    1050 4900
	1    0    0    -1  
$EndComp
NoConn ~ 850  4900
$Comp
L CONN_01X01 H6
U 1 1 5709C46A
P 1050 5150
F 0 "H6" H 1050 5250 50  0000 C CNN
F 1 "CONN_01X01" V 1150 5150 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 1050 5150 50  0001 C CNN
F 3 "" H 1050 5150 50  0000 C CNN
	1    1050 5150
	1    0    0    -1  
$EndComp
NoConn ~ 850  5150
$Comp
L CONN_01X01 H7
U 1 1 5709C471
P 1050 5400
F 0 "H7" H 1050 5500 50  0000 C CNN
F 1 "CONN_01X01" V 1150 5400 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 1050 5400 50  0001 C CNN
F 3 "" H 1050 5400 50  0000 C CNN
	1    1050 5400
	1    0    0    -1  
$EndComp
NoConn ~ 850  5400
$Comp
L CONN_01X01 H8
U 1 1 5709C478
P 1050 5650
F 0 "H8" H 1050 5750 50  0000 C CNN
F 1 "CONN_01X01" V 1150 5650 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 1050 5650 50  0001 C CNN
F 3 "" H 1050 5650 50  0000 C CNN
	1    1050 5650
	1    0    0    -1  
$EndComp
NoConn ~ 850  5650
$Comp
L CONN_01X01 H9
U 1 1 5709C76F
P 3150 5650
F 0 "H9" H 3150 5750 50  0000 C CNN
F 1 "CONN_01X01" V 3250 5650 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 3150 5650 50  0001 C CNN
F 3 "" H 3150 5650 50  0000 C CNN
	1    3150 5650
	-1   0    0    1   
$EndComp
NoConn ~ 3350 5650
$Comp
L CONN_01X01 H10
U 1 1 5709C776
P 3150 5400
F 0 "H10" H 3150 5500 50  0000 C CNN
F 1 "CONN_01X01" V 3250 5400 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 3150 5400 50  0001 C CNN
F 3 "" H 3150 5400 50  0000 C CNN
	1    3150 5400
	-1   0    0    1   
$EndComp
NoConn ~ 3350 5400
$Comp
L CONN_01X01 H11
U 1 1 5709C77D
P 3150 5150
F 0 "H11" H 3150 5250 50  0000 C CNN
F 1 "CONN_01X01" V 3250 5150 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 3150 5150 50  0001 C CNN
F 3 "" H 3150 5150 50  0000 C CNN
	1    3150 5150
	-1   0    0    1   
$EndComp
NoConn ~ 3350 5150
$Comp
L CONN_01X01 H12
U 1 1 5709C784
P 3150 4900
F 0 "H12" H 3150 5000 50  0000 C CNN
F 1 "CONN_01X01" V 3250 4900 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 3150 4900 50  0001 C CNN
F 3 "" H 3150 4900 50  0000 C CNN
	1    3150 4900
	-1   0    0    1   
$EndComp
NoConn ~ 3350 4900
$Comp
L CONN_01X01 H13
U 1 1 5709C78B
P 3150 4650
F 0 "H13" H 3150 4750 50  0000 C CNN
F 1 "CONN_01X01" V 3250 4650 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 3150 4650 50  0001 C CNN
F 3 "" H 3150 4650 50  0000 C CNN
	1    3150 4650
	-1   0    0    1   
$EndComp
NoConn ~ 3350 4650
$Comp
L CONN_01X01 H14
U 1 1 5709C792
P 3150 4400
F 0 "H14" H 3150 4500 50  0000 C CNN
F 1 "CONN_01X01" V 3250 4400 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 3150 4400 50  0001 C CNN
F 3 "" H 3150 4400 50  0000 C CNN
	1    3150 4400
	-1   0    0    1   
$EndComp
NoConn ~ 3350 4400
$Comp
L CONN_01X01 H15
U 1 1 5709C799
P 3150 4150
F 0 "H15" H 3150 4250 50  0000 C CNN
F 1 "CONN_01X01" V 3250 4150 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 3150 4150 50  0001 C CNN
F 3 "" H 3150 4150 50  0000 C CNN
	1    3150 4150
	-1   0    0    1   
$EndComp
NoConn ~ 3350 4150
$Comp
L CONN_01X01 H16
U 1 1 5709C7A0
P 3150 3900
F 0 "H16" H 3150 4000 50  0000 C CNN
F 1 "CONN_01X01" V 3250 3900 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 3150 3900 50  0001 C CNN
F 3 "" H 3150 3900 50  0000 C CNN
	1    3150 3900
	-1   0    0    1   
$EndComp
NoConn ~ 3350 3900
$Comp
L CONN_01X01 H17
U 1 1 5709C997
P 1400 5850
F 0 "H17" H 1400 5950 50  0000 C CNN
F 1 "CONN_01X01" V 1500 5850 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 1400 5850 50  0001 C CNN
F 3 "" H 1400 5850 50  0000 C CNN
	1    1400 5850
	0    -1   -1   0   
$EndComp
NoConn ~ 1400 6050
$Comp
L CONN_01X01 H18
U 1 1 5709C99E
P 1650 5850
F 0 "H18" H 1650 5950 50  0000 C CNN
F 1 "CONN_01X01" V 1750 5850 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 1650 5850 50  0001 C CNN
F 3 "" H 1650 5850 50  0000 C CNN
	1    1650 5850
	0    -1   -1   0   
$EndComp
NoConn ~ 1650 6050
$Comp
L CONN_01X01 H19
U 1 1 5709C9A5
P 1900 5850
F 0 "H19" H 1900 5950 50  0000 C CNN
F 1 "CONN_01X01" V 2000 5850 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 1900 5850 50  0001 C CNN
F 3 "" H 1900 5850 50  0000 C CNN
	1    1900 5850
	0    -1   -1   0   
$EndComp
NoConn ~ 1900 6050
$Comp
L CONN_01X01 H20
U 1 1 5709C9AC
P 2150 5850
F 0 "H20" H 2150 5950 50  0000 C CNN
F 1 "CONN_01X01" V 2250 5850 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 2150 5850 50  0001 C CNN
F 3 "" H 2150 5850 50  0000 C CNN
	1    2150 5850
	0    -1   -1   0   
$EndComp
NoConn ~ 2150 6050
$Comp
L CONN_01X01 H21
U 1 1 5709C9B3
P 2400 5850
F 0 "H21" H 2400 5950 50  0000 C CNN
F 1 "CONN_01X01" V 2500 5850 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 2400 5850 50  0001 C CNN
F 3 "" H 2400 5850 50  0000 C CNN
	1    2400 5850
	0    -1   -1   0   
$EndComp
NoConn ~ 2400 6050
$Comp
L CONN_01X01 H22
U 1 1 5709C9BA
P 2650 5850
F 0 "H22" H 2650 5950 50  0000 C CNN
F 1 "CONN_01X01" V 2750 5850 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 2650 5850 50  0001 C CNN
F 3 "" H 2650 5850 50  0000 C CNN
	1    2650 5850
	0    -1   -1   0   
$EndComp
NoConn ~ 2650 6050
$Comp
L CONN_01X01 H23
U 1 1 5709C9C1
P 2900 5850
F 0 "H23" H 2900 5950 50  0000 C CNN
F 1 "CONN_01X01" V 3000 5850 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 2900 5850 50  0001 C CNN
F 3 "" H 2900 5850 50  0000 C CNN
	1    2900 5850
	0    -1   -1   0   
$EndComp
NoConn ~ 2900 6050
$Comp
L CONN_01X01 H24
U 1 1 5709F9C5
P 2850 3650
F 0 "H24" H 2850 3750 50  0000 C CNN
F 1 "CONN_01X01" V 2950 3650 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 2850 3650 50  0001 C CNN
F 3 "" H 2850 3650 50  0000 C CNN
	1    2850 3650
	0    1    1    0   
$EndComp
NoConn ~ 2850 3450
$Comp
L CONN_01X01 H25
U 1 1 5709F9CC
P 2600 3650
F 0 "H25" H 2600 3750 50  0000 C CNN
F 1 "CONN_01X01" V 2700 3650 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 2600 3650 50  0001 C CNN
F 3 "" H 2600 3650 50  0000 C CNN
	1    2600 3650
	0    1    1    0   
$EndComp
NoConn ~ 2600 3450
$Comp
L CONN_01X01 H26
U 1 1 5709F9D3
P 2350 3650
F 0 "H26" H 2350 3750 50  0000 C CNN
F 1 "CONN_01X01" V 2450 3650 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 2350 3650 50  0001 C CNN
F 3 "" H 2350 3650 50  0000 C CNN
	1    2350 3650
	0    1    1    0   
$EndComp
NoConn ~ 2350 3450
$Comp
L CONN_01X01 H27
U 1 1 5709F9DA
P 2100 3650
F 0 "H27" H 2100 3750 50  0000 C CNN
F 1 "CONN_01X01" V 2200 3650 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 2100 3650 50  0001 C CNN
F 3 "" H 2100 3650 50  0000 C CNN
	1    2100 3650
	0    1    1    0   
$EndComp
NoConn ~ 2100 3450
$Comp
L CONN_01X01 H28
U 1 1 5709F9E1
P 1850 3650
F 0 "H28" H 1850 3750 50  0000 C CNN
F 1 "CONN_01X01" V 1950 3650 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 1850 3650 50  0001 C CNN
F 3 "" H 1850 3650 50  0000 C CNN
	1    1850 3650
	0    1    1    0   
$EndComp
NoConn ~ 1850 3450
$Comp
L CONN_01X01 H29
U 1 1 5709F9E8
P 1600 3650
F 0 "H29" H 1600 3750 50  0000 C CNN
F 1 "CONN_01X01" V 1700 3650 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 1600 3650 50  0001 C CNN
F 3 "" H 1600 3650 50  0000 C CNN
	1    1600 3650
	0    1    1    0   
$EndComp
NoConn ~ 1600 3450
$Comp
L CONN_01X01 H30
U 1 1 5709F9EF
P 1350 3650
F 0 "H30" H 1350 3750 50  0000 C CNN
F 1 "CONN_01X01" V 1450 3650 50  0001 C CNN
F 2 "Arduino_Uno:Arduino_1pin" H 1350 3650 50  0001 C CNN
F 3 "" H 1350 3650 50  0000 C CNN
	1    1350 3650
	0    1    1    0   
$EndComp
NoConn ~ 1350 3450
Text Notes 1850 3250 0    60   ~ 0
HOLES
$EndSCHEMATC
