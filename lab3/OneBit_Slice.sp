* FILE: OneBit_Slice.sp

********************** begin header *****************************

* Sample Header file for Generic 2.5V 0.25 um process (g25)

.OPTIONS post ACCT OPTS lvltim=2
.OPTIONS post_version=9007

**################################################
* Only Typical/Typical models included
* NEED TO CHANGE ${MMI_TOOLS} TO BE PHYSICAL PATH
.include '/cad2/mmi_local/sue/g25.mod'
* NOTE: these are contrived spice models
**################################################

.param  arean(w,sdd) = '(w*sdd*1p)'
.param  areap(w,sdd) = '(w*sdd*1p)'
* Setup either one or the other of the following
* For ACM=0,2,10,12 fet models
.param  perin(w,sdd) = '(2u*(w+sdd))'
.param  perip(w,sdd) = '(2u*(w+sdd))'
* For ACM=3,13 fet models
*.param  perin(w,sdd) = '(1u*(w+2*sdd))'
*.param  perip(w,sdd) = '(1u*(w+2*sdd))'

.param ln_min   =  0.25u
.param lp_min   =  0.25u

* used in source/drain area/perimeter calculation
.param sdd        =  0.95

.PARAM vddp=2.5		$ VDD voltage

VDD vdd 0 DC vddp 

.TEMP 105
.TRAN 10p 16n
*********************** end header ******************************

* SPICE netlist for "OneBit_Slice" generated by MMI_SUE5.5.4 on Thu Feb 
*+ 26 20:46:19 EST 2015.

.SUBCKT inverter in out WP=2 LP=lp_min WN=1 LN=ln_min
M_1 out in gnd gnd n W='WN*1u' L=LN ad='arean(WN,sdd)' 
+ as='arean(WN,sdd)' pd='perin(WN,sdd)' ps='perin(WN,sdd)' 
M_2 out in vdd vdd p W='WP*1u' L=LP ad='areap(WP,sdd)' 
+ as='areap(WP,sdd)' pd='perip(WP,sdd)' ps='perip(WP,sdd)' 
.ENDS	$ inverter

.SUBCKT OpSel In1 In1Select In2 In2Select Out Phi1 notOut notPhi1 
M_1 In1 In1Select net_3 gnd n W='1*1u' L=ln_min ad='arean(1,sdd)' 
+ as='arean(1,sdd)' pd='perin(1,sdd)' ps='perin(1,sdd)' 
Xinverter net_3 net_1 inverter 
M_2 net_1 notPhi1 net_2 vdd p W='2*1u' L=lp_min ad='areap(2,sdd)' 
+ as='areap(2,sdd)' pd='perip(2,sdd)' ps='perip(2,sdd)' 
M_3 net_1 Phi1 net_2 gnd n W='1*1u' L=ln_min ad='arean(1,sdd)' 
+ as='arean(1,sdd)' pd='perin(1,sdd)' ps='perin(1,sdd)' 
Xinverter_1 net_2 Out inverter 
Xinverter_2 Out notOut inverter 
M_4 In2 Phi1 net_4 gnd n W='2*1u' L=ln_min ad='arean(2,sdd)' 
+ as='arean(2,sdd)' pd='perin(2,sdd)' ps='perin(2,sdd)' 
M_5 net_4 In2Select net_3 gnd n W='2*1u' L=ln_min ad='arean(2,sdd)' 
+ as='arean(2,sdd)' pd='perin(2,sdd)' ps='perin(2,sdd)' 
M_6 net_3 Phi1 vdd vdd p W='1*1u' L=lp_min ad='areap(1,sdd)' 
+ as='areap(1,sdd)' pd='perip(1,sdd)' ps='perip(1,sdd)' 
.ENDS	$ OpSel

