
o
Command: %s
53*	vivadotcl2>
*route_design -directive NoTimingRelaxation2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a200t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a200t2default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?Clock Placer Checks: Poor placement for routing between an IO pin and BUFG. 
Resolution: Poor placement of an IO pin and a BUFG has resulted in the router using a non-dedicated path between the two.  There are several things that could trigger this DRC, each of which can cause unpredictable clock insertion delays that result in poor timing.  This DRC could be caused by any of the following: (a) a clock port was placed on a pin that is not a CCIO-pin (b)the BUFG has not been placed in the same half of the device or SLR as the CCIO-pin (c) a single ended clock has been placed on the N-Side of a differential pair CCIO-pin.
 This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	%s (IBUF.O) is locked to %s
	%s (BUFG.I) is provisionally placed by clockplacer on %s
%s*DRC2X
 "B
CAMERA_PCLK_IBUF_inst	CAMERA_PCLK_IBUF_inst2default:default2default:default2B
 ",

IOB_X0Y164

IOB_X0Y1642default:default2default:default2T
 ">
SynClock.camera_clk	SynClock.camera_clk2default:default2default:default2H
 "2
BUFGCTRL_X0Y5
BUFGCTRL_X0Y52default:default2default:default2;
 #DRC|Implementation|Placement|Clocks2default:default8ZPLCK-12h px? 
?

?Clock Placer Checks: Poor placement for routing between an IO pin and BUFG. 
Resolution: Poor placement of an IO pin and a BUFG has resulted in the router using a non-dedicated path between the two.  There are several things that could trigger this DRC, each of which can cause unpredictable clock insertion delays that result in poor timing.  This DRC could be caused by any of the following: (a) a clock port was placed on a pin that is not a CCIO-pin (b)the BUFG has not been placed in the same half of the device or SLR as the CCIO-pin (c) a single ended clock has been placed on the N-Side of a differential pair CCIO-pin.
 This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	%s (IBUF.O) is locked to %s
	%s (BUFG.I) is provisionally placed by clockplacer on %s
%s*DRC2L
 "6
SWCLK_IBUF_inst	SWCLK_IBUF_inst2default:default2default:default2B
 ",

IOB_X0Y127

IOB_X0Y1272default:default2default:default2L
 "6
SynClock.sw_clk	SynClock.sw_clk2default:default2default:default2H
 "2
BUFGCTRL_X0Y4
BUFGCTRL_X0Y42default:default2default:default2;
 #DRC|Implementation|Placement|Clocks2default:default8ZPLCK-12h px? 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 2 Warnings2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
i
Using Router directive '%s'.
20*	routeflow2&
NoTimingRelaxation2default:defaultZ35-270h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
B
-Phase 1 Build RT Design | Checksum: af49f085
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:31 ; elapsed = 00:01:07 . Memory (MB): peak = 2892.887 ; gain = 7.9492default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
A
,Phase 2.1 Create Timer | Checksum: af49f085
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:32 ; elapsed = 00:01:08 . Memory (MB): peak = 2892.918 ; gain = 7.9802default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: af49f085
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:32 ; elapsed = 00:01:09 . Memory (MB): peak = 2905.008 ; gain = 20.0702default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: af49f085
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:33 ; elapsed = 00:01:09 . Memory (MB): peak = 2905.008 ; gain = 20.0702default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 10b6644c2
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:14 ; elapsed = 00:01:38 . Memory (MB): peak = 2998.785 ; gain = 113.8482default:defaulth px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-1.437 | TNS=-102.994| WHS=-1.317 | THS=-1326.691|
2default:defaultZ35-416h px? 
}

Phase %s%s
101*constraints2
2.5 2default:default2.
Update Timing for Bus Skew2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
2.5.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 2.5.1 Update Timing | Checksum: 189c77b19
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:45 ; elapsed = 00:01:57 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-1.437 | TNS=-101.832| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
P
;Phase 2.5 Update Timing for Bus Skew | Checksum: 1134fcc0b
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:45 ; elapsed = 00:01:58 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
H
3Phase 2 Router Initialization | Checksum: cc7a54c7
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:46 ; elapsed = 00:01:58 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
C
.Phase 3 Initial Routing | Checksum: 1524ec5ea
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:41 ; elapsed = 00:02:29 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
?	
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
22default:default2?
?The top 5 pins with tight setup and hold constraints:

