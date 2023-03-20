################################################################################
# PIN LOCATION #################################################################
## HARDWARE VERSION
set_property PACKAGE_PIN T7 [get_ports hw_version_0]
set_property PACKAGE_PIN U9 [get_ports hw_version_1]
set_property PACKAGE_PIN T9 [get_ports hw_version_2]
set_property PACKAGE_PIN U11 [get_ports hw_version_3]

# BUFFER DIRETION AND OUTPUT ENABLE
set_property PACKAGE_PIN AJ3 [get_ports buff_1_dir]
set_property PACKAGE_PIN AF4 [get_ports buff_1_oe_n]
set_property PACKAGE_PIN AG4 [get_ports buff_2_dir]
set_property PACKAGE_PIN AD5 [get_ports buff_2_oe_n]

## INPUT CLOCK
set_property PACKAGE_PIN P5   [get_ports art_logic_refclk_p]
set_property PACKAGE_PIN N4   [get_ports art_logic_refclk_n]
set_property PACKAGE_PIN Y26  [get_ports artix_emcclk]

## TRIGGER
set_property PACKAGE_PIN AC33 [get_ports trig_in_a]
set_property PACKAGE_PIN AB32 [get_ports trig_out_a]

## INPUT ANALOG SWITCH
set_property PACKAGE_PIN AA32 [get_ports analog0_switch]
set_property PACKAGE_PIN AA33 [get_ports analog1_switch]
set_property PACKAGE_PIN AC31 [get_ports analog2_switch]

## POWER SUPPLY CONTROL
set_property PACKAGE_PIN T8   [get_ports pwr_supply_ctrl]

## LVDS ZYNQ TO ARTIX IF
set_property PACKAGE_PIN L12  [get_ports lvds_za_p00]
set_property PACKAGE_PIN K12  [get_ports lvds_za_n00]
set_property PACKAGE_PIN G10  [get_ports lvds_za_p01]
set_property PACKAGE_PIN G9   [get_ports lvds_za_n01]
set_property PACKAGE_PIN K11  [get_ports lvds_za_p02]
set_property PACKAGE_PIN J11  [get_ports lvds_za_n02]
set_property PACKAGE_PIN H11  [get_ports lvds_za_p03]
set_property PACKAGE_PIN G11  [get_ports lvds_za_n03]
set_property PACKAGE_PIN L10  [get_ports lvds_za_p04]
set_property PACKAGE_PIN L9   [get_ports lvds_za_n04]
set_property PACKAGE_PIN K10  [get_ports lvds_za_p05]
set_property PACKAGE_PIN J10  [get_ports lvds_za_n05]
set_property PACKAGE_PIN J9   [get_ports lvds_za_p06]
set_property PACKAGE_PIN J8   [get_ports lvds_za_n06]
set_property PACKAGE_PIN H9   [get_ports lvds_za_p07]
set_property PACKAGE_PIN H8   [get_ports lvds_za_n07]
set_property PACKAGE_PIN L8   [get_ports lvds_za_p08]
set_property PACKAGE_PIN K8   [get_ports lvds_za_n08]
set_property PACKAGE_PIN G7   [get_ports lvds_za_p09]
set_property PACKAGE_PIN G6   [get_ports lvds_za_n09]
set_property PACKAGE_PIN K7   [get_ports lvds_za_p10]
set_property PACKAGE_PIN K6   [get_ports lvds_za_n10]
set_property PACKAGE_PIN H7   [get_ports lvds_za_p11]
set_property PACKAGE_PIN H6   [get_ports lvds_za_n11]
set_property PACKAGE_PIN G5   [get_ports lvds_za_p12]
set_property PACKAGE_PIN G4   [get_ports lvds_za_n12]

## SFP0 IF
set_property PACKAGE_PIN W28  [get_ports sfp0_sda]
set_property PACKAGE_PIN W29  [get_ports sfp0_scl]
set_property PACKAGE_PIN V24  [get_ports sfp0_tx_fault]
set_property PACKAGE_PIN W26  [get_ports sfp0_tx_dis]
set_property PACKAGE_PIN W25  [get_ports sfp0_mod_abs]
set_property PACKAGE_PIN Y25  [get_ports los0]

## SFP1 IF
set_property PACKAGE_PIN V32 [get_ports sfp1_sda]
set_property PACKAGE_PIN W33 [get_ports sfp1_scl]
set_property PACKAGE_PIN Y27 [get_ports sfp1_tx_fault]
set_property PACKAGE_PIN V31 [get_ports sfp1_tx_dis]
set_property PACKAGE_PIN W34 [get_ports sfp1_mod_abs]
set_property PACKAGE_PIN V33 [get_ports los1]

## SFP0 IF
set_property PACKAGE_PIN Y33 [get_ports sfp2_sda]
set_property PACKAGE_PIN W30 [get_ports sfp2_scl]
set_property PACKAGE_PIN V34 [get_ports sfp2_tx_fault]
set_property PACKAGE_PIN Y32 [get_ports sfp2_tx_dis]
set_property PACKAGE_PIN W31 [get_ports sfp2_mod_abs]
set_property PACKAGE_PIN Y30 [get_ports los2]