.SUBCKT RamCell ARdEn Ai BRdEn Bi FBEn RAMINi WriteEn notFBEn 
M_1 net_2 notFBEn net_1 vdd p W='2*1u' L=lp_min ad='areap(2,sdd)' 
+ as='areap(2,sdd)' pd='perip(2,sdd)' ps='perip(2,sdd)' 
M_2 net_2 FBEn net_1 gnd n W='1*1u' L=ln_min ad='arean(1,sdd)' 
+ as='arean(1,sdd)' pd='perin(1,sdd)' ps='perin(1,sdd)' 
M_3 net_1 ARdEn Ai gnd n W='1*1u' L=ln_min ad='arean(1,sdd)' 
+ as='arean(1,sdd)' pd='perin(1,sdd)' ps='perin(1,sdd)' 
M_4 net_1 BRdEn Bi gnd n W='1*1u' L=ln_min ad='arean(1,sdd)' 
+ as='arean(1,sdd)' pd='perin(1,sdd)' ps='perin(1,sdd)' 
M_5 RAMINi WriteEn net_2 gnd n W='1*1u' L=ln_min ad='arean(1,sdd)' 
+ as='arean(1,sdd)' pd='perin(1,sdd)' ps='perin(1,sdd)' 
Xinverter net_2 net_3 inverter 
Xinverter_1 net_3 net_1 inverter 
.ENDS	$ RamCell

.SUBCKT RegFile ARdEn[0] ARdEn[1] ARdEn[2] ARdEn[3] Ai BRdEn[0] BRdEn[1] 
+ BRdEn[2] BRdEn[3] Bi FBEn[0] FBEn[1] FBEn[2] FBEn[3] Phi1 RAMINi 
+ WriteEn[0] WriteEn[1] WriteEn[2] WriteEn[3] notFBEn[0] notFBEn[1] 
+ notFBEn[2] notFBEn[3] 
M_1 Ai Phi1 vdd vdd p W='1*1u' L=lp_min ad='areap(1,sdd)' 
+ as='areap(1,sdd)' pd='perip(1,sdd)' ps='perip(1,sdd)' 
M_2 Bi Phi1 vdd vdd p W='1*1u' L=lp_min ad='areap(1,sdd)' 
+ as='areap(1,sdd)' pd='perip(1,sdd)' ps='perip(1,sdd)' 
XRamCell_45 ARdEn[0] Ai BRdEn[0] Bi FBEn[0] RAMINi WriteEn[0] notFBEn[0] 
+ RamCell 
XRamCell_2 ARdEn[1] Ai BRdEn[1] Bi FBEn[1] RAMINi WriteEn[1] notFBEn[1] 
+ RamCell 
XRamCell_4 ARdEn[2] Ai BRdEn[2] Bi FBEn[2] RAMINi WriteEn[2] notFBEn[2] 
+ RamCell 
XRamCell_27 ARdEn[3] Ai BRdEn[3] Bi FBEn[3] RAMINi WriteEn[3] notFBEn[3] 
+ RamCell 
.ENDS	$ RegFile

.SUBCKT Func R S X[0] X[1] X[2] X[3] Y notR notS 
M_1 X[0] notS net_1 gnd n W='2*1u' L=ln_min ad='arean(2,sdd)' 
+ as='arean(2,sdd)' pd='perin(2,sdd)' ps='perin(2,sdd)' 
M_2 net_1 notR Y gnd n W='2*1u' L=ln_min ad='arean(2,sdd)' 
+ as='arean(2,sdd)' pd='perin(2,sdd)' ps='perin(2,sdd)' 
M_3 X[1] notR net_4 gnd n W='2*1u' L=ln_min ad='arean(2,sdd)' 
+ as='arean(2,sdd)' pd='perin(2,sdd)' ps='perin(2,sdd)' 
M_4 X[2] notS net_2 gnd n W='2*1u' L=ln_min ad='arean(2,sdd)' 
+ as='arean(2,sdd)' pd='perin(2,sdd)' ps='perin(2,sdd)' 
M_5 net_4 S Y gnd n W='2*1u' L=ln_min ad='arean(2,sdd)' 
+ as='arean(2,sdd)' pd='perin(2,sdd)' ps='perin(2,sdd)' 
M_6 net_2 R Y gnd n W='2*1u' L=ln_min ad='arean(2,sdd)' 
+ as='arean(2,sdd)' pd='perin(2,sdd)' ps='perin(2,sdd)' 
M_7 net_3 R Y gnd n W='2*1u' L=ln_min ad='arean(2,sdd)' 
+ as='arean(2,sdd)' pd='perin(2,sdd)' ps='perin(2,sdd)' 
M_8 X[3] S net_3 gnd n W='2*1u' L=ln_min ad='arean(2,sdd)' 
+ as='arean(2,sdd)' pd='perin(2,sdd)' ps='perin(2,sdd)' 
.ENDS	$ Func

