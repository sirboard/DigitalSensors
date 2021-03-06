EESchema Schematic File Version 4
LIBS:CCS811-cache
EELAYER 29 0
EELAYER END
$Descr User 7874 5906
encoding utf-8
Sheet 1 1
Title "CCS811 Breakout with 5V Level Shift"
Date "2020-01-09"
Rev "1"
Comp "SirBoard"
Comment1 "TVOC Range = 0ppb - 64000ppb "
Comment2 "eCO2 Range = 400ppm - 64000ppm "
Comment3 "400kHz I2C"
Comment4 "Digital eCO2 and VOC Sensor"
$EndDescr
Wire Wire Line
	5200 1525 5200 1725
Wire Wire Line
	5200 1725 5850 1725
Connection ~ 5850 1725
Wire Wire Line
	5550 1000 5200 1000
Wire Wire Line
	5200 1000 5200 1100
Wire Wire Line
	5200 1100 5550 1100
Wire Wire Line
	5200 1100 5200 1225
Connection ~ 5200 1100
Wire Wire Line
	6150 1000 6450 1000
Wire Wire Line
	6450 1000 6450 1200
Text GLabel 4900 1000 0    50   Input ~ 0
5V
Wire Wire Line
	4900 1000 5200 1000
Connection ~ 5200 1000
Text GLabel 6775 1000 2    50   Input ~ 0
3V3
Connection ~ 6450 1000
$Comp
L power:GND #PWR0101
U 1 1 5DB78905
P 5850 1800
F 0 "#PWR0101" H 5850 1550 50  0001 C CNN
F 1 "GND" H 5854 1628 50  0000 C CNN
F 2 "" H 5850 1800 50  0001 C CNN
F 3 "" H 5850 1800 50  0001 C CNN
	1    5850 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1800 5850 1725
Text GLabel 4950 2300 0    50   Input ~ 0
3V3
Text GLabel 1125 650  0    50   Input ~ 0
5V
Wire Wire Line
	6450 1725 5850 1725
Wire Wire Line
	6450 1500 6450 1725
$Comp
L Regulator_Linear:AP2127K-3.3 U1
U 1 1 5DC7F7BD
P 5850 1100
F 0 "U1" H 5850 1440 50  0000 C CNN
F 1 "AP2127K-3.3" H 5850 1350 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5850 1425 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP2127.pdf" H 5850 1200 50  0001 C CNN
F 4 "C156285" H 5850 1100 50  0001 C CNN "Part"
	1    5850 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1400 5850 1725
$Comp
L Device:Q_DUAL_NMOS_S1G1D2S2G2D1 Q1
U 1 1 5DCC5310
P 1425 1650
F 0 "Q1" H 1631 1650 50  0000 L CNN
F 1 "BSS138DW" H 1630 1605 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 1625 1650 50  0001 C CNN
F 3 "~" H 1625 1650 50  0001 C CNN
	1    1425 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_DUAL_NMOS_S1G1D2S2G2D1 Q1
U 2 1 5DCC5316
P 2225 1650
F 0 "Q1" H 2430 1650 50  0000 L CNN
F 1 "BSS138DW" H 2430 1605 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 2425 1650 50  0001 C CNN
F 3 "~" H 2425 1650 50  0001 C CNN
	2    2225 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 5DCC531C
P 1525 950
F 0 "R2" H 1593 995 50  0000 L CNN
F 1 "4K7" H 1593 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1565 940 50  0001 C CNN
F 3 "~" H 1525 950 50  0001 C CNN
F 4 "C99782" H 1525 950 50  0001 C CNN "Part"
	1    1525 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 5DCC5322
P 2325 950
F 0 "R4" H 2393 995 50  0000 L CNN
F 1 "4K7" H 2393 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2365 940 50  0001 C CNN
F 3 "~" H 2325 950 50  0001 C CNN
F 4 "C99782" H 2325 950 50  0001 C CNN "Part"
	1    2325 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 5DCC5328