## PORT_1
set_property PACKAGE_PIN AJ24 [get_ports port_1a_strobe]
set_property PACKAGE_PIN AL34 [get_ports {port_1a_data[0]}]
set_property PACKAGE_PIN AM34 [get_ports {port_1a_data[1]}]
set_property PACKAGE_PIN AJ33 [get_ports {port_1a_data[2]}]
set_property PACKAGE_PIN AJ34 [get_ports {port_1a_data[3]}]
set_property PACKAGE_PIN AN34 [get_ports {port_1a_data[4]}]
set_property PACKAGE_PIN AP34 [get_ports {port_1a_data[5]}]
set_property PACKAGE_PIN AK33 [get_ports {port_1a_data[6]}]
set_property PACKAGE_PIN AL33 [get_ports {port_1a_data[7]}]
set_property PACKAGE_PIN AN33 [get_ports {port_1a_data[8]}]
set_property PACKAGE_PIN AP33 [get_ports {port_1a_data[9]}]
set_property PACKAGE_PIN AL32 [get_ports {port_1a_data[10]}]
set_property PACKAGE_PIN AM32 [get_ports {port_1a_data[11]}]

## PORT_2
set_property PACKAGE_PIN AJ31 [get_ports port_2a_strobe]
set_property PACKAGE_PIN AK32 [get_ports {port_2a_data[0]}]
set_property PACKAGE_PIN AM31 [get_ports {port_2a_data[1]}]
set_property PACKAGE_PIN AN32 [get_ports {port_2a_data[2]}]
set_property PACKAGE_PIN AJ30 [get_ports {port_2a_data[3]}]
set_property PACKAGE_PIN AK31 [get_ports {port_2a_data[4]}]
set_property PACKAGE_PIN AN31 [get_ports {port_2a_data[5]}]
set_property PACKAGE_PIN AP31 [get_ports {port_2a_data[6]}]
set_property PACKAGE_PIN AJ29 [get_ports {port_2a_data[7]}]
set_property PACKAGE_PIN AK30 [get_ports {port_2a_data[8]}]
set_property PACKAGE_PIN AL30 [get_ports {port_2a_data[9]}]
set_property PACKAGE_PIN AM30 [get_ports {port_2a_data[10]}]
set_property PACKAGE_PIN AL28 [get_ports {port_2a_data[11]}]

## PORT_3
set_property PACKAGE_PIN AL29 [get_ports port_3a_strobe]
set_property PACKAGE_PIN AJ28 [get_ports {port_3a_data[0]}]
set_property PACKAGE_PIN AK28 [get_ports {port_3a_data[1]}]
set_property PACKAGE_PIN AP29 [get_ports {port_3a_data[2]}]
set_property PACKAGE_PIN AP30 [get_ports {port_3a_data[3]}]
set_property PACKAGE_PIN AM29 [get_ports {port_3a_data[4]}]
set_property PACKAGE_PIN AN29 [get_ports {port_3a_data[5]}]
set_property PACKAGE_PIN AN28 [get_ports {port_3a_data[6]}]
set_property PACKAGE_PIN AP28 [get_ports {port_3a_data[7]}]
set_property PACKAGE_PIN AK27 [get_ports {port_3a_data[8]}]
set_property PACKAGE_PIN AL27 [get_ports {port_3a_data[9]}]
set_property PACKAGE_PIN AJ25 [get_ports {port_3a_data[10]}]
set_property PACKAGE_PIN AK25 [get_ports {port_3a_data[11]}]

## PORT_4
set_property PACKAGE_PIN AJ26 [get_ports port_4a_strobe]
set_property PACKAGE_PIN AK26 [get_ports {port_4a_data[0]}]
set_property PACKAGE_PIN AM26 [get_ports {port_4a_data[1]}]
set_property PACKAGE_PIN AN26 [get_ports {port_4a_data[2]}]
set_property PACKAGE_PIN AM27 [get_ports {port_4a_data[3]}]
set_property PACKAGE_PIN AN27 [get_ports {port_4a_data[4]}]
set_property PACKAGE_PIN AL25 [get_ports {port_4a_data[5]}]
set_property PACKAGE_PIN AM25 [get_ports {port_4a_data[6]}]
set_property PACKAGE_PIN AP25 [get_ports {port_4a_data[7]}]
set_property PACKAGE_PIN AP26 [get_ports {port_4a_data[8]}]
set_property PACKAGE_PIN AL24 [get_ports {port_4a_data[9]}]
set_property PACKAGE_PIN AD23 [get_ports {port_4a_data[10]}]
set_property PACKAGE_PIN AF34 [get_ports {port_4a_data[11]}]