.SUBCKT TFunc R S X[0] X[1] X[2] X[3] Y notR notS 
M_1 X[0] notS net_4 gnd n W='2*1u' L=ln_min ad='arean(2,sdd)' 
+ as='arean(2,sdd)' pd='perin(2,sdd)' ps='perin(2,sdd)' 
M_2 net_4 notR Y gnd n W='2*1u' L=ln_min ad='arean(2,sdd)' 
+ as='arean(2,sdd)' pd='perin(2,sdd)' ps='perin(2,sdd)' 
M_3 X[1] notR net_1 gnd n W='2*1u' L=ln_min ad='arean(2,sdd)' 
+ as='arean(2,sdd)' pd='perin(2,sdd)' ps='perin(2,sdd)' 
M_4 net_1 S Y gnd n W='2*1u' L=ln_min ad='arean(2,sdd)' 
+ as='arean(2,sdd)' pd='perin(2,sdd)' ps='perin(2,sdd)' 
M_5 X[2] notS net_6 gnd n W='2*1u' L=ln_min ad='arean(2,sdd)' 
+ as='arean(2,sdd)' pd='perin(2,sdd)' ps='perin(2,sdd)' 
M_6 net_6 R Y gnd n W='2*1u' L=ln_min ad='arean(2,sdd)' 
+ as='arean(2,sdd)' pd='perin(2,sdd)' ps='perin(2,sdd)' 
M_7 X[3] S net_7 gnd n W='2*1u' L=ln_min ad='arean(2,sdd)' 
+ as='arean(2,sdd)' pd='perin(2,sdd)' ps='perin(2,sdd)' 
M_8 net_7 R Y gnd n W='2*1u' L=ln_min ad='arean(2,sdd)' 
+ as='arean(2,sdd)' pd='perin(2,sdd)' ps='perin(2,sdd)' 
M_9 net_3 S X[0] vdd p W='4*1u' L=lp_min ad='areap(4,sdd)' 
+ as='areap(4,sdd)' pd='perip(4,sdd)' ps='perip(4,sdd)' 
M_10 Y R net_3 vdd p W='4*1u' L=lp_min ad='areap(4,sdd)' 
+ as='areap(4,sdd)' pd='perip(4,sdd)' ps='perip(4,sdd)' 
M_11 Y R net_2 vdd p W='4*1u' L=lp_min ad='areap(4,sdd)' 
+ as='areap(4,sdd)' pd='perip(4,sdd)' ps='perip(4,sdd)' 
M_12 Y S net_5 vdd p W='4*1u' L=lp_min ad='areap(4,sdd)' 
+ as='areap(4,sdd)' pd='perip(4,sdd)' ps='perip(4,sdd)' 
M_13 net_5 notR X[2] vdd p W='4*1u' L=lp_min ad='areap(4,sdd)' 
+ as='areap(4,sdd)' pd='perip(4,sdd)' ps='perip(4,sdd)' 
M_14 net_2 notS X[1] vdd p W='4*1u' L=lp_min ad='areap(4,sdd)' 
+ as='areap(4,sdd)' pd='perip(4,sdd)' ps='perip(4,sdd)' 
M_15 Y notR net_8 vdd p W='4*1u' L=lp_min ad='areap(4,sdd)' 
+ as='areap(4,sdd)' pd='perip(4,sdd)' ps='perip(4,sdd)' 
M_16 net_8 notS X[3] vdd p W='4*1u' L=lp_min ad='areap(4,sdd)' 
+ as='areap(4,sdd)' pd='perip(4,sdd)' ps='perip(4,sdd)' 
.ENDS	$ TFunc

