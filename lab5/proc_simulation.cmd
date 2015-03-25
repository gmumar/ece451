vector CLK1 control_99.phi1
vector CLK2 control_99.phi2
vector CTRL {control_99.ctrl[6:0]}
vector OUT {F[3:0]}
vector DATA {datapath_87.D[3:0]}
vector SL datapath_87.SL
vector SR datapath_87.SR
vector notCin datapath_87.notCin


stepsize 1000
| cycle 1
setvector CLK1 1
setvector CLK2 0
setvector CTRL 0000000
setvector DATA 0101
setvector SL 0
setvector SR 0
setvector notCin 1
s

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000000
setvector SL 0
setvector SR 0
setvector notCin 1
s

setvector CLK1 0
setvector CLK2 1
setvector CTRL 0110000
setvector SL 0
setvector SR 0
setvector notCin 1
s

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000000
setvector SL 0
setvector SR 0
setvector notCin 1
s

| cycle 2
setvector CLK1 1
setvector CLK2 0
setvector CTRL 0000000
setvector SL 0
setvector SR 0
setvector notCin 1
s

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000000
setvector SL 0
setvector SR 0
setvector notCin 1
s

setvector CLK1 0
setvector CLK2 1
setvector CTRL 0010000
setvector SL 0
setvector SR 0
setvector notCin 1
s

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0010000
setvector SL 0
setvector SR 0
setvector notCin 1
s

| cycle 3
setvector CLK1 1
setvector CLK2 0
setvector CTRL 0010000
setvector SL 0
setvector SR 0
setvector notCin 1
s

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0010000
setvector SL 0
setvector SR 0
setvector notCin 1
s

setvector CLK1 0
setvector CLK2 1
setvector CTRL 0010000
setvector SL 0
setvector SR 0
setvector notCin 1
s

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0010000
setvector SL 0
setvector SR 0
setvector notCin 1
s


ana CLK1 CLK2 CTRL DATA OUT SL SR notCin