## PORT_5
set_property PACKAGE_PIN AG34 [get_ports port_5a_strobe]
set_property PACKAGE_PIN AD33 [get_ports {port_5a_data[0]}]
set_property PACKAGE_PIN AD34 [get_ports {port_5a_data[1]}]
set_property PACKAGE_PIN AH33 [get_ports {port_5a_data[2]}]
set_property PACKAGE_PIN AH34 [get_ports {port_5a_data[3]}]
set_property PACKAGE_PIN AE33 [get_ports {port_5a_data[4]}]
set_property PACKAGE_PIN AF33 [get_ports {port_5a_data[5]}]
set_property PACKAGE_PIN AG32 [get_ports {port_5a_data[6]}]
set_property PACKAGE_PIN AH32 [get_ports {port_5a_data[7]}]
set_property PACKAGE_PIN AE32 [get_ports {port_5a_data[8]}]
set_property PACKAGE_PIN AF32 [get_ports {port_5a_data[9]}]
set_property PACKAGE_PIN AD31 [get_ports {port_5a_data[10]}]
set_property PACKAGE_PIN AE31 [get_ports {port_5a_data[11]}]

## PORT_6
set_property PACKAGE_PIN AD30 [get_ports port_6a_strobe]
set_property PACKAGE_PIN AE30 [get_ports {port_6a_data[0]}]
set_property PACKAGE_PIN AD28 [get_ports {port_6a_data[1]}]
set_property PACKAGE_PIN AD29 [get_ports {port_6a_data[2]}]
set_property PACKAGE_PIN AG31 [get_ports {port_6a_data[3]}]
set_property PACKAGE_PIN AH31 [get_ports {port_6a_data[4]}]
set_property PACKAGE_PIN AF29 [get_ports {port_6a_data[5]}]
set_property PACKAGE_PIN AF30 [get_ports {port_6a_data[6]}]
set_property PACKAGE_PIN AG29 [get_ports {port_6a_data[7]}]
set_property PACKAGE_PIN AG30 [get_ports {port_6a_data[8]}]
set_property PACKAGE_PIN AH28 [get_ports {port_6a_data[9]}]
set_property PACKAGE_PIN AH29 [get_ports {port_6a_data[10]}]
set_property PACKAGE_PIN AE28 [get_ports {port_6a_data[11]}]

## PORT_7
set_property PACKAGE_PIN AF28 [get_ports port_7a_strobe]
set_property PACKAGE_PIN AD26 [get_ports {port_7a_data[0]}]
set_property PACKAGE_PIN AE26 [get_ports {port_7a_data[1]}]
set_property PACKAGE_PIN AC26 [get_ports {port_7a_data[2]}]
set_property PACKAGE_PIN AC27 [get_ports {port_7a_data[3]}]
set_property PACKAGE_PIN AG27 [get_ports {port_7a_data[4]}]
set_property PACKAGE_PIN AH27 [get_ports {port_7a_data[5]}]
set_property PACKAGE_PIN AE27 [get_ports {port_7a_data[6]}]
set_property PACKAGE_PIN AF27 [get_ports {port_7a_data[7]}]
set_property PACKAGE_PIN AG26 [get_ports {port_7a_data[8]}]
set_property PACKAGE_PIN AH26 [get_ports {port_7a_data[9]}]
set_property PACKAGE_PIN AE23 [get_ports {port_7a_data[10]}]
set_property PACKAGE_PIN AF23 [get_ports {port_7a_data[11]}]

## PORT_8
set_property PACKAGE_PIN AG24 [get_ports port_8a_strobe]
set_property PACKAGE_PIN AH24 [get_ports {port_8a_data[0]}]
set_property PACKAGE_PIN AC24 [get_ports {port_8a_data[1]}]
set_property PACKAGE_PIN AD24 [get_ports {port_8a_data[2]}]
set_property PACKAGE_PIN AF25 [get_ports {port_8a_data[3]}]
set_property PACKAGE_PIN AG25 [get_ports {port_8a_data[4]}]
set_property PACKAGE_PIN AD25 [get_ports {port_8a_data[5]}]
set_property PACKAGE_PIN AE25 [get_ports {port_8a_data[6]}]
set_property PACKAGE_PIN AF24 [get_ports {port_8a_data[7]}]
set_property PACKAGE_PIN AA25 [get_ports {port_8a_data[8]}]
set_property PACKAGE_PIN AB24 [get_ports {port_8a_data[9]}]
set_property PACKAGE_PIN AB25 [get_ports {port_8a_data[10]}]
set_property PACKAGE_PIN W24 [get_ports {port_8a_data[11]}]