P 1275 2050
F 0 "R1" V 1072 2050 50  0000 C CNN
F 1 "4K7" V 1162 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1315 2040 50  0001 C CNN
F 3 "~" H 1275 2050 50  0001 C CNN
F 4 "C99782" V 1275 2050 50  0001 C CNN "Part"
	1    1275 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	2325 650  2325 800 
Wire Wire Line
	1525 800  1525 650 
Wire Wire Line
	2325 1100 2325 1250
Wire Wire Line
	1225 1650 1025 1650
Wire Wire Line
	1025 1650 1025 2050
Wire Wire Line
	1025 2050 1125 2050
Wire Wire Line
	1425 2050 1525 2050
Wire Wire Line
	1525 2050 1525 1850
Wire Wire Line
	1875 2050 1775 2050
Wire Wire Line
	1775 2050 1775 1650
Wire Wire Line
	1775 1650 2025 1650
Wire Wire Line
	2175 2050 2325 2050
Wire Wire Line
	2325 2050 2325 1850
Wire Wire Line
	1125 650  1525 650 
Connection ~ 1525 650 
Text GLabel 775  1400 0    50   Input ~ 0
3V3
Wire Wire Line
	775  1400 1025 1400
Wire Wire Line
	1025 1400 1025 1650
Connection ~ 1025 1650
Wire Wire Line
	1525 1100 1525 1250
Wire Wire Line
	1025 1400 1775 1400
Wire Wire Line
	1775 1400 1775 1650
Connection ~ 1025 1400
Connection ~ 1775 1650
Text GLabel 1475 2300 0    50   Input ~ 0
SCL_3V3
Text GLabel 2275 2300 0    50   Input ~ 0
SDA_3V3
Wire Wire Line
	2325 2050 2325 2300
Wire Wire Line
	2325 2300 2275 2300
Connection ~ 2325 2050
Wire Wire Line
	1525 2050 1525 2300
Wire Wire Line
	1525 2300 1475 2300
Connection ~ 1525 2050
Text GLabel 1625 1250 2    50   Input ~ 0
SCL_5V
Text GLabel 2425 1250 2    50   Input ~ 0
SDA_5V
Connection ~ 2325 1250
Wire Wire Line
	2325 1250 2325 1450
Wire Wire Line
	1625 1250 1525 1250
Connection ~ 1525 1250
Wire Wire Line
	1525 1250 1525 1450
Wire Wire Line
	2325 1250 2425 1250
$Comp
L Mechanical:MountingHole H4
U 1 1 5DB4A072
P 1975 3075
F 0 "H4" H 2075 3120 50  0000 L CNN
F 1 "MountingHole" H 2075 3030 50  0000 L CNN
F 2 "SirBoardLibrary:MountingHole_M2.5_SirBoard" H 1975 3075 50  0001 C CNN
F 3 "~" H 1975 3075 50  0001 C CNN
	1    1975 3075
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5DB4A06C
P 1225 3075
F 0 "H3" H 1325 3120 50  0000 L CNN
F 1 "MountingHole" H 1325 3030 50  0000 L CNN
F 2 "SirBoardLibrary:MountingHole_M2.5_SirBoard" H 1225 3075 50  0001 C CNN
F 3 "~" H 1225 3075 50  0001 C CNN
	1    1225 3075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5DCCDF08
P 6300 3800
F 0 "#PWR0106" H 6300 3550 50  0001 C CNN
F 1 "GND" H 6304 3628 50  0000 C CNN
F 2 "" H 6300 3800 50  0001 C CNN
F 3 "" H 6300 3800 50  0001 C CNN
	1    6300 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1000 6775 1000
$Comp
L Mechanical:MountingHole H2
U 1 1 5DF50F6A
P 1975 3350
F 0 "H2" H 2075 3395 50  0000 L CNN
F 1 "MountingHole" H 2075 3305 50  0000 L CNN
F 2 "SirBoardLibrary:MountingHole_M2.5_SirBoard" H 1975 3350 50  0001 C CNN
F 3 "~" H 1975 3350 50  0001 C CNN
	1    1975 3350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5DF50F70
