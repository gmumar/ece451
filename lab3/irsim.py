#!/usr/bin/python

import sys;

args = sys.argv

print """
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
stepsize 300\n"""

phi1=1 #1
phi2=0
clk1Period=1;
clk2Period=1;
notPhi1=0#0

#setvector CLK 10

def intBin(num):
	bin = ""
	mask = 1;
	
	for i in range(4):
		if(mask & num):
			bin = "1" + bin  
		else:
			bin = "0" + bin
		mask = mask << 1;
		
	return bin

def pvec(vec):
	return "setvector " + vec + " "

def invert(clk):
	if(clk==0):
		return 1;
	else:
		return 0;

def clk1():
	global phi1
	global notPhi1
	global clk1Period
	
	print pvec("CLK1") + str(phi1) + str(notPhi1)
	
	clk1Period = clk1Period + 1
	
		
	if(clk1Period==1):
		phi1 = invert(phi1);
		notPhi1 = invert(notPhi1);

	if(clk1Period==2):
		phi1 = invert(phi1);
		notPhi1 = invert(notPhi1);
		
	if(clk1Period==4):
		clk1Period = 0;
	
	#if(clk1Period>=3):
	#	clk1Period = 0;
	#	phi1 = invert(phi1);
	#	notPhi1 = invert(notPhi1);
		
def clk2():
	global phi2
	global clk2Period	
	
	if(clk2Period==3):
		phi2 = invert(phi2)

	if(clk2Period==4):
		phi2 = invert(phi2)
		clk2Period = 0;
		
	#if(clk2Period==5):
	#	clk2Period = 0;
		
	print pvec("CLK2") + str(phi2)
	clk2Period = clk2Period + 1
	

def printClk():
	
	global phi1
	global phi2 
	global notPhi1
	print pvec("CLK") + str(phi1) + str(phi2) + str(notPhi1)
	phi1 = invert(phi1)
	
	phi2 = invert(phi2)
	
	notPhi1 = invert(notPhi1)
	
	
def step():
	print "s"

