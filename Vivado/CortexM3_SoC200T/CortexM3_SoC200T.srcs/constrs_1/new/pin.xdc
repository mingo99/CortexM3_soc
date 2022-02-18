##Clock
set_property PACKAGE_PIN K18 [get_ports CLK50m]
set_property IOSTANDARD LVCMOS33 [get_ports CLK50m]

##Reset
set_property PACKAGE_PIN B16 [get_ports RSTn]
set_property IOSTANDARD LVCMOS33 [get_ports RSTn]
set_property PACKAGE_PIN P19 [get_ports RST_LED]
set_property IOSTANDARD LVCMOS33 [get_ports RST_LED]

##SWD
set_property PACKAGE_PIN W19 [get_ports SWDIO]
set_property IOSTANDARD LVCMOS33 [get_ports SWDIO]
set_property PACKAGE_PIN V20 [get_ports SWCLK]
set_property IOSTANDARD LVCMOS33 [get_ports SWCLK]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets SWCLK]

##UART
set_property PACKAGE_PIN AB22 [get_ports RXD]
set_property IOSTANDARD LVCMOS33 [get_ports RXD]
set_property PACKAGE_PIN AB21 [get_ports TXD]
set_property IOSTANDARD LVCMOS33 [get_ports TXD]
set_property PACKAGE_PIN AA21 [get_ports TXDLED]
set_property IOSTANDARD LVCMOS33 [get_ports TXDLED]

##DDR
set_property PACKAGE_PIN P20 [get_ports init_calib_complete]
set_property IOSTANDARD LVCMOS33 [get_ports init_calib_complete]

##GPIO
set_property PACKAGE_PIN K13 [get_ports {GPIO_PIN[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_PIN[0]}]
set_property PACKAGE_PIN K14 [get_ports {GPIO_PIN[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_PIN[1]}]
set_property PACKAGE_PIN M13 [get_ports {GPIO_PIN[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_PIN[2]}]
set_property PACKAGE_PIN L13 [get_ports {GPIO_PIN[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_PIN[3]}]
set_property PACKAGE_PIN K17 [get_ports {GPIO_PIN[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_PIN[4]}]
set_property PACKAGE_PIN J17 [get_ports {GPIO_PIN[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_PIN[5]}]
set_property PACKAGE_PIN L14 [get_ports {GPIO_PIN[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_PIN[6]}]
set_property PACKAGE_PIN L15 [get_ports {GPIO_PIN[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_PIN[7]}]
set_property PACKAGE_PIN R19 [get_ports {GPIO_PIN[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_PIN[8]}]
set_property PACKAGE_PIN T20 [get_ports {GPIO_PIN[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_PIN[9]}]
set_property PACKAGE_PIN T21 [get_ports {GPIO_PIN[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_PIN[10]}]
set_property PACKAGE_PIN U21 [get_ports {GPIO_PIN[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_PIN[11]}]
set_property PACKAGE_PIN U22 [get_ports {GPIO_PIN[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_PIN[12]}]
set_property PACKAGE_PIN W22 [get_ports {GPIO_PIN[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_PIN[13]}]
set_property PACKAGE_PIN W21 [get_ports {GPIO_PIN[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_PIN[14]}]
set_property PACKAGE_PIN V22 [get_ports {GPIO_PIN[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_PIN[15]}]

##KEY
set_property PACKAGE_PIN AA9 [get_ports row]
set_property IOSTANDARD LVCMOS33 [get_ports row]
set_property PACKAGE_PIN T14 [get_ports {col[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col[0]}]
set_property PACKAGE_PIN AA11 [get_ports {col[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col[1]}]
set_property PACKAGE_PIN W11 [get_ports {col[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col[2]}]
set_property PACKAGE_PIN AB10 [get_ports {col[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col[3]}]