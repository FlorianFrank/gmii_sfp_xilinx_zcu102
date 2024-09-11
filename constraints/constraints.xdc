# Copyright 2020 Xilinx Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#sfp0
set_property PACKAGE_PIN A12 [get_ports {sfp_tx_dis[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sfp_tx_dis[0]}]
set_property PACKAGE_PIN D2 [get_ports s0_rxp]
set_property PACKAGE_PIN D1 [get_ports s0_rxn]
set_property PACKAGE_PIN E4 [get_ports s0_txp]
set_property PACKAGE_PIN E3 [get_ports s0_txn]

# FMC HPC0 txp
#FMC_HPC0_DP0_C2M_P -> g4
#FMC_HPC0_DP1_C2M_P -> h6
#FMC_HPC0_DP2_C2M_P -> f6
#FMC_HPC0_DP3_C2M_P -> k6
#FMC_HPC0_DP4_C2M_P -> m6
#FMC_HPC0_DP5_C2M_P -> p6
#FMC_HPC0_DP6_C2M_P -> r4
#FMC_HPC0_DP7_C2M_P -> n4

#USER_MGT_SI570_CLOCK2_C_P
set_property PACKAGE_PIN C8 [get_ports mgt_clk_clk_p]
create_clock -period 6.400 -name mgt_clk [get_ports mgt_clk_clk_p]

#LED 2 and 3
# led 0 .. 7 => ag14, af13, ae13, aj14, aj15, ah13, ah14, al12
set_property IOSTANDARD LVCMOS33 [get_ports *led]
set_property PACKAGE_PIN AG14 [get_ports axil_reset_led]
#set_property PACKAGE_PIN    af13  [get_ports axil_reset_led]
set_property PACKAGE_PIN AE13 [get_ports {axi_lite_clk_led[0]}]
#set_property PACKAGE_PIN    aj14  [get_ports axi_lite_clk_led]
set_property PACKAGE_PIN AJ15 [get_ports {mgt_clk_led[0]}]
#set_property PACKAGE_PIN    ah13  [get_ports mgt_clk_led]
set_property PACKAGE_PIN AH14 [get_ports {rx_clk_led[0]}]
#set_property IOSTANDARD LVCMOS25 [get_ports axil_reset_led]
#set_property IOSTANDARD LVCMOS33 [get_ports axi_lite_clk_led]
#set_property IOSTANDARD LVCMOS33 [get_ports mgt_clk_led]


## Dip Switches
### GPIO_DIP_SW0 .. 7 AN14, AP14, AM14, AN13, AN12, AP12, AL13, AK13
set_property -dict {PACKAGE_PIN AN14 IOSTANDARD LVCMOS33} [get_ports GPIO_DIP_SW0]
set_property -dict {PACKAGE_PIN AP14 IOSTANDARD LVCMOS33} [get_ports GPIO_DIP_SW1]
set_property -dict {PACKAGE_PIN AM14 IOSTANDARD LVCMOS33} [get_ports GPIO_DIP_SW2]
set_property -dict {PACKAGE_PIN AN13 IOSTANDARD LVCMOS33} [get_ports GPIO_DIP_SW3]
set_property -dict {PACKAGE_PIN AN12 IOSTANDARD LVCMOS33} [get_ports GPIO_DIP_SW4]
set_property -dict {PACKAGE_PIN AP12 IOSTANDARD LVCMOS33} [get_ports GPIO_DIP_SW5]
set_property -dict {PACKAGE_PIN B20 IOSTANDARD LVCMOS33} [get_ports GPIO_DIP_SW6]
set_property -dict {PACKAGE_PIN AK13 IOSTANDARD LVCMOS33} [get_ports GPIO_DIP_SW7]

## GPIO Switches
### GPIO_SW_E S N W C => AE14 AE15 AG15 AF15 AG13


set_property IOSTANDARD LVCMOS33 [get_ports mdio_rtl_mdc]
set_property IOSTANDARD LVCMOS33 [get_ports mdio_rtl_mdio_io]

set_property IOSTANDARD LVCMOS18 [get_ports {reset_rtl[0]}]
set_property PACKAGE_PIN L15 [get_ports {reset_rtl[0]}]

set_property PACKAGE_PIN J16 [get_ports mdio_rtl_mdc]
set_property PACKAGE_PIN J15 [get_ports mdio_rtl_mdio_io]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