P 1225 3350
F 0 "H1" H 1325 3395 50  0000 L CNN
F 1 "MountingHole" H 1325 3305 50  0000 L CNN
F 2 "SirBoardLibrary:MountingHole_M2.5_SirBoard" H 1225 3350 50  0001 C CNN
F 3 "~" H 1225 3350 50  0001 C CNN
	1    1225 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 5DCC533A
P 2025 2050
F 0 "R3" V 1822 2050 50  0000 C CNN
F 1 "4K7" V 1912 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2065 2040 50  0001 C CNN
F 3 "~" H 2025 2050 50  0001 C CNN
F 4 "C99782" V 2025 2050 50  0001 C CNN "Part"
	1    2025 2050
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5E0038E9
P 5200 1375
F 0 "C1" H 5315 1420 50  0000 L CNN
F 1 "1uF" H 5315 1330 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5238 1225 50  0001 C CNN
F 3 "~" H 5200 1375 50  0001 C CNN
F 4 "C29936" H 5200 1375 50  0001 C CNN "Part"
	1    5200 1375
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5E00557E
P 6450 1350
F 0 "C3" H 6565 1395 50  0000 L CNN
F 1 "1uF" H 6565 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6488 1200 50  0001 C CNN
F 3 "~" H 6450 1350 50  0001 C CNN
F 4 "C29936" H 6450 1350 50  0001 C CNN "Part"
	1    6450 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5E00768C
P 6975 3100
F 0 "C5" H 7090 3145 50  0000 L CNN
F 1 "4.7uF" H 7090 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7013 2950 50  0001 C CNN
F 3 "~" H 6975 3100 50  0001 C CNN
F 4 "C87998" H 6975 3100 50  0001 C CNN "Part"
	1    6975 3100
	1    0    0    -1  
$EndComp
Text GLabel 5900 3000 0    50   Input ~ 0
SDA_3V3
Text GLabel 5900 3100 0    50   Input ~ 0
SCL_3V3
Wire Wire Line
	6300 3800 6300 3750
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5E0CE064
P 1500 4325
F 0 "J1" H 1579 4272 50  0000 L CNN
F 1 "Conn_01x04" H 1579 4227 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1500 4325 50  0001 C CNN
F 3 "~" H 1500 4325 50  0001 C CNN
	1    1500 4325
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5E0D053B
P 1850 4325
F 0 "J2" H 1929 4272 50  0000 L CNN
F 1 "Conn_01x04" H 1929 4227 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1850 4325 50  0001 C CNN
F 3 "~" H 1850 4325 50  0001 C CNN
	1    1850 4325
	-1   0    0    -1  
$EndComp
$Comp
L Sensor_Gas:CCS811 U2
U 1 1 5E1AAC5B
P 6300 3100
F 0 "U2" H 6375 3650 50  0000 C CNN
F 1 "CCS811" H 6475 3575 50  0000 C CNN
F 2 "Package_LGA:AMS_LGA-10-1EP_2.7x4mm_P0.6mm" H 6300 2500 50  0001 C CNN
F 3 "http://ams.com/eng/Products/Environmental-Sensors/Air-Quality-Sensors/CCS811" H 6300 2900 50  0001 C CNN
F 4 "C141807" H 6300 3100 50  0001 C CNN "Part"
	1    6300 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2900 6775 2900
Wire Wire Line
	6775 2900 6775 3000
Wire Wire Line
	6775 3000 6700 3000
Wire Wire Line
	6300 2600 6300 2300
Wire Wire Line
	6300 2300 6975 2300
Wire Wire Line
	6975 2300 6975 2950
Wire Wire Line
	6975 3250 6975 3750
Wire Wire Line
	6975 3750 6300 3750
Wire Wire Line
	6300 3750 6300 3600
