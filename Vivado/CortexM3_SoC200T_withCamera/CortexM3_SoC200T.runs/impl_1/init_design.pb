
y
Command: %s
53*	vivadotcl2H
4link_design -top CortexM3_Soc -part xc7a200tfbg484-22default:defaultZ4-113h px? 
g
#Design is defaulting to srcset: %s
437*	planAhead2
	sources_12default:defaultZ12-437h px? 
j
&Design is defaulting to constrset: %s
434*	planAhead2
	constrs_12default:defaultZ12-434h px? 
W
Loading part %s157*device2$
xc7a200tfbg484-22default:defaultZ21-403h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2N
:g:/SoC/Projects/CortexM3_soc/Rtl_camera/Top/IP/PLL/PLL.dcp2default:default2+
SynClock.Global_CLK_PLL2default:defaultZ1-454h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2j
Vg:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/DDR/ip/AHB_to_AXI_1/AHB_to_AXI.dcp2default:default2$
DDR/u_AHB_to_AXI2default:defaultZ1-454h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2\
Hg:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/DDR/ip/FIFO/FIFO.dcp2default:default2

DDR/u_FIFO2default:defaultZ1-454h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2Z
Fg:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/DDR/ip/MIG/MIG.dcp2default:default2
	DDR/u_MIG2default:defaultZ1-454h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2\
Hg:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/DDR/ip/MMCM/MMCM.dcp2default:default2

DDR/u_MMCM2default:defaultZ1-454h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2k
Wg:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/Resizer/mult_8_8_16/mult_8_8_16.dcp2default:default2,
IMG_Resizer/GENERATE_W002default:defaultZ1-454h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2m
Yg:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/Resizer/ROM_8bit_260/ROM_8bit_260.dcp2default:default2$
IMG_Resizer/SRCI2default:defaultZ1-454h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2m
Yg:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/Resizer/ROM_9bit_260/ROM_9bit_260.dcp2default:default2$
IMG_Resizer/SRCJ2default:defaultZ1-454h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2]
Ig:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/Resizer/UROM/UROM.dcp2default:default2$
IMG_Resizer/UROM2default:defaultZ1-454h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2]
Ig:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/Resizer/VROM/VROM.dcp2default:default2$
IMG_Resizer/VROM2default:defaultZ1-454h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2m
Yg:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/Resizer/mult_16_8_24/mult_16_8_24.dcp2default:default2*
IMG_Resizer/BCalcu/M002default:defaultZ1-454h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.7142default:default2
822.4382default:default2
0.0002default:defaultZ17-268h px? 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
12252default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2019.22default:defaultZ1-479h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
?
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt20
DDR/u_MMCM/inst/clkin1_ibufg2default:defaultZ31-32h px? 
?
?Could not create '%s' constraint because net '%s' is not directly connected to top level port. Synthesis is ignored for %s but preserved for implementation.
528*constraints2 
IBUF_LOW_PWR2default:default2'
DDR/u_MMCM/clk_in2default:default2 
IBUF_LOW_PWR2default:default8Z18-550h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2d
Ng:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/DDR/ip/MMCM/MMCM_board.xdc2default:default2%
DDR/u_MMCM/inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2d
Ng:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/DDR/ip/MMCM/MMCM_board.xdc2default:default2%
DDR/u_MMCM/inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2^
Hg:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/DDR/ip/MMCM/MMCM.xdc2default:default2%
DDR/u_MMCM/inst	2default:default8Z20-848h px? 
?
%Done setting XDC timing constraints.
35*timing2^
Hg:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/DDR/ip/MMCM/MMCM.xdc2default:default2
572default:default8@Z38-35h px? 
?
Deriving generated clocks
2*timing2^
Hg:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/DDR/ip/MMCM/MMCM.xdc2default:default2
572default:default8@Z38-2h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
get_clocks: 2default:default2
00:00:172default:default2
00:00:162default:default2
1602.4802default:default2
641.7622default:defaultZ17-268h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2^
Hg:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/DDR/ip/MMCM/MMCM.xdc2default:default2%
DDR/u_MMCM/inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2x
bg:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/DDR/ip/MIG/MIG/user_design/constraints/MIG.xdc2default:default2
	DDR/u_MIG	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2x
bg:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/DDR/ip/MIG/MIG/user_design/constraints/MIG.xdc2default:default2
	DDR/u_MIG	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2^
