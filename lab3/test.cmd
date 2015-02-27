
vector CLK1 Phi1 notPhi1
vector CLK2 Phi2
vector CTRL_SHIFT notshl shl notshr shr
vector ARdEnbus {ARdEn[3:0]} 
vector BRdEnbus {BRdEn[3:0]} 
vector FBEnbus {FBEn[3:0]} 
vector notFBEnbus {notFBEn[3:0]} 
vector WriteEnbus {WriteEn[3:0]} 
vector CTRL_OP In2Select0 In1Select0 In2Select1 In1Select1
vector Lbus {L[3:0]} 
vector Mbus {M[3:0]} 
vector Nbus {N[3:0]}
vector IN_ALU notCin
vector Dbus {D[3:0]} 
vector RAMINbus RAMIN3:0 
vector Abus B3.A B2.A B1.A B0.A
vector Bbus B3.B B2.B B1.B B0.B
vector Rbus B3.Ri B2.Ri B1.Ri B0.Ri
vector Sbus B3.Si B2.Si B1.Si B0.Si 
vector Fbus F3:0
vector notPbus B3.ALU.notP B2.ALU.notP B1.ALU.notP B0.ALU.notP
vector OUT notCout 
vector SHIFT SL SR
stepsize 300

setvector CLK1 10
setvector CLK2 0
setvector Dbus 1001
setvector CTRL_OP 1010
setvector Lbus 1111
setvector Mbus 1111
setvector Nbus 1111
setvector WriteEnbus 0000
setvector notFBEnbus 0000
setvector FBEnbus 1111
setvector IN_ALU 1
s
setvector CLK1 10
setvector CLK2 0
setvector Dbus 1001
setvector CTRL_OP 1010
setvector Lbus 1111
setvector Mbus 1111
setvector Nbus 1111
setvector WriteEnbus 0000
setvector notFBEnbus 0000
setvector FBEnbus 1111
setvector IN_ALU 1
s
setvector CLK1 10
setvector CLK2 0
setvector Dbus 1001
setvector CTRL_OP 0000
setvector Lbus 1111
setvector Mbus 1111
setvector Nbus 1111
setvector WriteEnbus 0000
setvector notFBEnbus 0000
setvector FBEnbus 1111
setvector IN_ALU 1
s
setvector CLK1 01
setvector CLK2 0
setvector Dbus 1001
setvector CTRL_OP 0000
setvector Lbus 1111
setvector Mbus 1111
setvector Nbus 1111
setvector WriteEnbus 0000
setvector notFBEnbus 0000
setvector FBEnbus 1111
setvector IN_ALU 1
s
setvector CLK1 01
setvector CLK2 1
setvector Dbus 1001
setvector CTRL_OP 0000
setvector Lbus 0000
setvector Mbus 1100
setvector Nbus 1010
setvector CTRL_SHIFT 0110
setvector SHIFT 01
setvector WriteEnbus 1111
setvector BRdEnbus 0000
setvector ARdEnbus 0000
setvector notFBEnbus 1111
setvector FBEnbus 0000
setvector IN_ALU 1
s
setvector CLK1 01
setvector CLK2 0
setvector Dbus 1001
setvector CTRL_OP 0000
setvector Lbus 1111
setvector Mbus 1111
setvector Nbus 1111
setvector CTRL_SHIFT 0110
setvector SHIFT 01
setvector WriteEnbus 0000
setvector BRdEnbus 0000
setvector ARdEnbus 0000
setvector notFBEnbus 0000
setvector FBEnbus 1111
setvector IN_ALU 1
s
setvector CLK1 10
setvector CLK2 0
setvector Dbus 1001
setvector CTRL_OP 1001
setvector Lbus 1111
setvector Mbus 1111
setvector Nbus 1111
setvector CTRL_SHIFT 0110
setvector SHIFT 01
setvector WriteEnbus 0000
setvector BRdEnbus 1111
setvector ARdEnbus 0000
setvector notFBEnbus 0000
setvector FBEnbus 1111
setvector IN_ALU 1
s
setvector CLK1 10
setvector CLK2 0
setvector Dbus 1001
setvector CTRL_OP 1001
setvector Lbus 1111
setvector Mbus 1111
setvector Nbus 1111
setvector CTRL_SHIFT 0110
setvector SHIFT 01
setvector WriteEnbus 0000
setvector BRdEnbus 1111
setvector ARdEnbus 0000
setvector notFBEnbus 0000
setvector FBEnbus 1111
setvector IN_ALU 1
s
setvector CLK1 10
setvector CLK2 0
setvector Dbus 1001
setvector CTRL_OP 1001
setvector Lbus 1111
setvector Mbus 1111
setvector Nbus 1111
setvector CTRL_SHIFT 0110
setvector SHIFT 01
setvector WriteEnbus 0000
setvector BRdEnbus 1111
setvector ARdEnbus 0000
setvector notFBEnbus 0000
setvector FBEnbus 1111
setvector IN_ALU 1
s
setvector CLK1 01
setvector CLK2 0
setvector Dbus 1001
setvector CTRL_OP 1001
setvector Lbus 1111
setvector Mbus 1111
setvector Nbus 1111
setvector CTRL_SHIFT 0110
setvector SHIFT 01
setvector WriteEnbus 0000
setvector BRdEnbus 1111
setvector ARdEnbus 0000
setvector notFBEnbus 0000
setvector FBEnbus 1111
setvector IN_ALU 1
s
setvector CLK1 01
setvector CLK2 1
setvector Dbus 1001
setvector CTRL_OP 1001
setvector Lbus 0000
setvector Mbus 1100
setvector Nbus 1010
setvector CTRL_SHIFT 0110
setvector SHIFT 01
setvector WriteEnbus 0000
setvector BRdEnbus 1111
setvector ARdEnbus 0000
setvector notFBEnbus 0000
setvector FBEnbus 1111
setvector IN_ALU 1
s
setvector CLK1 01
setvector CLK2 0
setvector Dbus 1001
setvector CTRL_OP 1001
setvector Lbus 1111
setvector Mbus 1111
setvector Nbus 1111
setvector CTRL_SHIFT 0110
setvector SHIFT 01
setvector WriteEnbus 0000
setvector BRdEnbus 0000
setvector ARdEnbus 0000
setvector notFBEnbus 0000
setvector FBEnbus 1111
setvector IN_ALU 1
s
ana Phi1 notPhi1 Phi2 notshl shl notshr shr ARdEnbus BRdEnbus FBEnbus notFBEnbus WriteEnbus In1Select0 In2Select0 In1Select1 In2Select1 Lbus Mbus Nbus notCin Dbus RAMINbus Abus Bbus Rbus Sbus Fbus notCout SL SR notPbus
