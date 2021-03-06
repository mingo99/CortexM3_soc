
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
BUFGCTRL_X0Y6
BUFGCTRL_X0Y62default:default2default:default2;
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
C
.Phase 1 Build RT Design | Checksum: 141ef5b27
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:29 ; elapsed = 00:01:07 . Memory (MB): peak = 2966.324 ; gain = 0.0002default:defaulth px? 
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
B
-Phase 2.1 Create Timer | Checksum: 141ef5b27
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:30 ; elapsed = 00:01:09 . Memory (MB): peak = 2966.324 ; gain = 0.0002default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 141ef5b27
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:31 ; elapsed = 00:01:10 . Memory (MB): peak = 2971.574 ; gain = 5.2502default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 141ef5b27
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:31 ; elapsed = 00:01:10 . Memory (MB): peak = 2971.574 ; gain = 5.2502default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 22ee8ee5b
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:02:14 ; elapsed = 00:01:40 . Memory (MB): peak = 3058.211 ; gain = 91.8872default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-1.307 | TNS=-74.820| WHS=-1.396 | THS=-1438.989|
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
0Phase 2.5.1 Update Timing | Checksum: 1c47c92fe
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:45 ; elapsed = 00:02:00 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-1.307 | TNS=-72.688| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
P
;Phase 2.5 Update Timing for Bus Skew | Checksum: 1adc480e3
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:45 ; elapsed = 00:02:01 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
I
4Phase 2 Router Initialization | Checksum: 200c9725a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:46 ; elapsed = 00:02:01 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
C
.Phase 3 Initial Routing | Checksum: 15f3a97bc
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:54 ; elapsed = 00:02:40 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
?
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
12default:default2?
?The top 5 pins with tight setup and hold constraints:

+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|       Launch Clock       |      Capture Clock       |                                                 Pin                                                      |
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|              clk_50M_PLL |               camera_clk |                                                                               CAMEARA/syn_valid_reg_reg/D|
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
7| WNS=-3.878 | TNS=-237.281| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 13c39d11c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:11 ; elapsed = 00:05:52 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-3.878 | TNS=-235.919| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 1e8ec324c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:13 ; elapsed = 00:05:54 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 1e8ec324c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:13 ; elapsed = 00:05:54 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
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
E
0Phase 5.1.1 Update Timing | Checksum: 21de3ade8
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:21 ; elapsed = 00:06:00 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-3.878 | TNS=-231.435| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 16f899aa4
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:22 ; elapsed = 00:06:01 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 16f899aa4
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:23 ; elapsed = 00:06:01 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 16f899aa4
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:23 ; elapsed = 00:06:01 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
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
0Phase 6.1.1 Update Timing | Checksum: 145e6cc7b
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:32 ; elapsed = 00:06:07 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-3.878 | TNS=-231.232| WHS=0.034  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 11ca43957
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:32 ; elapsed = 00:06:07 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 11ca43957
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:32 ; elapsed = 00:06:08 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
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
.Phase 7.1 Update Timing | Checksum: 15888a910
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:49 ; elapsed = 00:06:18 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-3.878 | TNS=-231.232| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 7 Timing Verification | Checksum: 15888a910
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:49 ; elapsed = 00:06:18 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
o

Phase %s%s
101*constraints2
8 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 8 Route finalize | Checksum: 15888a910
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:50 ; elapsed = 00:06:18 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
v

Phase %s%s
101*constraints2
9 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 9 Verifying routed nets | Checksum: 15888a910
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:50 ; elapsed = 00:06:19 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
s

Phase %s%s
101*constraints2
10 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
F
1Phase 10 Depositing Routes | Checksum: 205ab8e95
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:58 ; elapsed = 00:06:28 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
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
00:00:00.0562default:default2
3414.3632default:default2
0.0002default:defaultZ17-268h px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-1.5982default:defaultZ30-746h px? 
@
+Ending IncrPlace Task | Checksum: f778db9b
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:14 ; elapsed = 00:01:07 . Memory (MB): peak = 3414.363 ; gain = 0.0002default:defaulth px? 
J
5Phase 11 Incr Placement Change | Checksum: 205ab8e95
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:11:14 ; elapsed = 00:07:36 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
q

