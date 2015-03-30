vector CLK1 Phi1
vector CLK2 Phi2
vector CTRL {ctrl[6:0]}
vector Fbus {F[3:0]}
vector DATA {D[3:0]}
vector SL datapath_87.SL
vector SR datapath_87.SR
vector notCin_0 notCin
vector notCout_0 notCout

vector CTRL_MUX In1Select0 In2Select0 In1Select1 In2Select1
vector CTRL_SHIFT notshl shl notshr shr
vector Lbus {L[3:0]}
vector Mbus {M[3:0]}
vector Nbus {N[3:0]}
vector FBEnbus {FBEn[3:0]}
vector WriteEnbus {notFBEn[3:0]}
vector ARdEnbus {ARdEn[3:0]} 
vector BRdEnbus {BRdEn[3:0]} 
vector Abus {A[3:0]}
vector Bbus {B[3:0]}
vector Rbus {R[3:0]}
vector Sbus {S[3:0]}
vector RAMINbus {RAMIN[3:0]}
vector rdatabus {rdata[3:0]}

stepsize 1000
| cycle 1

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0110000
setvector DATA 0110
setvector SL 0
setvector SR 0
setvector notCin_0 1
s 20

setvector CLK1 0
setvector CLK2 1
setvector CTRL 0110000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s
s
s
s

setvector CLK1 0
setvector CLK2 0
s 500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s 500


setvector CLK1 1
setvector CLK2 0
setvector CTRL 0000000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s


setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0010000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500


| cycle 2
setvector CLK1 0
setvector CLK2 1
setvector CTRL 0010000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s
s
s
s

setvector CLK1 0
setvector CLK2 0
s 500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000100
setvector DATA 1011
setvector SL 0
setvector SR 0
setvector notCin_0 1
s 500


setvector CLK1 1
setvector CLK2 0
setvector CTRL 0000100
setvector SL 0
setvector SR 0
setvector notCin_0 1
s


setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000100
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0110000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500

| cycle 3
setvector CLK1 0
setvector CLK2 1
setvector CTRL 0110000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s
s
s
s

setvector CLK1 0
setvector CLK2 0
s 500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0001000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s 500


setvector CLK1 1
setvector CLK2 0
setvector CTRL 0001000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s

 

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0001000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0110000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500

| Add2
| cycle 1

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0110000
setvector DATA 1010
setvector SL 0
setvector SR 0
setvector notCin_0 1
s 20

setvector CLK1 0
setvector CLK2 1
setvector CTRL 0110000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s
s
s
s

setvector CLK1 0
setvector CLK2 0
s 500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s 500


setvector CLK1 1
setvector CLK2 0
setvector CTRL 0000000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s


setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0010000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500


| cycle 2
setvector CLK1 0
setvector CLK2 1
setvector CTRL 0010000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s
s
s
s

setvector CLK1 0
setvector CLK2 0
s 500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000100
setvector DATA 0101
setvector SL 0
setvector SR 0
setvector notCin_0 1
s 500


setvector CLK1 1
setvector CLK2 0
setvector CTRL 0000100
setvector SL 0
setvector SR 0
setvector notCin_0 1
s


setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000100
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0110000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500

| cycle 3
setvector CLK1 0
setvector CLK2 1
setvector CTRL 0110000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s
s
s
s

setvector CLK1 0
setvector CLK2 0
s 500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0001000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s 500


setvector CLK1 1
setvector CLK2 0
setvector CTRL 0001000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s

 

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0001000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0110000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500

| ADD3
| cycle 1

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0110000
setvector DATA 0000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s 20

setvector CLK1 0
setvector CLK2 1
setvector CTRL 0110000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s
s
s
s

setvector CLK1 0
setvector CLK2 0
s 500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s 500


setvector CLK1 1
setvector CLK2 0
setvector CTRL 0000000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s


setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0010000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500


| cycle 2
setvector CLK1 0
setvector CLK2 1
setvector CTRL 0010000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s
s
s
s

setvector CLK1 0
setvector CLK2 0
s 500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000100
setvector DATA 0000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s 500


setvector CLK1 1
setvector CLK2 0
setvector CTRL 0000100
setvector SL 0
setvector SR 0
setvector notCin_0 1
s


setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000100
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0110000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500

| cycle 3
setvector CLK1 0
setvector CLK2 1
setvector CTRL 0110000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s
s
s
s

setvector CLK1 0
setvector CLK2 0
s 500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0001000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s 500


setvector CLK1 1
setvector CLK2 0
setvector CTRL 0001000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s

 

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0001000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0110000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500

| ADD4
| cycle 1

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0110000
setvector DATA 0010
setvector SL 0
setvector SR 0
setvector notCin_0 1
s 20

setvector CLK1 0
setvector CLK2 1
setvector CTRL 0110000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s
s
s
s

setvector CLK1 0
setvector CLK2 0
s 500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s 500


setvector CLK1 1
setvector CLK2 0
setvector CTRL 0000000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s


setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0010000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500


| cycle 2
setvector CLK1 0
setvector CLK2 1
setvector CTRL 0010000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s
s
s
s

setvector CLK1 0
setvector CLK2 0
s 500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000100
setvector DATA 1000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s 500


setvector CLK1 1
setvector CLK2 0
setvector CTRL 0000100
setvector SL 0
setvector SR 0
setvector notCin_0 1
s


setvector CLK1 0
setvector CLK2 0
setvector CTRL 0000100
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0110000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500

| cycle 3
setvector CLK1 0
setvector CLK2 1
setvector CTRL 0110000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s
s
s
s

setvector CLK1 0
setvector CLK2 0
s 500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0001000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s 500


setvector CLK1 1
setvector CLK2 0
setvector CTRL 0001000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s

 

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0001000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500

setvector CLK1 0
setvector CLK2 0
setvector CTRL 0110000
setvector SL 0
setvector SR 0
setvector notCin_0 1
s  500




ana CLK1 CLK2 CTRL DATA SL SR notCin_0 Lbus Mbus Nbus CTRL_SHIFT ARdEnbus BRdEnbus FBEnbus WriteEnbus CTRL_MUX RAMINbus Abus Bbus Rbus Sbus Fbus notCout_0