Hg:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/DDR/ip/FIFO/FIFO.xdc2default:default2#
DDR/u_FIFO/U0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2^
Hg:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/DDR/ip/FIFO/FIFO.xdc2default:default2#
DDR/u_FIFO/U0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2V
@g:/SoC/Projects/CortexM3_soc/Rtl_camera/Top/IP/PLL/PLL_board.xdc2default:default22
SynClock.Global_CLK_PLL/inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2V
@g:/SoC/Projects/CortexM3_soc/Rtl_camera/Top/IP/PLL/PLL_board.xdc2default:default22
SynClock.Global_CLK_PLL/inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2P
:g:/SoC/Projects/CortexM3_soc/Rtl_camera/Top/IP/PLL/PLL.xdc2default:default22
SynClock.Global_CLK_PLL/inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2P
:g:/SoC/Projects/CortexM3_soc/Rtl_camera/Top/IP/PLL/PLL.xdc2default:default22
SynClock.Global_CLK_PLL/inst	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2?
oG:/SoC/Projects/CortexM3_soc/Vivado/CortexM3_SoC200T_withCamera/CortexM3_SoC200T.srcs/constrs_1/new/con_pin.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2?
oG:/SoC/Projects/CortexM3_soc/Vivado/CortexM3_SoC200T_withCamera/CortexM3_SoC200T.srcs/constrs_1/new/con_pin.xdc2default:default8Z20-178h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2e
Og:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/DDR/ip/FIFO/FIFO_clocks.xdc2default:default2#
DDR/u_FIFO/U0	2default:default8Z20-848h px? 
?
Deriving generated clocks
2*timing2e
Og:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/DDR/ip/FIFO/FIFO_clocks.xdc2default:default2
592default:default8@Z38-2h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2e
Og:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/DDR/ip/FIFO/FIFO_clocks.xdc2default:default2#
DDR/u_FIFO/U0	2default:default8Z20-847h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2h
RD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_async_rst.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2h
RD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_async_rst.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2h
RD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_async_rst.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2h
RD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_async_rst.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2h
RD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_async_rst.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2h
RD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_async_rst.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2h
RD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_async_rst.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2h
RD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_async_rst.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2h
RD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_async_rst.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2h
RD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_async_rst.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2h
RD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_async_rst.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2h
RD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_async_rst.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2c
MD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
vDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2c
MD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
vDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2c
MD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
vDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2c
MD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
vDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2c
MD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
wDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2c
MD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
wDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2c
MD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
wDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2c
MD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
wDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2c
MD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
wDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2c
MD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
wDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2c
MD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
wDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2c
MD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
wDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2c
MD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
vDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2c
MD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
vDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2c
MD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
wDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2c
MD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
wDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2c
MD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
wDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2c
MD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
wDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2c
MD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
vDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2c
MD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
vDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2z
dDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.cdc_wr_rst_busy_ic_3.xpm_cdc_single_inst3	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2z
dDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.cdc_wr_rst_busy_ic_3.xpm_cdc_single_inst3	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2{
eDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.cdc_wr_rst_busy_ic_1.xpm_cdc_single_inst1	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2{
eDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.cdc_wr_rst_busy_ic_1.xpm_cdc_single_inst1	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2{
eDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.cdc_wr_rst_busy_ic_2.xpm_cdc_single_inst2	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2{
eDDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.cdc_wr_rst_busy_ic_2.xpm_cdc_single_inst2	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2e
OD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2g
QD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_sync_rst.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2g
QD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_sync_rst.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2g
QD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_sync_rst.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2g
QD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_sync_rst.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2g
QD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_sync_rst.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2g
QD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_sync_rst.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2g
QD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_sync_rst.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2g
QD:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_sync_rst.tcl2default:default2?
?DDR/u_FIFO/U0/inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst	2default:default8Z20-1687h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0232default:default2
1666.1802default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 296 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 18 instances
  IOBUFDS_INTERMDISABLE => IOBUFDS_INTERMDISABLE (IBUFDS_INTERMDISABLE_INT(x2), INV, OBUFTDS(x2)): 4 instances
  IOBUF_INTERMDISABLE => IOBUF_INTERMDISABLE (IBUF_INTERMDISABLE, OBUFT): 32 instances
  LUT6_2 => LUT6_2 (LUT5, LUT6): 26 instances
  OBUFDS => OBUFDS_DUAL_BUF (INV, OBUFDS(x2)): 1 instance 
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 215 instances
2default:defaultZ1-111h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
212default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px? 
]
%s completed successfully
29*	vivadotcl2
link_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2!
link_design: 2default:default2
00:00:402default:default2
00:00:442default:default2
1666.1802default:default2
1283.8872default:defaultZ17-268h px? 
?
4The following parameters have non-default value.
%s
395*common24
 tcl.collectionResultDisplayLimit2default:defaultZ17-600h px? 


End Record