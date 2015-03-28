vector CLK1 Phi1 notPhi1
vector CLK2 Phi2
vector Fbus {F[3:0]}
vector DATA {datapath_87.D[3:0]}
vector SL datapath_87.SL
vector SR datapath_87.SR
vector notCin datapath_87.notCin

vector CTRL_MUX ASelect zeroSelect BSelect DSelect
vector CTRL_SHIFT notshl shl notshr shr
vector Lbus {L[3:0]}
vector Mbus {M[3:0]}
vector Nbus {N[3:0]}
vector FBEnbus {FBEn[3:0]}
vector notFBEnbus {notFBEn[3:0]}
vector ARdEnbus {ARdEn[3:0]} 
vector BRdEnbus {BRdEn[3:0]} 
vector Abus {A[3:0]}
vector Bbus {B[3:0]}
vector Rbus {R[3:0]}
vector Sbus {S[3:0]}
vector RAMINbus {RAMIN[3:0]}

stepsize 1000
| cycle 1
setvector CLK1 01
setvector CLK2 0
s 200

setvector CLK1 01
setvector CLK2 1
setvector CTRL 0110000
setvector DATA 0101
setvector SL 0
setvector SR 0
setvector notCin 1
s 

setvector CLK1 01
setvector CLK2 0
setvector CTRL 0001100
setvector SL 0
setvector SR 0
setvector notCin 1
s

setvector CLK1 10
setvector CLK2 0
setvector CTRL 0001100
setvector SL 0
setvector SR 0
setvector notCin 1
s

setvector CLK1 01
setvector CLK2 0
setvector CTRL 0001100
setvector SL 0
setvector SR 0
setvector notCin 1
s

| cycle 2


setvector CLK1 01
setvector CLK2 1
setvector CTRL 0110000
setvector DATA 0101
setvector SL 0
setvector SR 0
setvector notCin 1
s 

setvector CLK1 01
setvector CLK2 0
setvector CTRL 0001100
setvector SL 0
setvector SR 0
setvector notCin 1
s

setvector CLK1 10
setvector CLK2 0
setvector CTRL 0001100
setvector SL 0
setvector SR 0
setvector notCin 1
s

setvector CLK1 01
setvector CLK2 0
setvector CTRL 0001100
setvector SL 0
setvector SR 0
setvector notCin 1
s


ana CLK1 CLK2 CTRL DATA SL SR notCin Lbus Mbus Nbus CTRL_SHIFT ARdEnbus BRdEnbus FBEnbus notFBEnbus CTRL_MUX Lbus Mbus Nbus RAMINbus Abus Bbus Rbus Sbus Fbus