+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|       Launch Clock       |      Capture Clock       |                                                 Pin                                                      |
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|              clk_50M_PLL |               camera_clk |                                                                                   CAMEARA/syn_valid_reg/D|
|              clk_50M_PLL |              clk_50M_PLL |                                                     DDR/u_AHB_to_AXI/U0/AXI_RCHANNEL/M_AXI_RREADY_i_reg/D|
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
2default:defaultZ35-580h px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-3.599 | TNS=-335.855| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 181a5a061
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:24 ; elapsed = 00:05:22 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-3.599 | TNS=-364.002| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 4.2 Global Iteration 1 | Checksum: fc601cfe
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:27 ; elapsed = 00:05:25 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
E
0Phase 4 Rip-up And Reroute | Checksum: fc601cfe
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:27 ; elapsed = 00:05:25 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 5.1.1 Update Timing | Checksum: a96a6a40
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:36 ; elapsed = 00:05:31 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-3.599 | TNS=-360.785| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
B
-Phase 5.1 Delay CleanUp | Checksum: fc90027d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:38 ; elapsed = 00:05:32 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
L
7Phase 5.2 Clock Skew Optimization | Checksum: fc90027d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:38 ; elapsed = 00:05:32 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
N
9Phase 5 Delay and Skew Optimization | Checksum: fc90027d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:38 ; elapsed = 00:05:33 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 159809d1b
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:47 ; elapsed = 00:05:38 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-3.599 | TNS=-354.380| WHS=0.032  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 1983758af
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:47 ; elapsed = 00:05:39 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 1983758af
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:47 ; elapsed = 00:05:39 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
t

Phase %s%s
101*constraints2
7 2default:default2'
Timing Verification2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
7.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 7.1 Update Timing | Checksum: 1bf3b2692
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:04 ; elapsed = 00:05:49 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-3.599 | TNS=-354.380| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 7 Timing Verification | Checksum: 1bf3b2692
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:04 ; elapsed = 00:05:49 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
o

Phase %s%s
101*constraints2
8 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 8 Route finalize | Checksum: 1bf3b2692
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:05 ; elapsed = 00:05:50 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
v

Phase %s%s
101*constraints2
9 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 9 Verifying routed nets | Checksum: 1bf3b2692
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:05 ; elapsed = 00:05:50 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
s

Phase %s%s
101*constraints2
10 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
F
1Phase 10 Depositing Routes | Checksum: 169fd227c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:14 ; elapsed = 00:06:00 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
w

Phase %s%s
101*constraints2
11 2default:default2)
Incr Placement Change2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0622default:default2
3376.5232default:default2
0.0002default:defaultZ17-268h px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-2.6362default:defaultZ30-746h px? 
A
,Ending IncrPlace Task | Checksum: 126022d92
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:56 ; elapsed = 00:01:30 . Memory (MB): peak = 3376.523 ; gain = 0.0002default:defaulth px? 
J
5Phase 11 Incr Placement Change | Checksum: 169fd227c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:11:12 ; elapsed = 00:07:33 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
q

Phase %s%s
101*constraints2
12 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
D
/Phase 12 Build RT Design | Checksum: 1068292a2
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:11:33 ; elapsed = 00:07:55 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
w

Phase %s%s
101*constraints2
13 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
13.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
C
.Phase 13.1 Create Timer | Checksum: 13a3b1e49
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:11:37 ; elapsed = 00:07:59 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
|

Phase %s%s
101*constraints2
13.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
O
:Phase 13.2 Fix Topology Constraints | Checksum: 13a3b1e49
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:11:37 ; elapsed = 00:07:59 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
u

Phase %s%s
101*constraints2
13.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
H
3Phase 13.3 Pre Route Cleanup | Checksum: 102007d5a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:11:38 ; elapsed = 00:08:00 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
q

Phase %s%s
101*constraints2
13.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 13.4 Update Timing | Checksum: 1219542dd
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:12:34 ; elapsed = 00:08:37 . Memory (MB): peak = 3376.523 ; gain = 491.5862default:defaulth px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-2.526 | TNS=-234.780| WHS=-1.414 | THS=-1324.672|
2default:defaultZ35-416h px? 
~

Phase %s%s
101*constraints2
13.5 2default:default2.
Update Timing for Bus Skew2default:defaultZ18-101h px? 
s

Phase %s%s
101*constraints2
13.5.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
F
1Phase 13.5.1 Update Timing | Checksum: 1472380b1
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:13:04 ; elapsed = 00:08:55 . Memory (MB): peak = 3704.832 ; gain = 819.8952default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-2.526 | TNS=-229.017| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
Q
<Phase 13.5 Update Timing for Bus Skew | Checksum: 13045c2b3
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:13:04 ; elapsed = 00:08:56 . Memory (MB): peak = 3704.832 ; gain = 819.8952default:defaulth px? 
J
5Phase 13 Router Initialization | Checksum: 182643768
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:13:05 ; elapsed = 00:08:56 . Memory (MB): peak = 3704.832 ; gain = 819.8952default:defaulth px? 
q