## FREQ_1
set_property PACKAGE_PIN Y11 [get_ports freq1_a_strobe]
set_property PACKAGE_PIN W10 [get_ports {freq1_a_bit[0]}]
set_property PACKAGE_PIN Y10 [get_ports {freq1_a_bit[1]}]
set_property PACKAGE_PIN V9  [get_ports {freq1_a_bit[2]}]
set_property PACKAGE_PIN V8  [get_ports {freq1_a_bit[3]}]
set_property PACKAGE_PIN W9  [get_ports {freq1_a_bit[4]}]
set_property PACKAGE_PIN W8  [get_ports {freq1_a_bit[5]}]
set_property PACKAGE_PIN V7  [get_ports {freq1_a_bit[6]}]
set_property PACKAGE_PIN V6  [get_ports {freq1_a_bit[7]}]
set_property PACKAGE_PIN Y8  [get_ports {freq1_a_bit[8]}]
set_property PACKAGE_PIN Y7  [get_ports {freq1_a_bit[9]}]
set_property PACKAGE_PIN W6  [get_ports {freq1_a_bit[10]}]
set_property PACKAGE_PIN Y6  [get_ports {freq1_a_bit[11]}]
set_property PACKAGE_PIN W1  [get_ports {freq1_a_bit[12]}]
set_property PACKAGE_PIN Y1  [get_ports {freq1_a_bit[13]}]
set_property PACKAGE_PIN V2  [get_ports {freq1_a_bit[14]}]
set_property PACKAGE_PIN V1  [get_ports {freq1_a_bit[15]}]

## FREQ_2
set_property PACKAGE_PIN Y3  [get_ports freq2_a_strobe]
set_property PACKAGE_PIN Y2  [get_ports {freq2_a_bit[0]}]
set_property PACKAGE_PIN V3  [get_ports {freq2_a_bit[1]}]
set_property PACKAGE_PIN W3  [get_ports {freq2_a_bit[2]}]
set_property PACKAGE_PIN V4  [get_ports {freq2_a_bit[3]}]
set_property PACKAGE_PIN W4  [get_ports {freq2_a_bit[4]}]
set_property PACKAGE_PIN W5  [get_ports {freq2_a_bit[5]}]
set_property PACKAGE_PIN Y5  [get_ports {freq2_a_bit[6]}]
set_property PACKAGE_PIN AA5 [get_ports {freq2_a_bit[7]}]
set_property PACKAGE_PIN AA4 [get_ports {freq2_a_bit[8]}]
set_property PACKAGE_PIN AB5 [get_ports {freq2_a_bit[9]}]
set_property PACKAGE_PIN AB4 [get_ports {freq2_a_bit[10]}]
set_property PACKAGE_PIN AB2 [get_ports {freq2_a_bit[11]}]
set_property PACKAGE_PIN AB1 [get_ports {freq2_a_bit[12]}]
set_property PACKAGE_PIN AA3 [get_ports {freq2_a_bit[13]}]
set_property PACKAGE_PIN AA2 [get_ports {freq2_a_bit[14]}]
set_property PACKAGE_PIN AC2 [get_ports {freq2_a_bit[15]}]

## FREQ_3
set_property PACKAGE_PIN AC1 [get_ports freq3_a_strobe]
set_property PACKAGE_PIN AC4 [get_ports {freq3_a_bit[0]}]
set_property PACKAGE_PIN AC3 [get_ports {freq3_a_bit[1]}]
set_property PACKAGE_PIN AA8 [get_ports {freq3_a_bit[2]}]
set_property PACKAGE_PIN AA7 [get_ports {freq3_a_bit[3]}]
set_property PACKAGE_PIN AC7 [get_ports {freq3_a_bit[4]}]
set_property PACKAGE_PIN AC6 [get_ports {freq3_a_bit[5]}]
set_property PACKAGE_PIN AB7 [get_ports {freq3_a_bit[6]}]
set_property PACKAGE_PIN AB6 [get_ports {freq3_a_bit[7]}]
set_property PACKAGE_PIN AC9 [get_ports {freq3_a_bit[8]}]
set_property PACKAGE_PIN AC8 [get_ports {freq3_a_bit[9]}]
set_property PACKAGE_PIN AA10 [get_ports {freq3_a_bit[10]}]
set_property PACKAGE_PIN AA9  [get_ports {freq3_a_bit[11]}]
set_property PACKAGE_PIN AB10 [get_ports {freq3_a_bit[12]}]
set_property PACKAGE_PIN AB9 [get_ports {freq3_a_bit[13]}]
set_property PACKAGE_PIN AB11 [get_ports {freq3_a_bit[14]}]
set_property PACKAGE_PIN R11 [get_ports {freq3_a_bit[15]}]

## FREQ_4
set_property PACKAGE_PIN M7  [get_ports freq4_a_strobe]
set_property PACKAGE_PIN M6  [get_ports {freq4_a_bit[0]}]
set_property PACKAGE_PIN N9  [get_ports {freq4_a_bit[1]}]
set_property PACKAGE_PIN M9  [get_ports {freq4_a_bit[2]}]
set_property PACKAGE_PIN N8  [get_ports {freq4_a_bit[3]}]
set_property PACKAGE_PIN N7  [get_ports {freq4_a_bit[4]}]
set_property PACKAGE_PIN M11 [get_ports {freq4_a_bit[5]}]
set_property PACKAGE_PIN M10 [get_ports {freq4_a_bit[6]}]
set_property PACKAGE_PIN P9  [get_ports {freq4_a_bit[7]}]
set_property PACKAGE_PIN P8  [get_ports {freq4_a_bit[8]}]
set_property PACKAGE_PIN P6  [get_ports {freq4_a_bit[9]}]
set_property PACKAGE_PIN N6  [get_ports {freq4_a_bit[10]}]
set_property PACKAGE_PIN N1  [get_ports {freq4_a_bit[11]}]
set_property PACKAGE_PIN M1  [get_ports {freq4_a_bit[12]}]
set_property PACKAGE_PIN M5  [get_ports {freq4_a_bit[13]}]
set_property PACKAGE_PIN M4  [get_ports {freq4_a_bit[14]}]
set_property PACKAGE_PIN R1  [get_ports {freq4_a_bit[15]}]