Phase %s%s
101*constraints2
12 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
D
/Phase 12 Build RT Design | Checksum: 175dfdcf8
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:11:36 ; elapsed = 00:07:59 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
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
.Phase 13.1 Create Timer | Checksum: 117e3d063
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:11:40 ; elapsed = 00:08:03 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
|

Phase %s%s
101*constraints2
13.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
O
:Phase 13.2 Fix Topology Constraints | Checksum: 117e3d063
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:11:41 ; elapsed = 00:08:04 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
u

Phase %s%s
101*constraints2
13.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
G
2Phase 13.3 Pre Route Cleanup | Checksum: ddd70517
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:11:41 ; elapsed = 00:08:04 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
q

Phase %s%s
101*constraints2
13.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 13.4 Update Timing | Checksum: 17583fdd9
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:12:31 ; elapsed = 00:08:38 . Memory (MB): peak = 3414.363 ; gain = 448.0392default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-1.419 | TNS=-98.856| WHS=-1.358 | THS=-1433.551|
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
1Phase 13.5.1 Update Timing | Checksum: 144c40ece
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:13:01 ; elapsed = 00:08:56 . Memory (MB): peak = 3756.363 ; gain = 790.0392default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-1.419 | TNS=-93.261| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
Q
<Phase 13.5 Update Timing for Bus Skew | Checksum: 13bb56ab0
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:13:01 ; elapsed = 00:08:56 . Memory (MB): peak = 3756.363 ; gain = 790.0392default:defaulth px? 
J
5Phase 13 Router Initialization | Checksum: 120234299
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:13:02 ; elapsed = 00:08:57 . Memory (MB): peak = 3756.363 ; gain = 790.0392default:defaulth px? 
q

Phase %s%s
101*constraints2
14 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
D
/Phase 14 Initial Routing | Checksum: 245a274a6
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:13:04 ; elapsed = 00:08:59 . Memory (MB): peak = 3756.363 ; gain = 790.0392default:defaulth px? 
?
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
12default:default2?
?The top 5 pins with tight setup and hold constraints:

+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|       Launch Clock       |      Capture Clock       |                                                 Pin                                                      |
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|              clk_50M_PLL |               camera_clk |                                                                               CAMEARA/syn_valid_reg_reg/D|
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
7| WNS=-3.735 | TNS=-223.734| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 15.1 Global Iteration 0 | Checksum: 8e3ae0ae
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:26 ; elapsed = 00:10:01 . Memory (MB): peak = 3756.363 ; gain = 790.0392default:defaulth px? 
v