Phase %s%s
101*constraints2
14 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
D
/Phase 14 Initial Routing | Checksum: 1c2442fdc
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:13:07 ; elapsed = 00:08:59 . Memory (MB): peak = 3704.832 ; gain = 819.8952default:defaulth px? 
?	
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
22default:default2?
?The top 5 pins with tight setup and hold constraints:

+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|       Launch Clock       |      Capture Clock       |                                                 Pin                                                      |
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|              clk_50M_PLL |               camera_clk |                                                                                   CAMEARA/syn_valid_reg/D|
|              clk_50M_PLL |              clk_50M_PLL |                                                     DDR/u_AHB_to_AXI/U0/AXI_RCHANNEL/M_AXI_RREADY_i_reg/D|
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
2default:defaultZ35-580h px? 
t

Phase %s%s
101*constraints2
15 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
v

Phase %s%s
101*constraints2
15.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-3.928 | TNS=-346.873| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
I
4Phase 15.1 Global Iteration 0 | Checksum: 20a5a3ec8
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:27 ; elapsed = 00:10:11 . Memory (MB): peak = 3704.832 ; gain = 819.8952default:defaulth px? 
v

Phase %s%s
101*constraints2
15.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-3.928 | TNS=-353.251| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
I
4Phase 15.2 Global Iteration 1 | Checksum: 270350b8c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:30 ; elapsed = 00:10:15 . Memory (MB): peak = 3704.832 ; gain = 819.8952default:defaulth px? 
G
2Phase 15 Rip-up And Reroute | Checksum: 270350b8c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:30 ; elapsed = 00:10:15 . Memory (MB): peak = 3704.832 ; gain = 819.8952default:defaulth px? 
}

Phase %s%s
101*constraints2
16 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
16.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
s