Text GLabel 5900 2900 0    50   Input ~ 0
nINT3V3
Text GLabel 5900 3300 0    50   Input ~ 0
nRST_3V3
Connection ~ 6300 3750
Wire Wire Line
	4950 2300 5025 2300
Connection ~ 6300 2300
Wire Wire Line
	1525 650  2325 650 
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5E25A3F2
P 5025 2550
F 0 "JP1" V 5025 2700 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 5025 2663 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5025 2550 50  0001 C CNN
F 3 "~" H 5025 2550 50  0001 C CNN
	1    5025 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R11
U 1 1 5E25F57F
P 5025 3025
F 0 "R11" H 4925 2925 50  0000 C CNN
F 1 "10K" H 4900 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5065 3015 50  0001 C CNN
F 3 "~" H 5025 3025 50  0001 C CNN
F 4 "C99198" V 5025 3025 50  0001 C CNN "Part"
	1    5025 3025
	-1   0    0    1   
$EndComp
Wire Wire Line
	5025 2400 5025 2300
Connection ~ 5025 2300
Wire Wire Line
	5025 2300 6300 2300
Wire Wire Line
	5025 2700 5025 2800
Wire Wire Line
	5025 3175 5025 3750
Wire Wire Line
	5025 2800 5900 2800
Connection ~ 5025 2800
Wire Wire Line
	5025 2800 5025 2875
Text GLabel 1300 4425 0    50   Input ~ 0
GND
Text GLabel 1300 4225 0    50   Input ~ 0
5V
Text GLabel 1300 4325 0    50   Input ~ 0
3V3
Text GLabel 2050 4225 2    50   Input ~ 0
SCL_5V
Text GLabel 2050 4325 2    50   Input ~ 0
SDA_5V
Text GLabel 1300 4525 0    50   Input ~ 0
nINT5V
Text GLabel 2050 4525 2    50   Input ~ 0
nRST_5V
Wire Wire Line
	5025 3750 6300 3750
Text GLabel 5900 3400 0    50   Input ~ 0
nWake_3V3
Text GLabel 2050 4425 2    50   Input ~ 0
nWake_5V
$Comp
L Device:R_US R8
U 1 1 5E19D75F
P 3725 3175
F 0 "R8" H 3793 3220 50  0000 L CNN
F 1 "100K" H 3793 3130 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3765 3165 50  0001 C CNN
F 3 "~" H 3725 3175 50  0001 C CNN
F 4 "C14675" H 3725 3175 50  0001 C CNN "Part"
	1    3725 3175
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5E19B9C7
P 4050 3575
F 0 "D1" H 4050 3789 50  0000 C CNN
F 1 "1N4148" H 4050 3699 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-523" H 4050 3575 50  0001 C CNN
F 3 "~" H 4050 3575 50  0001 C CNN
F 4 "C83482" H 4050 3575 50  0001 C CNN "Part"
	1    4050 3575
	-1   0    0    -1  
$EndComp
Text GLabel 3550 3575 0    50   Input ~ 0
nWake_3V3
Text GLabel 3075 2300 0    50   Input ~ 0
nINT3V3
Text GLabel 3875 2300 0    50   Input ~ 0
nRST_3V3
Text GLabel 4025 1250 2    50   Input ~ 0
nRST_5V
Text GLabel 3225 1250 2    50   Input ~ 0
nINT_5V
Text GLabel 4300 3575 2    50   Input ~ 0
nWake_5V
Text GLabel 3650 2800 0    50   Input ~ 0
3V3
Wire Wire Line
	3650 2800 3725 2800
Wire Wire Line
	3725 2800 3725 3025
Wire Wire Line
	3725 3325 3725 3575
Wire Wire Line
	3725 3575 3900 3575
Wire Wire Line
	4200 3575 4300 3575
Connection ~ 3725 3575
Wire Wire Line
	3550 3575 3725 3575
