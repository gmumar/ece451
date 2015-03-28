vector CLK1 control_99.phi1
vector CLK2 control_99.phi2
vector CTRL {control_99.ctrl[6:0]}
vector Fbus {F[3:0]}
vector DATA {datapath_87.D[3:0]}
vector SL datapath_87.SL
vector SR datapath_87.SR
vector notCin datapath_87.notCin

vector CTRL_MUX control_99.ASelect control_99.zeroSelect control_99.BSelect control_99.DSelect
vector CTRL_SHIFT control_99.notshl control_99.shl control_99.notshr control_99.shr
vector Lbus {control_99.L[3:0]}
vector Mbus {control_99.M[3:0]}
vector Nbus {control_99.N[3:0]}
vector FBEnbus {control_99.FBEn[3:0]}
vector WriteEnbus {datapath_87.WriteEn[3:0]}
vector ARdEnbus {control_99.ARdEn[3:0]} 
vector BRdEnbus {control_99.BRdEn[3:0]} 
vector Abus {A[3:0]}
vector Bbus {B[3:0]}
vector Rbus {R[3:0]}
vector Sbus {S[3:0]}
vector rdataBus {rdata[3:0]}
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
s 20


setvector CLK1 0
setvector CLK2 1
setvector CTRL 0110000
setvector DATA 1111
setvector SL 0
setvector SR 0
setvector notCin 1
s
s
s
s

setvector CLK1 0
setvector CLK2 0
s 10

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000100
setvector SL 0
setvector SR 0
setvector notCin 1
s 10


setvector CLK1 1
setvector CLK2 0
setvector CTRL 0000100
setvector SL 0
setvector SR 0
setvector notCin 1
s
s
s
s

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000100
setvector SL 0
setvector SR 0
setvector notCin 1
s  10

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0010101
setvector SL 0
setvector SR 0
setvector notCin 1
s  10


| cycle 2
setvector CLK1 0
setvector CLK2 1
setvector CTRL 0010101
setvector SL 0
setvector SR 0
setvector notCin 1
s
s
s
s

setvector CLK1 0
setvector CLK2 0
setvector DATA 0101
s 10

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000100
setvector SL 0
setvector SR 0
setvector notCin 1
s 10


setvector CLK1 1
setvector CLK2 0
setvector CTRL 0000100
setvector SL 0
setvector SR 0
setvector notCin 1
s
s
s
s

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000100
setvector SL 0
setvector SR 0
setvector notCin 1
s  10

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0110000
setvector SL 0
setvector SR 0
setvector notCin 1
s  10

| cycle 3
setvector CLK1 0
setvector CLK2 1
setvector CTRL 0110000
setvector SL 0
setvector SR 0
setvector notCin 1
s
s
s
s

setvector CLK1 0
setvector CLK2 0
s 10

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0001000
setvector SL 0
setvector SR 0
setvector notCin 1
s 10


setvector CLK1 1
setvector CLK2 0
setvector CTRL 0001000
setvector SL 0
setvector SR 0
setvector notCin 1
s
s
s
s
 

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0001000
setvector SL 0
setvector SR 0
setvector notCin 1
s  10

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0110000
setvector SL 0
setvector SR 0
setvector notCin 1
s  10



ana CLK1 CLK2 CTRL DATA SL SR notCin Lbus Mbus Nbus CTRL_SHIFT ARdEnbus BRdEnbus FBEnbus WriteEnbus CTRL_MUX RAMINbus rdataBus Abus Bbus Rbus Sbus Fbus 