Phase %s%s
101*constraints2
16.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
F
1Phase 16.1.1 Update Timing | Checksum: 21d10eabf
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:40 ; elapsed = 00:10:21 . Memory (MB): peak = 3704.832 ; gain = 819.8952default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-3.928 | TNS=-351.948| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
D
/Phase 16.1 Delay CleanUp | Checksum: 1d6898334
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:42 ; elapsed = 00:10:22 . Memory (MB): peak = 3704.832 ; gain = 819.8952default:defaulth px? 
{

Phase %s%s
101*constraints2
16.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
N
9Phase 16.2 Clock Skew Optimization | Checksum: 1d6898334
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:42 ; elapsed = 00:10:22 . Memory (MB): peak = 3704.832 ; gain = 819.8952default:defaulth px? 
P
;Phase 16 Delay and Skew Optimization | Checksum: 1d6898334
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:42 ; elapsed = 00:10:22 . Memory (MB): peak = 3704.832 ; gain = 819.8952default:defaulth px? 
o

Phase %s%s
101*constraints2
17 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
17.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
s

Phase %s%s
101*constraints2
17.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
F
1Phase 17.1.1 Update Timing | Checksum: 19444254a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:52 ; elapsed = 00:10:29 . Memory (MB): peak = 3704.832 ; gain = 819.8952default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-3.928 | TNS=-350.059| WHS=0.037  | THS=0.000  |
2default:defaultZ35-416h px? 
D
/Phase 17.1 Hold Fix Iter | Checksum: 1cf57ec4f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:52 ; elapsed = 00:10:29 . Memory (MB): peak = 3704.832 ; gain = 819.8952default:defaulth px? 
B
-Phase 17 Post Hold Fix | Checksum: 1cf57ec4f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:52 ; elapsed = 00:10:29 . Memory (MB): peak = 3704.832 ; gain = 819.8952default:defaulth px? 
u

Phase %s%s
101*constraints2
18 2default:default2'
Timing Verification2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
18.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 18.1 Update Timing | Checksum: 18e8760a0
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:13 ; elapsed = 00:10:41 . Memory (MB): peak = 3704.832 ; gain = 819.8952default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-3.928 | TNS=-350.059| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 18 Timing Verification | Checksum: 18e8760a0
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:13 ; elapsed = 00:10:41 . Memory (MB): peak = 3704.832 ; gain = 819.8952default:defaulth px? 
n

Phase %s%s
101*constraints2
19 2default:default2 
Reset Design2default:defaultZ18-101h px? 
b
&%s nets already restored were skipped.120*route2
694472default:defaultZ35-307h px? 
A
,Phase 19 Reset Design | Checksum: 18b84834c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:30 ; elapsed = 00:10:51 . Memory (MB): peak = 3704.832 ; gain = 819.8952default:defaulth px? 
t

Phase %s%s
101*constraints2
20 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
?Timer settings changed to match sign-off timing analysis. Setup and Hold analysis on slow, fast Corners with nearest common node skew is enabled.
62*routeZ35-62h px? 
?
Post Routing Timing Summary %s
20*route2K
7| WNS=-3.600 | TNS=-354.469| WHS=0.033  | THS=0.000  |
2default:defaultZ35-20h px? 
?
dThe design did not meet timing requirements. Please run report_timing_summary for detailed reports.
39*routeZ35-39h px? 
?
?TNS is the sum of the worst slack violation on every endpoint in the design. Review the paths with the biggest WNS violations in the timing reports and modify your constraints or your design to improve both WNS and TNS.
96*routeZ35-253h px? 
G
2Phase 20 Post Router Timing | Checksum: 1a6dd2250
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:16:14 ; elapsed = 00:11:16 . Memory (MB): peak = 3704.832 ; gain = 819.8952default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2q
]Time (s): cpu = 00:16:14 ; elapsed = 00:11:17 . Memory (MB): peak = 3704.832 ; gain = 819.8952default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
17672default:default2
272default:default2
12default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:16:252default:default2
00:11:232default:default2
3704.8322default:default2
819.8952default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0542default:default2
3704.8322default:default2
0.0002default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:322default:default2
00:00:102default:default2
3704.8322default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2}
iG:/SoC/Projects/CortexM3_soc/Vivado/CortexM3_SoC200T/CortexM3_SoC200T.runs/impl_1/CortexM3_Soc_routed.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:422default:default2
00:00:182default:default2
3704.8322default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
yExecuting : report_drc -file CortexM3_Soc_drc_routed.rpt -pb CortexM3_Soc_drc_routed.pb -rpx CortexM3_Soc_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
lreport_drc -file CortexM3_Soc_drc_routed.rpt -pb CortexM3_Soc_drc_routed.pb -rpx CortexM3_Soc_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
mG:/SoC/Projects/CortexM3_soc/Vivado/CortexM3_SoC200T/CortexM3_SoC200T.runs/impl_1/CortexM3_Soc_drc_routed.rptmG:/SoC/Projects/CortexM3_soc/Vivado/CortexM3_SoC200T/CortexM3_SoC200T.runs/impl_1/CortexM3_Soc_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:252default:default2
00:00:142default:default2
3704.8322default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file CortexM3_Soc_methodology_drc_routed.rpt -pb CortexM3_Soc_methodology_drc_routed.pb -rpx CortexM3_Soc_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file CortexM3_Soc_methodology_drc_routed.rpt -pb CortexM3_Soc_methodology_drc_routed.pb -rpx CortexM3_Soc_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
yG:/SoC/Projects/CortexM3_soc/Vivado/CortexM3_SoC200T/CortexM3_SoC200T.runs/impl_1/CortexM3_Soc_methodology_drc_routed.rptyG:/SoC/Projects/CortexM3_soc/Vivado/CortexM3_SoC200T/CortexM3_SoC200T.runs/impl_1/CortexM3_Soc_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2(
report_methodology: 2default:default2
00:01:052default:default2
00:00:382default:default2
3704.8322default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_power -file CortexM3_Soc_power_routed.rpt -pb CortexM3_Soc_power_summary_routed.pb -rpx CortexM3_Soc_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
|report_power -file CortexM3_Soc_power_routed.rpt -pb CortexM3_Soc_power_summary_routed.pb -rpx CortexM3_Soc_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
17792default:default2
272default:default2
12default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:01:042default:default2
00:00:412default:default2
3704.8322default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2y
eExecuting : report_route_status -file CortexM3_Soc_route_status.rpt -pb CortexM3_Soc_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file CortexM3_Soc_timing_summary_routed.rpt -pb CortexM3_Soc_timing_summary_routed.pb -rpx CortexM3_Soc_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -2, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px? 
?
}There are set_bus_skew constraint(s) in this design. Please run report_bus_skew to ensure that bus skew requirements are met.223*timingZ38-436h px? 
?
%s4*runtcl2i
UExecuting : report_incremental_reuse -file CortexM3_Soc_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2i
UExecuting : report_clock_utilization -file CortexM3_Soc_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file CortexM3_Soc_bus_skew_routed.rpt -pb CortexM3_Soc_bus_skew_routed.pb -rpx CortexM3_Soc_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -2, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 


End Record