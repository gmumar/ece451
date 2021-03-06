* FILE: Carry.sp

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

* SPICE netlist for "Carry" generated by MMI_SUE5.5.4 on Mon Jan 26 
*+ 10:05:47 EST 2015.

.SUBCKT inverter in out WP=2 LP=lp_min WN=1 LN=ln_min
M_1 out in gnd gnd n W='WN*1u' L=LN ad='arean(WN,sdd)' 
+ as='arean(WN,sdd)' pd='perin(WN,sdd)' ps='perin(WN,sdd)' 
M_2 out in vdd vdd p W='WP*1u' L=LP ad='areap(WP,sdd)' 
+ as='areap(WP,sdd)' pd='perip(WP,sdd)' ps='perip(WP,sdd)' 
.ENDS	$ inverter

* start main CELL Carry
* .SUBCKT Carry Ci_1 P Phi notCi notCi_1 notG notP 
Xinverter notCi_1 Ci_1 inverter 
Xinverter_1 notP P inverter 
Xinverter_2 notG net_1 inverter 
M_1 notCi Phi vdd vdd p W='2*1u' L=lp_min ad='areap(2,sdd)' 
+ as='areap(2,sdd)' pd='perip(2,sdd)' ps='perip(2,sdd)' 
M_2 notP Phi vdd vdd p W='2*1u' L=lp_min ad='areap(2,sdd)' 
+ as='areap(2,sdd)' pd='perip(2,sdd)' ps='perip(2,sdd)' 
M_3 notG Phi vdd vdd p W='2*1u' L=lp_min ad='areap(2,sdd)' 
+ as='areap(2,sdd)' pd='perip(2,sdd)' ps='perip(2,sdd)' 
M_4 notCi_1 P notCi gnd n W='1*1u' L=ln_min ad='arean(1,sdd)' 
+ as='arean(1,sdd)' pd='perin(1,sdd)' ps='perin(1,sdd)' 
M_5 notCi net_1 gnd gnd n W='1*1u' L=ln_min ad='arean(1,sdd)' 
+ as='arean(1,sdd)' pd='perin(1,sdd)' ps='perin(1,sdd)' 
* .ENDS	$ Carry

.GLOBAL gnd vdd

.END