Phase %s%s
101*constraints2
15.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-3.735 | TNS=-221.955| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 15.2 Global Iteration 1 | Checksum: d378e811
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:28 ; elapsed = 00:10:03 . Memory (MB): peak = 3756.363 ; gain = 790.0392default:defaulth px? 
F
1Phase 15 Rip-up And Reroute | Checksum: d378e811
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:28 ; elapsed = 00:10:03 . Memory (MB): peak = 3756.363 ; gain = 790.0392default:defaulth px? 
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
1Phase 16.1.1 Update Timing | Checksum: 141bf7261
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:36 ; elapsed = 00:10:08 . Memory (MB): peak = 3756.363 ; gain = 790.0392default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-3.735 | TNS=-219.079| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
D
/Phase 16.1 Delay CleanUp | Checksum: 21a4256c7
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:38 ; elapsed = 00:10:09 . Memory (MB): peak = 3756.363 ; gain = 790.0392default:defaulth px? 
{

Phase %s%s
101*constraints2
16.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
N
9Phase 16.2 Clock Skew Optimization | Checksum: 21a4256c7
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:38 ; elapsed = 00:10:09 . Memory (MB): peak = 3756.363 ; gain = 790.0392default:defaulth px? 
P
;Phase 16 Delay and Skew Optimization | Checksum: 21a4256c7
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:38 ; elapsed = 00:10:10 . Memory (MB): peak = 3756.363 ; gain = 790.0392default:defaulth px? 
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
1Phase 17.1.1 Update Timing | Checksum: 22f79ffe1
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:47 ; elapsed = 00:10:16 . Memory (MB): peak = 3756.363 ; gain = 790.0392default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-3.735 | TNS=-218.806| WHS=0.034  | THS=0.000  |
2default:defaultZ35-416h px? 
D
/Phase 17.1 Hold Fix Iter | Checksum: 2189d790b
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:48 ; elapsed = 00:10:16 . Memory (MB): peak = 3756.363 ; gain = 790.0392default:defaulth px? 
B
-Phase 17 Post Hold Fix | Checksum: 2189d790b
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:48 ; elapsed = 00:10:16 . Memory (MB): peak = 3756.363 ; gain = 790.0392default:defaulth px? 
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
/Phase 18.1 Update Timing | Checksum: 1a2beb56d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:05 ; elapsed = 00:10:26 . Memory (MB): peak = 3756.363 ; gain = 790.0392default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-3.735 | TNS=-218.806| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 18 Timing Verification | Checksum: 1a2beb56d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:05 ; elapsed = 00:10:26 . Memory (MB): peak = 3756.363 ; gain = 790.0392default:defaulth px? 
p

Phase %s%s
101*constraints2
19 2default:default2"
Route finalize2default:defaultZ18-101h px? 
C
.Phase 19 Route finalize | Checksum: 1a2beb56d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:06 ; elapsed = 00:10:27 . Memory (MB): peak = 3756.363 ; gain = 790.0392default:defaulth px? 
w

Phase %s%s
101*constraints2
20 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
J
5Phase 20 Verifying routed nets | Checksum: 1a2beb56d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:06 ; elapsed = 00:10:27 . Memory (MB): peak = 3756.363 ; gain = 790.0392default:defaulth px? 
s

Phase %s%s
101*constraints2
21 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
F
1Phase 21 Depositing Routes | Checksum: 1c73c92e3
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:14 ; elapsed = 00:10:37 . Memory (MB): peak = 3756.363 ; gain = 790.0392default:defaulth px? 
t

Phase %s%s
101*constraints2
22 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Post Routing Timing Summary %s
20*route2K
7| WNS=-3.734 | TNS=-218.870| WHS=0.036  | THS=0.000  |
2default:defaultZ35-20h px? 
?
dThe design did not meet timing requirements. Please run report_timing_summary for detailed reports.
39*routeZ35-39h px? 
?
?TNS is the sum of the worst slack violation on every endpoint in the design. Review the paths with the biggest WNS violations in the timing reports and modify your constraints or your design to improve both WNS and TNS.
96*routeZ35-253h px? 
G
2Phase 22 Post Router Timing | Checksum: 1c38f8ba3
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:54 ; elapsed = 00:11:00 . Memory (MB): peak = 3756.363 ; gain = 790.0392default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:55 ; elapsed = 00:11:01 . Memory (MB): peak = 3756.363 ; gain = 790.0392default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
17142default:default2
262default:default2
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
00:16:072default:default2
00:11:082default:default2
3756.3632default:default2
790.0392default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0572default:default2
3756.3632default:default2
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
00:00:332default:default2
00:00:102default:default2
3756.3632default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
mG:/SoC/Projects/CortexM3_soc/Vivado/CortexM3_SoC_noL2mtx/CortexM3_SoC200T.runs/impl_1/CortexM3_Soc_routed.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:432default:default2
00:00:202default:default2
3756.3632default:default2
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
qG:/SoC/Projects/CortexM3_soc/Vivado/CortexM3_SoC_noL2mtx/CortexM3_SoC200T.runs/impl_1/CortexM3_Soc_drc_routed.rptqG:/SoC/Projects/CortexM3_soc/Vivado/CortexM3_SoC_noL2mtx/CortexM3_SoC200T.runs/impl_1/CortexM3_Soc_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:232default:default2
00:00:132default:default2
3756.3632default:default2
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
}G:/SoC/Projects/CortexM3_soc/Vivado/CortexM3_SoC_noL2mtx/CortexM3_SoC200T.runs/impl_1/CortexM3_Soc_methodology_drc_routed.rpt}G:/SoC/Projects/CortexM3_soc/Vivado/CortexM3_SoC_noL2mtx/CortexM3_SoC200T.runs/impl_1/CortexM3_Soc_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2(
report_methodology: 2default:default2
00:01:022default:default2
00:00:382default:default2
3756.3632default:default2
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
17262default:default2
262default:default2
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
3756.3632default:default2
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