## SYNTH CONTROL
set_property PACKAGE_PIN AJ9 [get_ports synt_strobe]
set_property PACKAGE_PIN AN1 [get_ports synt_trig_clk_out]
set_property PACKAGE_PIN AP1 [get_ports synt_out_1]
set_property PACKAGE_PIN AK2 [get_ports synt_out_2]
set_property PACKAGE_PIN AK1 [get_ports {synt_addr[0]}]
set_property PACKAGE_PIN AM2 [get_ports {synt_addr[1]}]
set_property PACKAGE_PIN AN2 [get_ports {synt_addr[2]}]
set_property PACKAGE_PIN AL2 [get_ports {synt_addr[3]}]
set_property PACKAGE_PIN AM1 [get_ports {synt_addr[4]}]
set_property PACKAGE_PIN AN3 [get_ports {synt_addr[5]}]
set_property PACKAGE_PIN AP3 [get_ports {synt_data[0]}]
set_property PACKAGE_PIN AK3 [get_ports {synt_data[1]}]
set_property PACKAGE_PIN AL3 [get_ports {synt_data[2]}]
set_property PACKAGE_PIN AN4 [get_ports {synt_data[3]}]
set_property PACKAGE_PIN AP4 [get_ports {synt_data[4]}]
set_property PACKAGE_PIN AJ5 [get_ports {synt_data[5]}]
set_property PACKAGE_PIN AK5 [get_ports {synt_data[6]}]
set_property PACKAGE_PIN AP6 [get_ports {synt_data[7]}]
set_property PACKAGE_PIN AP5 [get_ports {synt_data[8]}]
set_property PACKAGE_PIN AL4 [get_ports {synt_data[9]}]
set_property PACKAGE_PIN AM4 [get_ports {synt_data[10]}]
set_property PACKAGE_PIN AL5 [get_ports {synt_data[11]}]
set_property PACKAGE_PIN AM5 [get_ports {synt_data[12]}]
set_property PACKAGE_PIN AJ6 [get_ports {synt_data[13]}]
set_property PACKAGE_PIN AK6 [get_ports {synt_data[14]}]
set_property PACKAGE_PIN AK7 [get_ports {synt_data[15]}]
set_property PACKAGE_PIN AL7 [get_ports {synt_data[16]}]
set_property PACKAGE_PIN AM7 [get_ports {synt_data[17]}]
set_property PACKAGE_PIN AM6 [get_ports {synt_data[18]}]
set_property PACKAGE_PIN AJ8 [get_ports {synt_data[19]}]
set_property PACKAGE_PIN AK8 [get_ports {synt_data[20]}]
set_property PACKAGE_PIN AN8 [get_ports {synt_data[21]}]
set_property PACKAGE_PIN AP8 [get_ports {synt_data[22]}]
set_property PACKAGE_PIN AN7 [get_ports {synt_data[23]}]
set_property PACKAGE_PIN AN6 [get_ports {synt_data[24]}]
set_property PACKAGE_PIN AN9 [get_ports {synt_data[25]}]
set_property PACKAGE_PIN AP9 [get_ports {synt_data[26]}]
set_property PACKAGE_PIN AJ10 [get_ports {synt_data[27]}]
set_property PACKAGE_PIN AK10 [get_ports {synt_data[28]}]
set_property PACKAGE_PIN AP11 [get_ports {synt_data[29]}]
set_property PACKAGE_PIN AP10 [get_ports {synt_data[30]}]
set_property PACKAGE_PIN AL9  [get_ports {synt_data[31]}]
set_property PACKAGE_PIN AM9  [get_ports {synt_data[32]}]
set_property PACKAGE_PIN AM11 [get_ports {synt_data[33]}]
set_property PACKAGE_PIN AN11 [get_ports {synt_data[34]}]
set_property PACKAGE_PIN AJ11 [get_ports {synt_data[35]}]
set_property PACKAGE_PIN AK11 [get_ports {synt_data[36]}]
set_property PACKAGE_PIN AL10 [get_ports {synt_data[37]}]
set_property PACKAGE_PIN AM10 [get_ports {synt_data[38]}]
set_property PACKAGE_PIN AL8  [get_ports {synt_data[39]}]