.SUBCKT Carry Ci_1 P Phi notCi notCi_1 notG notP 
Xinverter notCi_1 Ci_1 inverter 
Xinverter_1 notP P inverter 
Xinverter_2 notG net_1 inverter 
M_1 notCi_1 P notCi gnd n W='1*1u' L=ln_min ad='arean(1,sdd)' 
+ as='arean(1,sdd)' pd='perin(1,sdd)' ps='perin(1,sdd)' 
M_2 notCi net_1 gnd gnd n W='1*1u' L=ln_min ad='arean(1,sdd)' 
+ as='arean(1,sdd)' pd='perin(1,sdd)' ps='perin(1,sdd)' 
M_3 notCi Phi vdd vdd p W='1*1u' L=lp_min ad='areap(1,sdd)' 
+ as='areap(1,sdd)' pd='perip(1,sdd)' ps='perip(1,sdd)' 
M_4 notP Phi vdd vdd p W='1*1u' L=lp_min ad='areap(1,sdd)' 
+ as='areap(1,sdd)' pd='perip(1,sdd)' ps='perip(1,sdd)' 
M_5 notG Phi vdd vdd p W='1*1u' L=lp_min ad='areap(1,sdd)' 
+ as='areap(1,sdd)' pd='perip(1,sdd)' ps='perip(1,sdd)' 
.ENDS	$ Carry

.SUBCKT ALU Fi L[0] L[1] L[2] L[3] M[0] M[1] M[2] M[3] N[0] N[1] N[2] 
+ N[3] Phi2 Ri Si notCi notCi_1 notR notS 
XFunc Ri Si L[0] L[1] L[2] L[3] net_3 notR notS Func 
XFunc_1 Ri Si M[0] M[1] M[2] M[3] notP notR notS Func 
Xinverter notFi Fi inverter 
XTFunc net_1 net_2 N[0] N[1] N[2] N[3] notFi notCi_1 notP TFunc 
XCarry net_1 net_2 Phi2 notCi notCi_1 net_3 notP Carry 
.ENDS	$ ALU

* start main CELL OneBit_Slice
* .SUBCKT OneBit_Slice ARdEn[0] ARdEn[1] ARdEn[2] ARdEn[3] BRdEn[0] 
*+ BRdEn[1] BRdEn[2] BRdEn[3] D FBEn[0] FBEn[1] FBEn[2] FBEn[3] Fi 
*+ In1Select0 In1Select1 In2Select0 In2Select1 L[0] L[1] L[2] L[3] M[0] 
*+ M[1] M[2] M[3] N[0] N[1] N[2] N[3] Phi1 Phi2 RAMINi WriteEn[0] 
*+ WriteEn[1] WriteEn[2] WriteEn[3] notCi notCi_1 notFBEn[0] notFBEn[1] 
*+ notFBEn[2] notFBEn[3] notPhi1 
XOpSel gnd In1Select0 A In2Select0 Si Phi1 net_1 notPhi1 OpSel 
XOpSel_1 D In1Select1 B In2Select1 Ri Phi1 net_2 notPhi1 OpSel 
XRegFile_79 ARdEn[0] ARdEn[1] ARdEn[2] ARdEn[3] A BRdEn[0] BRdEn[1] 
+ BRdEn[2] BRdEn[3] B FBEn[0] FBEn[1] FBEn[2] FBEn[3] Phi1 RAMINi 
+ WriteEn[0] WriteEn[1] WriteEn[2] WriteEn[3] notFBEn[0] notFBEn[1] 
+ notFBEn[2] notFBEn[3] RegFile 
XALU Fi L[0] L[1] L[2] L[3] M[0] M[1] M[2] M[3] N[0] N[1] N[2] N[3] Phi2 
+ Ri Si notCi notCi_1 net_2 net_1 ALU 
* .ENDS	$ OneBit_Slice

.GLOBAL gnd vdd

.END

