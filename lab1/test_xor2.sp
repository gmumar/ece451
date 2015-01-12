* FILE: test_xor2.sp

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

* SPICE netlist for "test_xor2" generated by MMI_SUE5.5.4 on Mon Jan 12 
*+ 11:35:23 AM EST 2015.

.SUBCKT nor A B out 
M_1 out A gnd gnd n W='1*1u' L=ln_min ad='arean(1,sdd)' 
+ as='arean(1,sdd)' pd='perin(1,sdd)' ps='perin(1,sdd)' 
M_2 out B gnd gnd n W='1*1u' L=ln_min ad='arean(1,sdd)' 
+ as='arean(1,sdd)' pd='perin(1,sdd)' ps='perin(1,sdd)' 
M_3 net_1 A vdd vdd p W='2*1u' L=lp_min ad='areap(2,sdd)' 
+ as='areap(2,sdd)' pd='perip(2,sdd)' ps='perip(2,sdd)' 
M_4 out B net_1 vdd p W='2*1u' L=lp_min ad='areap(2,sdd)' 
+ as='areap(2,sdd)' pd='perip(2,sdd)' ps='perip(2,sdd)' 
.ENDS	$ nor

.SUBCKT xor2 A B out 
Xnor A B net_1 nor 
M_1 out net_1 gnd gnd n W='1*1u' L=ln_min ad='arean(1,sdd)' 
+ as='arean(1,sdd)' pd='perin(1,sdd)' ps='perin(1,sdd)' 
M_2 net_2 B vdd vdd p W='4*1u' L=lp_min ad='areap(4,sdd)' 
+ as='areap(4,sdd)' pd='perip(4,sdd)' ps='perip(4,sdd)' 
M_3 net_2 A vdd vdd p W='4*1u' L=lp_min ad='areap(4,sdd)' 
+ as='areap(4,sdd)' pd='perip(4,sdd)' ps='perip(4,sdd)' 
M_4 out net_1 net_2 vdd p W='4*1u' L=lp_min ad='areap(4,sdd)' 
+ as='areap(4,sdd)' pd='perip(4,sdd)' ps='perip(4,sdd)' 
M_5 out A net_3 gnd n W='2*1u' L=ln_min ad='arean(2,sdd)' 
+ as='arean(2,sdd)' pd='perin(2,sdd)' ps='perin(2,sdd)' 
M_6 net_3 B gnd gnd n W='2*1u' L=ln_min ad='arean(2,sdd)' 
+ as='arean(2,sdd)' pd='perin(2,sdd)' ps='perin(2,sdd)' 
.ENDS	$ xor2

.SUBCKT Counter OUT1 OUT2 
V_1 OUT2 GND pulse 0 vddp 0ns 200ps 200ps 3ns 6ns 
V_2 OUT1 GND pulse 0 vddp 0ns 200ps 200ps 6ns 12ns 
.ENDS	$ Counter

* start main CELL test_xor2
* .SUBCKT test_xor2  
Xxor2 net_2 net_1 uc_net_3 xor2 
XCounter net_2 net_1 Counter 
* .ENDS	$ test_xor2

.GLOBAL gnd vdd

.END