## TEST POINTS
set_property PACKAGE_PIN AC11 [get_ports test_artix_0]
set_property PACKAGE_PIN AG1 [get_ports test_artix_1]
set_property PACKAGE_PIN AH1 [get_ports test_artix_2]
set_property PACKAGE_PIN AD1 [get_ports test_artix_3]
set_property PACKAGE_PIN AE1 [get_ports test_artix_4]
set_property PACKAGE_PIN AH2 [get_ports test_artix_5]
set_property PACKAGE_PIN AJ1 [get_ports test_artix_6]
set_property PACKAGE_PIN AE2 [get_ports test_artix_7]
set_property PACKAGE_PIN AF2 [get_ports test_artix_8]
set_property PACKAGE_PIN AF3 [get_ports test_artix_9]
set_property PACKAGE_PIN AG2 [get_ports test_artix_10]
set_property PACKAGE_PIN AH3 [get_ports test_artix_11]


################################################################################
# PIN STANDARD #################################################################
## HARDWARE VERSION
set_property IOSTANDARD LVCMOS33 [get_ports hw_version_0]
set_property IOSTANDARD LVCMOS33 [get_ports hw_version_1]
set_property IOSTANDARD LVCMOS33 [get_ports hw_version_2]
set_property IOSTANDARD LVCMOS33 [get_ports hw_version_3]

# BUFFER DIRETION AND OUTPUT ENABLE
set_property IOSTANDARD LVCMOS33 [get_ports buff_1_dir]
set_property IOSTANDARD LVCMOS33 [get_ports buff_1_oe_n]
set_property IOSTANDARD LVCMOS33 [get_ports buff_2_dir]
set_property IOSTANDARD LVCMOS33 [get_ports buff_2_oe_n]

## INPUT CLOCK
set_property IOSTANDARD LVDS_25 [get_ports art_logic_refclk_p]
set_property IOSTANDARD LVDS_25 [get_ports art_logic_refclk_n]
set_property IOSTANDARD LVCMOS33 [get_ports artix_emcclk]

## TRIGGER
set_property IOSTANDARD LVCMOS33 [get_ports trig_in_a]
set_property IOSTANDARD LVCMOS33 [get_ports trig_out_a]

## INPUT ANALOG SWITCH
set_property IOSTANDARD LVCMOS33 [get_ports analog0_switch]
set_property IOSTANDARD LVCMOS33 [get_ports analog1_switch]
set_property IOSTANDARD LVCMOS33 [get_ports analog2_switch]

## POWER SUPPLY CONTROL
set_property IOSTANDARD LVCMOS33 [get_ports pwr_supply_ctrl]

## LVDS ZYNQ TO ARTIX IF
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_p00]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_n00]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_p01]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_n01]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_p02]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_n02]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_p03]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_n03]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_p04]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_n04]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_p05]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_n05]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_p06]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_n06]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_p07]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_n07]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_p08]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_n08]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_p09]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_n09]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_p10]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_n10]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_p11]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_n11]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_p12]
set_property IOSTANDARD LVDS_25 [get_ports lvds_za_n12]

# lock LVDS registers in IOB
#set_property IOB true [get_ports lvds_za_p00]
#set_property IOB true [get_ports lvds_za_n00]
#set_property IOB true [get_ports lvds_za_p01]
#set_property IOB true [get_ports lvds_za_n01]
#set_property IOB true [get_ports lvds_za_p02]
#set_property IOB true [get_ports lvds_za_n02]
#set_property IOB true [get_ports lvds_za_p03]
#set_property IOB true [get_ports lvds_za_n03]
#set_property IOB true [get_ports lvds_za_p04]
#set_property IOB true [get_ports lvds_za_n04]
#set_property IOB true [get_ports lvds_za_p05]
#set_property IOB true [get_ports lvds_za_n05]
#set_property IOB true [get_ports lvds_za_p06]
#set_property IOB true [get_ports lvds_za_n06]
#set_property IOB true [get_ports lvds_za_p07]
#set_property IOB true [get_ports lvds_za_n07]
#set_property IOB true [get_ports lvds_za_p08]
#set_property IOB true [get_ports lvds_za_n08]
#set_property IOB true [get_ports lvds_za_p09]
#set_property IOB true [get_ports lvds_za_n09]
#set_property IOB true [get_ports lvds_za_p10]
#set_property IOB true [get_ports lvds_za_n10]
#set_property IOB true [get_ports lvds_za_p11]
#set_property IOB true [get_ports lvds_za_n11]
#set_property IOB true [get_ports lvds_za_p12]
#set_property IOB true [get_ports lvds_za_n12]

## SFP0 IF
set_property IOSTANDARD LVCMOS33 [get_ports sfp0_sda]
set_property IOSTANDARD LVCMOS33 [get_ports sfp0_scl]
set_property IOSTANDARD LVCMOS33 [get_ports sfp0_tx_fault]
set_property IOSTANDARD LVCMOS33 [get_ports sfp0_tx_dis]
set_property IOSTANDARD LVCMOS33 [get_ports sfp0_mod_abs]
set_property IOSTANDARD LVCMOS33 [get_ports los0]

## SFP1 IF
set_property IOSTANDARD LVCMOS33 [get_ports sfp1_sda]
set_property IOSTANDARD LVCMOS33 [get_ports sfp1_scl]
set_property IOSTANDARD LVCMOS33 [get_ports sfp1_tx_fault]
set_property IOSTANDARD LVCMOS33 [get_ports sfp1_tx_dis]
set_property IOSTANDARD LVCMOS33 [get_ports sfp1_mod_abs]
set_property IOSTANDARD LVCMOS33 [get_ports los1]

