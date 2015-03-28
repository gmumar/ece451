vector CLK1 phi1
vector CLK2 phi2
vector notCLK1 datapath_87.notPhi1
vector CTRL {ctrl[6:0]}
vector Fbus {F[3:0]}
vector DATA {datapath_87.D[3:0]}
vector SL datapath_87.SL
vector SR datapath_87.SR
vector notCin datapath_87.notCin

vector CTRL_MUX datapath_87.ASelect datapath_87.zeroSelect datapath_87.BSelect datapath_87.DSelect
vector CTRL_SHIFT datapath_87.notshl datapath_87.shl datapath_87.notshr datapath_87.shr
vector Lbus {datapath_87.L[3:0]}
vector Mbus {datapath_87.M[3:0]}
vector Nbus {datapath_87.N[3:0]}
vector FBEnbus {datapath_87.FBEn[3:0]}
vector notFBEnbus {datapath_87.notFBEn[3:0]}
vector ARdEnbus {datapath_87.ARdEn[3:0]} 
vector BRdEnbus {datapath_87.BRdEn[3:0]} 
vector Abus {A[3:0]}
vector Bbus {B[3:0]}
vector Rbus {R[3:0]}
vector Sbus {S[3:0]}
vector RAMINbus {RAMIN[3:0]}

stepsize 1000
| cycle 1

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0110000
setvector DATA 1111
setvector SL 0
setvector SR 0
setvector notCin 1
s 200


setvector CLK1 0
setvector CLK2 1
setvector CTRL 0110000
setvector DATA 1111
setvector SL 0
setvector SR 0
setvector notCin 1
s

setvector CLK1 0
setvector CLK2 0
s 500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000100
setvector SL 0
setvector SR 0
setvector notCin 1
s 500


setvector CLK1 1
setvector CLK2 0
setvector CTRL 0000100
setvector SL 0
setvector SR 0
setvector notCin 1
s
 

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000100
setvector SL 0
setvector SR 0
setvector notCin 1
s  500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0010101
setvector SL 0
setvector SR 0
setvector notCin 1
s  500


| cycle 2
setvector CLK1 0
setvector CLK2 1
setvector CTRL 0010101
setvector SL 0
setvector SR 0
setvector notCin 1
s

setvector CLK1 0
setvector CLK2 0
setvector DATA 0101
s 500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000100
setvector SL 0
setvector SR 0
setvector notCin 1
s 500


setvector CLK1 1
setvector CLK2 0
setvector CTRL 0000100
setvector SL 0
setvector SR 0
setvector notCin 1
s
 

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000100
setvector SL 0
setvector SR 0
setvector notCin 1
s  500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0110000
setvector SL 0
setvector SR 0
setvector notCin 1
s  500

| cycle 3
setvector CLK1 0
setvector CLK2 1
setvector CTRL 0110000
setvector SL 0
setvector SR 0
setvector notCin 1
s

setvector CLK1 0
setvector CLK2 0
s 500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0001000
setvector SL 0
setvector SR 0
setvector notCin 1
s 500


setvector CLK1 1
setvector CLK2 0
setvector CTRL 0001000
setvector SL 0
setvector SR 0
setvector notCin 1
s
 

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0001000
setvector SL 0
setvector SR 0
setvector notCin 1
s  500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0110000
setvector SL 0
setvector SR 0
setvector notCin 1
s  500



ana CLK1 notCLK1 CLK2  CTRL DATA SL SR notCin Lbus Mbus Nbus CTRL_SHIFT ARdEnbus BRdEnbus FBEnbus notFBEnbus CTRL_MUX Lbus Mbus Nbus RAMINbus Abus Bbus Rbus Sbus Fbus



