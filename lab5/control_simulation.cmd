vector CLK1 phi1
vector CLK2 phi2
vector CTRL {ctrl[6:0]}

vector CTRL_MUX ASelect zeroSelect BSelect DSelect
vector CTRL_SHIFT notshl shl notshr shr
vector Lbus {L[3:0]}
vector Mbus {M[3:0]}
vector Nbus {N[3:0]}
vector FBEnbus {FBEn[3:0]}
vector notFBEnbus {notFBEn[3:0]}
vector ARdEnbus {ARdEn[3:0]} 
vector BRdEnbus {BRdEn[3:0]} 

stepsize 1000
| cycle 1
setvector CLK1 1
setvector CLK2 0
setvector CTRL 0000000
s

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000000
s

setvector CLK1 0
setvector CLK2 1
setvector CTRL 0110000
s

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000000
s

| cycle 2
setvector CLK1 1
setvector CLK2 0
setvector CTRL 0000000
s

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000000
s

setvector CLK1 0
setvector CLK2 1
setvector CTRL 0010000
s

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0010000
s

| cycle 3
setvector CLK1 1
setvector CLK2 0
setvector CTRL 0010000
s

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0010000
s

setvector CLK1 0
setvector CLK2 1
setvector CTRL 0010000
s

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0010000
s


ana CLK1 CLK2 CTRL Lbus Mbus Nbus CTRL_SHIFT ARdEnbus BRdEnbus FBEnbus notFBEnbus CTRL_MUX Lbus Mbus Nbus 