def sim(num2, num1,L,M,N):
	#printClk();#phi1 high
	# In2Select0 In1Select0 In2Select1 In1Select1
	#for i in range (2):
	clk1();
	clk2();
	print pvec("Dbus") + intBin(int(num1))
	print pvec("CTRL_OP") + "1010"
	print pvec("Lbus") + "1111"
	print pvec("Mbus") + "1111"
	print pvec("Nbus") + "1111"
	print pvec("CTRL_SHIFT") + "1010"
	print pvec("SHIFT") + "00"
	print pvec("WriteEnbus") + "0000" 
	print pvec("BRdEnbus") + "0000"
	print pvec("ARdEnbus") + "0000"
	print pvec("notFBEnbus") + "0000"# has to be zero otherwise
	print pvec("FBEnbus") + "1111"
	print pvec("IN_ALU") + "1"
	step();
	
	for i in range (3):
		clk1();
		clk2();
		print pvec("Dbus") + intBin(int(num1))
		print pvec("CTRL_OP") + "0000"
		print pvec("Lbus") + "0000"
		print pvec("Mbus") + "1100"
		print pvec("Nbus") + "1010"
		print pvec("CTRL_SHIFT") + "1010"
		print pvec("SHIFT") + "00"
		print pvec("WriteEnbus") + "1111" 
		print pvec("BRdEnbus") + "0000"
		print pvec("ARdEnbus") + "0000"
		print pvec("notFBEnbus") + "1111"# has to be zero otherwise
		print pvec("FBEnbus") + "0000"
		print pvec("IN_ALU") + "1"
		step();
	
	#for i in range (2):
	clk1();
	clk2();
	#printClk();
	print pvec("Dbus") + intBin(int(num1))
	print pvec("CTRL_OP") + "0000"
	print pvec("Lbus") + "1111"
	print pvec("Mbus") + "1111"
	print pvec("Nbus") + "1111"
	print pvec("CTRL_SHIFT") + "1010"
	print pvec("SHIFT") + "00"
	print pvec("WriteEnbus") + "0000" 
	print pvec("BRdEnbus") + "0000"
	print pvec("ARdEnbus") + "1111"
	print pvec("notFBEnbus") + "0000"# has to be zero otherwise
	print pvec("FBEnbus") + "1111"
	print pvec("IN_ALU") + "1"
	step();
	
	for i in range (2):
		clk1();
		clk2();
		#printClk();#phi1 high
		print pvec("Dbus") + intBin(int(num2))
		print pvec("CTRL_OP") + "0000"
		print pvec("Lbus") + "1111"
		print pvec("Mbus") + "1111"
		print pvec("Nbus") + "1111"
		print pvec("CTRL_SHIFT") + "1010"
		print pvec("SHIFT") + "00"
		print pvec("WriteEnbus") + "0000" 
		print pvec("BRdEnbus") + "0000"
		print pvec("ARdEnbus") + "1111"
		print pvec("notFBEnbus") + "0000"# has to be zero otherwise
		print pvec("FBEnbus") + "1111"
		print pvec("IN_ALU") + "1"
		step();
		
	for i in range (2):
		clk1();
		clk2();
		#printClk();#phi1 high
		print pvec("Dbus") + intBin(int(num2))
		print pvec("CTRL_OP") + "0110"
		print pvec("Lbus") + "1111"
		print pvec("Mbus") + "1111"
		print pvec("Nbus") + "1111"
		print pvec("CTRL_SHIFT") + "1010"
		print pvec("SHIFT") + "00"
		print pvec("WriteEnbus") + "0000" 
		print pvec("BRdEnbus") + "0000"
		print pvec("ARdEnbus") + "1111"
		print pvec("notFBEnbus") + "0000"# has to be zero otherwise
		print pvec("FBEnbus") + "1111"
		print pvec("IN_ALU") + "1"
		step();
	
	for i in range (2):
		clk1();
		clk2();
		#printClk();
		print pvec("Dbus") + intBin(int(num2))
		print pvec("CTRL_OP") + "0000"
		print pvec("Lbus") + L
		print pvec("Mbus") + M
		print pvec("Nbus") + N
		print pvec("CTRL_SHIFT") + "1010"
		print pvec("SHIFT") + "00"
		print pvec("WriteEnbus") + "0000" 
		print pvec("BRdEnbus") + "0000"
		print pvec("ARdEnbus") + "0000"
		print pvec("notFBEnbus") + "0000"# has to be zero otherwise
		print pvec("FBEnbus") + "1111"
		print pvec("IN_ALU") + "1"
		step();

