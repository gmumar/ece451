#!/usr/bin/python

import sys;

args = sys.argv

print """
vector CLK Phi1 Phi2 notPhi1
vector CTRL_SHIFT notshl shl notshr shr
vector ARdEnbus {ARdEn[3:0]} 
vector BRdEnbus {BRdEn[3:0]} 
vector FBEnbus {FBEn[3:0]} 
vector notFBEnbus {notFBEn[3:0]} 
vector WriteEnbus {WriteEn[3:0]} 
vector CTRL_OP In1Select0 In2Select0 In1Select1 In2Select1
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
vector OUT notCout SL SR
stepsize 500\n"""

phi1=1
phi2=0
notPhi1=0

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
	
def RamPrecharge():
	global phi2
	global phi1
	if(phi1==0):
		print pvec ("Abus") + intBin(1111)
		print pvec ("Bbus") + intBin(1111)
		print pvec ("ARdEnbus") + intBin(0000)
		print pvec ("BRdEnbus") + intBin(0000)
	if(phi2==0):
		print pven ("WriteEnbus") + intBin(0000)

#for i in range(200):
#	printClk()
#	step()

def simAdd(num1, num2):
	printClk();#phi1 high
	print pvec("Dbus") + intBin(int(num1))
	print pvec("CTRL_OP") + "1010"
	print pvec("Lbus") + "1111"
	print pvec("Mbus") + "1111"
	print pvec("Nbus") + "1111"
	#print pvec("CTRL_SHIFT") + "0101"
	print pvec("WriteEnbus") + "0000" 
	#print pvec("BRdEnbus") + "0000"
	#print pvec("ARdEnbus") + "0000"
	print pvec("notFBEnbus") + "0000"# has to be zero otherwise
	print pvec("FBEnbus") + "1111"
	print pvec("IN_ALU") + "1"
	step();
	
	printClk();
	print pvec("Dbus") + intBin(int(num1))
	print pvec("CTRL_OP") + "1010"
	print pvec("Lbus") + "0000"
	print pvec("Mbus") + "1100"
	print pvec("Nbus") + "1010"
	print pvec("CTRL_SHIFT") + "0101"
	print pvec("WriteEnbus") + "1111" 
	print pvec("BRdEnbus") + "0000"
	print pvec("ARdEnbus") + "0000"
	print pvec("notFBEnbus") + "1111"# has to be zero otherwise
	print pvec("FBEnbus") + "0000"
	print pvec("IN_ALU") + "1"
	step();
	
	
	printClk();#phi1 high
	print pvec("Dbus") + intBin(int(num2))
	print pvec("CTRL_OP") + "0110"
	print pvec("Lbus") + "1111"
	print pvec("Mbus") + "1111"
	print pvec("Nbus") + "1111"
	print pvec("CTRL_SHIFT") + "0101"
	print pvec("WriteEnbus") + "0000" 
	print pvec("BRdEnbus") + "0000"
	print pvec("ARdEnbus") + "1111"
	print pvec("notFBEnbus") + "0000"# has to be zero otherwise
	print pvec("FBEnbus") + "1111"
	print pvec("IN_ALU") + "1"
	step();
	
	printClk();
	print pvec("Dbus") + intBin(int(num2))
	print pvec("CTRL_OP") + "0110"
	print pvec("Lbus") + "0111"
	print pvec("Mbus") + "1001"
	print pvec("Nbus") + "1001"
	print pvec("CTRL_SHIFT") + "0101"
	print pvec("WriteEnbus") + "0000" 
	print pvec("BRdEnbus") + "0000"
	print pvec("ARdEnbus") + "0000"
	print pvec("notFBEnbus") + "0000"# has to be zero otherwise
	print pvec("FBEnbus") + "1111"
	print pvec("IN_ALU") + "1"
	step();

if ("+" in args[1]):
	num1 = args[1].split("+")[0];
	num2 = args[1].split("+")[1];
	simAdd(num1, num2);
	
		
#if ("-" in args[1]):
#	print "subtraction";

print "ana Phi1 Phi2 notshl shl notshr shr ARdEnbus BRdEnbus FBEnbus notFBEnbus WriteEnbus In1Select0 In2Select0 In1Select1 In2Select1 Lbus Mbus Nbus notCin Dbus RAMINbus Abus Bbus Rbus Sbus Fbus notCout SL SR notPbus"
	