## SFP0 IF
set_property IOSTANDARD LVCMOS33 [get_ports sfp2_sda]
set_property IOSTANDARD LVCMOS33 [get_ports sfp2_scl]
set_property IOSTANDARD LVCMOS33 [get_ports sfp2_tx_fault]
set_property IOSTANDARD LVCMOS33 [get_ports sfp2_tx_dis]
set_property IOSTANDARD LVCMOS33 [get_ports sfp2_mod_abs]
set_property IOSTANDARD LVCMOS33 [get_ports los2]

## PORT_1
set_property IOSTANDARD LVCMOS33 [get_ports port_1a_strobe]
set_property IOSTANDARD LVCMOS33 [get_ports {port_1a_data[*]}]

## PORT_2
set_property IOSTANDARD LVCMOS33 [get_ports port_2a_strobe]
set_property IOSTANDARD LVCMOS33 [get_ports {port_2a_data[*]}]

## PORT_3
set_property IOSTANDARD LVCMOS33 [get_ports port_3a_strobe]
set_property IOSTANDARD LVCMOS33 [get_ports {port_3a_data[*]}]

## PORT_4
set_property IOSTANDARD LVCMOS33 [get_ports port_4a_strobe]
set_property IOSTANDARD LVCMOS33 [get_ports {port_4a_data[*]}]

## PORT_5
set_property IOSTANDARD LVCMOS33 [get_ports port_5a_strobe]
set_property IOSTANDARD LVCMOS33 [get_ports {port_5a_data[*]}]

## PORT_6
set_property IOSTANDARD LVCMOS33 [get_ports port_6a_strobe]
set_property IOSTANDARD LVCMOS33 [get_ports {port_6a_data[*]}]

## PORT_7
set_property IOSTANDARD LVCMOS33 [get_ports port_7a_strobe]
set_property IOSTANDARD LVCMOS33 [get_ports {port_7a_data[*]}]

## PORT_8
set_property IOSTANDARD LVCMOS33 [get_ports port_8a_strobe]
set_property IOSTANDARD LVCMOS33 [get_ports {port_8a_data[*]}]

## FREQ_1
set_property IOSTANDARD LVCMOS33 [get_ports freq1_a_strobe]
set_property IOSTANDARD LVCMOS33 [get_ports {freq1_a_bit[*]}]

## FREQ_2
set_property IOSTANDARD LVCMOS33 [get_ports freq2_a_strobe]
set_property IOSTANDARD LVCMOS33 [get_ports {freq2_a_bit[*]}]

## FREQ_3
set_property IOSTANDARD LVCMOS33 [get_ports freq3_a_strobe]
set_property IOSTANDARD LVCMOS33 [get_ports {freq3_a_bit[*]}]

## FREQ_4
set_property IOSTANDARD LVCMOS33 [get_ports freq4_a_strobe]
set_property IOSTANDARD LVCMOS33 [get_ports {freq4_a_bit[*]}]