def shift(num1, direction,srl):
#notshl shl notshr shr
# SHIFT SL SR

	#printClk();#phi1 high
	# In2Select0 In1Select0 In2Select1 In1Select1
	#for i in range (2):
	clk1();
	clk2();
	print pvec("Dbus") + intBin(int(num1))
	print pvec("CTRL_OP") + "1010"
	print pvec("Lbus") + "1111"
	print pvec("Mbus") + "1111"
	print pvec("Nbus") + "1111"
	print pvec("CTRL_SHIFT") + "1010"
	print pvec("SHIFT") + "00"
	print pvec("WriteEnbus") + "0000" 
	print pvec("BRdEnbus") + "0000"
	print pvec("ARdEnbus") + "0000"
	print pvec("notFBEnbus") + "0000"# has to be zero otherwise
	print pvec("FBEnbus") + "1111"
	print pvec("IN_ALU") + "1"
	step();
	
	for i in range (3):
		clk1();
		clk2();
		print pvec("Dbus") + intBin(int(num1))
		print pvec("CTRL_OP") + "0000"
		print pvec("Lbus") + "0000"
		print pvec("Mbus") + "1100"
		print pvec("Nbus") + "1010"
		print pvec("CTRL_SHIFT") + direction
		print pvec("SHIFT") + srl
		print pvec("WriteEnbus") + "1111" 
		print pvec("BRdEnbus") + "0000"
		print pvec("ARdEnbus") + "0000"
		print pvec("notFBEnbus") + "1111"# has to be zero otherwise
		print pvec("FBEnbus") + "0000"
		print pvec("IN_ALU") + "1"
		step();
	
	#for i in range (2):
	clk1();
	clk2();
	#printClk();
	print pvec("Dbus") + intBin(int(num1))
	print pvec("CTRL_OP") + "0000"
	print pvec("Lbus") + "1111"
	print pvec("Mbus") + "1111"
	print pvec("Nbus") + "1111"
	print pvec("CTRL_SHIFT") + "1010"
	print pvec("SHIFT") + "00"
	print pvec("WriteEnbus") + "0000" 
	print pvec("BRdEnbus") + "0000"
	print pvec("ARdEnbus") + "1111"
	print pvec("notFBEnbus") + "0000"# has to be zero otherwise
	print pvec("FBEnbus") + "1111"
	print pvec("IN_ALU") + "1"
	step();
	
	for i in range (2):
		clk1();
		clk2();
		#printClk();#phi1 high
		print pvec("Dbus") + intBin(int(num1))
		print pvec("CTRL_OP") + "0000"
		print pvec("Lbus") + "1111"
		print pvec("Mbus") + "1111"
		print pvec("Nbus") + "1111"
		print pvec("CTRL_SHIFT") + "1010"
		print pvec("SHIFT") + "00"
		print pvec("WriteEnbus") + "0000" 
		print pvec("BRdEnbus") + "0000"
		print pvec("ARdEnbus") + "1111"
		print pvec("notFBEnbus") + "0000"# has to be zero otherwise
		print pvec("FBEnbus") + "1111"
		print pvec("IN_ALU") + "1"
		step();
		
	for i in range (2):
		clk1();
		clk2();
		#printClk();#phi1 high
		print pvec("Dbus") + intBin(int(num1))
		print pvec("CTRL_OP") + "0110"
		print pvec("Lbus") + "1111"
		print pvec("Mbus") + "1111"
		print pvec("Nbus") + "1111"
		print pvec("CTRL_SHIFT") + "1010"
		print pvec("SHIFT") + "00"
		print pvec("WriteEnbus") + "0000" 
		print pvec("BRdEnbus") + "0000"
		print pvec("ARdEnbus") + "1111"
		print pvec("notFBEnbus") + "0000"# has to be zero otherwise
		print pvec("FBEnbus") + "1111"
		print pvec("IN_ALU") + "1"
		step();
	
	for i in range (2):
		clk1();
		clk2();
		#printClk();
		print pvec("Dbus") + intBin(int(num1))
		print pvec("CTRL_OP") + "0000"
		print pvec("Lbus") + "0000"
		print pvec("Mbus") + "1010"
		print pvec("Nbus") + "1010"
		print pvec("CTRL_SHIFT") + "1010"
		print pvec("SHIFT") + "00"
		print pvec("WriteEnbus") + "0000" 
		print pvec("BRdEnbus") + "0000"
		print pvec("ARdEnbus") + "0000"
		print pvec("notFBEnbus") + "0000"# has to be zero otherwise
		print pvec("FBEnbus") + "1111"
		print pvec("IN_ALU") + "1"
		step();

	
#def sim(R, S, L, M, N):

#sim(11, 6, "0111", "1001", "1001" );#Add
#sim(6,5,"0000","1110","1010"); #OR
#sim(9, 5, "0000", "1000", "1010" );#And
#sim(5, 6, "0000", "0110", "1010" );#XOR
sim(0, 5, "0010", "0110", "0110" );#Sub
sim(5, 0, "0010", "0110", "0110" );#Sub
#sim(1, 2, "0100", "0110", "0110" );#Sub

#SL SR
#shift(9,"0110","01"); # left
#shift(9,"1001","00"); # right
		
#if ("-" in args[1]):
#	print "subtraction";

#for i in range (40):
#	clk1();
#	clk2();
#	step();

print "ana Phi1 notPhi1 Phi2 notshl shl notshr shr ARdEnbus BRdEnbus FBEnbus notFBEnbus WriteEnbus In1Select0 In2Select0 In1Select1 In2Select1 Lbus Mbus Nbus notCin Dbus RAMINbus Abus Bbus Rbus Sbus Fbus notCout SL SR notPbus"
	