$Comp
L Device:Q_DUAL_NMOS_S1G1D2S2G2D1 Q2
U 1 1 5E1E18A4
P 3025 1650
F 0 "Q2" H 3231 1650 50  0000 L CNN
F 1 "BSS138DW" H 3230 1605 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 3225 1650 50  0001 C CNN
F 3 "~" H 3225 1650 50  0001 C CNN
	1    3025 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_DUAL_NMOS_S1G1D2S2G2D1 Q2
U 2 1 5E1E18AA
P 3825 1650
F 0 "Q2" H 4030 1650 50  0000 L CNN
F 1 "BSS138DW" H 4030 1605 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 4025 1650 50  0001 C CNN
F 3 "~" H 4025 1650 50  0001 C CNN
	2    3825 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R6
U 1 1 5E1E18B1
P 3125 950
F 0 "R6" H 3193 995 50  0000 L CNN
F 1 "4K7" H 3193 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3165 940 50  0001 C CNN
F 3 "~" H 3125 950 50  0001 C CNN
F 4 "C99782" H 3125 950 50  0001 C CNN "Part"
	1    3125 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R9
U 1 1 5E1E18B8
P 3925 950
F 0 "R9" H 3993 995 50  0000 L CNN
F 1 "4K7" H 3993 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3965 940 50  0001 C CNN
F 3 "~" H 3925 950 50  0001 C CNN
F 4 "C99782" H 3925 950 50  0001 C CNN "Part"
	1    3925 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 5E1E18BF
P 2875 2050
F 0 "R5" V 2672 2050 50  0000 C CNN
F 1 "4K7" V 2762 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2915 2040 50  0001 C CNN
F 3 "~" H 2875 2050 50  0001 C CNN
F 4 "C99782" V 2875 2050 50  0001 C CNN "Part"
	1    2875 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	3925 650  3925 800 
Wire Wire Line
	3125 800  3125 650 
Wire Wire Line
	3925 1100 3925 1250
Wire Wire Line
	2825 1650 2625 1650
Wire Wire Line
	2625 1650 2625 2050
Wire Wire Line
	2625 2050 2725 2050
Wire Wire Line
	3025 2050 3125 2050
Wire Wire Line
	3125 2050 3125 1850
Wire Wire Line
	3475 2050 3375 2050
Wire Wire Line
	3375 2050 3375 1650
Wire Wire Line
	3375 1650 3625 1650
Wire Wire Line
	3775 2050 3925 2050
Wire Wire Line
	3925 2050 3925 1850
Wire Wire Line
	2625 1400 2625 1650
Connection ~ 2625 1650
Wire Wire Line
	3125 1100 3125 1250
Wire Wire Line
	2625 1400 3375 1400
Wire Wire Line
	3375 1400 3375 1650
Connection ~ 3375 1650
Wire Wire Line
	3925 2050 3925 2300
Wire Wire Line
	3925 2300 3875 2300
Connection ~ 3925 2050
Wire Wire Line
	3125 2050 3125 2300
Wire Wire Line
	3125 2300 3075 2300
Connection ~ 3125 2050
Connection ~ 3925 1250
Wire Wire Line
	3925 1250 3925 1450
Wire Wire Line
	3225 1250 3125 1250
Connection ~ 3125 1250
Wire Wire Line
	3125 1250 3125 1450
Wire Wire Line
	3925 1250 4025 1250
$Comp
L Device:R_US R7
U 1 1 5E1E18EE
P 3625 2050
F 0 "R7" V 3422 2050 50  0000 C CNN
F 1 "4K7" V 3512 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3665 2040 50  0001 C CNN
F 3 "~" H 3625 2050 50  0001 C CNN
F 4 "C99782" V 3625 2050 50  0001 C CNN "Part"
	1    3625 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	3125 650  3925 650 
Wire Wire Line
	3125 650  2325 650 
Connection ~ 3125 650 
Connection ~ 2325 650 
Wire Wire Line
	2625 1400 1775 1400
Connection ~ 2625 1400
Connection ~ 1775 1400
$EndSCHEMATC