## SYNTH CONTROL
set_property IOSTANDARD LVCMOS33 [get_ports synt_strobe]
set_property IOSTANDARD LVCMOS33 [get_ports synt_trig_clk_out]
set_property IOSTANDARD LVCMOS33 [get_ports synt_out_1]
set_property IOSTANDARD LVCMOS33 [get_ports synt_out_2]
set_property IOSTANDARD LVCMOS33 [get_ports {synt_addr[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {synt_data[*]}]

## TEST POINTS
set_property IOSTANDARD LVCMOS33 [get_ports test_artix_0]
set_property IOSTANDARD LVCMOS33 [get_ports test_artix_1]
set_property IOSTANDARD LVCMOS33 [get_ports test_artix_2]
set_property IOSTANDARD LVCMOS33 [get_ports test_artix_3]
set_property IOSTANDARD LVCMOS33 [get_ports test_artix_4]
set_property IOSTANDARD LVCMOS33 [get_ports test_artix_5]
set_property IOSTANDARD LVCMOS33 [get_ports test_artix_6]
set_property IOSTANDARD LVCMOS33 [get_ports test_artix_7]
set_property IOSTANDARD LVCMOS33 [get_ports test_artix_8]
set_property IOSTANDARD LVCMOS33 [get_ports test_artix_9]
set_property IOSTANDARD LVCMOS33 [get_ports test_artix_10]
set_property IOSTANDARD LVCMOS33 [get_ports test_artix_11]

############################### GT LOC ###################################
#set_property LOC GTPE2_CHANNEL_X1Y0 [get_cells aurora_module_i/U0/aurora_8b10b_113_core_i/gt_wrapper_i/aurora_8b10b_113_multi_gt_i/gt0_aurora_8b10b_113_i/gtpe2_i]
#set_property LOC GTPE2_CHANNEL_X1Y1 [get_cells aurora_module_i/U0/aurora_8b10b_113_core_i/gt_wrapper_i/aurora_8b10b_113_multi_gt_i/gt1_aurora_8b10b_113_i/gtpe2_i]
#set_property LOC GTPE2_CHANNEL_X1Y2 [get_cells aurora_module_i/U0/aurora_8b10b_113_core_i/gt_wrapper_i/aurora_8b10b_113_multi_gt_i/gt2_aurora_8b10b_113_i/gtpe2_i]
#set_property LOC GTPE2_CHANNEL_X1Y3 [get_cells aurora_module_i/U0/aurora_8b10b_113_core_i/gt_wrapper_i/aurora_8b10b_113_multi_gt_i/gt3_aurora_8b10b_113_i/gtpe2_i]
set_property PACKAGE_PIN AN17 [get_ports gtp0_a_tx_p]
set_property PACKAGE_PIN AP17 [get_ports gtp0_a_tx_n]
set_property PACKAGE_PIN AJ17 [get_ports gtp0_a_rx_p]
set_property PACKAGE_PIN AK17 [get_ports gtp0_a_rx_n]
set_property PACKAGE_PIN AN15 [get_ports gtp1_a_tx_p]
set_property PACKAGE_PIN AP15 [get_ports gtp1_a_tx_n]
set_property PACKAGE_PIN AL16 [get_ports gtp1_a_rx_p]
set_property PACKAGE_PIN AM16 [get_ports gtp1_a_rx_n]
set_property PACKAGE_PIN AL14 [get_ports gtp2_a_tx_p]
set_property PACKAGE_PIN AM14 [get_ports gtp2_a_tx_n]
set_property PACKAGE_PIN AJ15 [get_ports gtp2_a_rx_p]
set_property PACKAGE_PIN AK15 [get_ports gtp2_a_rx_n]
set_property PACKAGE_PIN AN13 [get_ports gtp3_a_tx_p]
set_property PACKAGE_PIN AP13 [get_ports gtp3_a_tx_n]
set_property PACKAGE_PIN AJ13 [get_ports gtp3_a_rx_p]
set_property PACKAGE_PIN AK13 [get_ports gtp3_a_rx_n]


################################################################################
## CLOCK CONSTRAINTS ###########################################################
################################################################################
## XDC generated for xc7a200t-ffg1156-1 device
# 125.0MHz GT Reference clock constraint
create_clock -name GT_REFCLK1 -period 8.0	 [get_ports art_gth_gtp_a_refclk_p]
####################### GT reference clock LOC #######################
set_property LOC AH14 [get_ports art_gth_gtp_a_refclk_n]
set_property LOC AG14 [get_ports art_gth_gtp_a_refclk_p]

#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets s_lvds_za_clk]

create_clock -name s_clk -period 10.0	 [get_ports lvds_za_p12]
create_clock -name s_art_logic_refclk -period 10.0	 [get_ports art_logic_refclk_p]
create_clock -name artix_emcclk -period 40.0	 [get_ports artix_emcclk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets artix_emcclk]

# LVDS clock to aurora clock for status
set_false_path -from [get_clocks s_clk] -to [get_clocks aurora_module_0/inst/aurora_8b10b_113_core_i/gt_wrapper_i/aurora_8b10b_113_multi_gt_i/gt0_aurora_8b10b_113_i/gtpe2_i/TXOUTCLK]

# register (aurora clock) to SFP retry
set_false_path -from [get_clocks aurora_module_0/inst/aurora_8b10b_113_core_i/gt_wrapper_i/aurora_8b10b_113_multi_gt_i/gt0_aurora_8b10b_113_i/gtpe2_i/TXOUTCLK] -to [get_clocks s_art_logic_refclk]

# from SFP data to status collector on aurora
set_false_path -from [get_clocks aurora_module_0/inst/aurora_8b10b_113_core_i/gt_wrapper_i/aurora_8b10b_113_multi_gt_i/gt0_aurora_8b10b_113_i/gtpe2_i/TXOUTCLK] -to [get_clocks s_art_logic_refclk]
set_false_path -from [get_clocks s_art_logic_refclk] -to [get_clocks aurora_module_0/inst/aurora_8b10b_113_core_i/gt_wrapper_i/aurora_8b10b_113_multi_gt_i/gt0_aurora_8b10b_113_i/gtpe2_i/TXOUTCLK]


set_property IOB TRUE [get_ports lvds_za_p00]
set_property IOB TRUE [get_ports lvds_za_p01]
set_property IOB TRUE [get_ports lvds_za_p02]
set_property IOB TRUE [get_ports lvds_za_p03]
set_property IOB TRUE [get_ports lvds_za_p04]
set_property IOB TRUE [get_ports lvds_za_p05]
set_property IOB TRUE [get_ports lvds_za_p06]
set_property IOB TRUE [get_ports lvds_za_p07]
set_property IOB TRUE [get_ports lvds_za_p08]
set_property IOB TRUE [get_ports lvds_za_p09]
set_property IOB TRUE [get_ports lvds_za_p10]
set_property IOB TRUE [get_ports lvds_za_p11]
#set_property IOB TRUE [get_ports lvds_za_p12]

