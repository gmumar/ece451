vector IN Si Ri notS notR notCi_1
vector Lbus {L[3:0]}
vector Mbus {M[3:0]}
vector Nbus {N[3:0]} 
vector CLK Phi2
vector OUT Fi notCi

stepsize 300

| Precharge
setvector CLK 0
setvector Lbus 1111
setvector Mbus 1111
setvector Nbus 1111
s

setvector CLK 0
setvector Lbus 1111
setvector Mbus 1111
setvector Nbus 1111
s

setvector CLK 0
setvector Lbus 1111
setvector Mbus 1111
setvector Nbus 1111
s

setvector CLK 0
setvector Lbus 1111
setvector Mbus 1111
setvector Nbus 1111
s

setvector CLK 0
setvector Lbus 1111
setvector Mbus 1111
setvector Nbus 1111
s

| Evaluate 00
setvector CLK 1
setvector IN 00111
setvector Lbus 0111
setvector Mbus 1001
setvector Nbus 1001
s

setvector CLK 0
setvector IN 11001
setvector Lbus 1111
setvector Mbus 1111
setvector Nbus 1111
s

| Evaluate 01
setvector CLK 1
setvector IN 01101
setvector Lbus 0111
setvector Mbus 1001
setvector Nbus 1001
s

setvector CLK 0
setvector IN 01101
setvector Lbus 1111
setvector Mbus 1111
setvector Nbus 1111
s

| Evaluate 10
setvector CLK 1
setvector IN 10011
setvector Lbus 0111
setvector Mbus 1001
setvector Nbus 1001
s

setvector CLK 0
setvector IN 10011
setvector Lbus 1111
setvector Mbus 1111
setvector Nbus 1111
s

| Evaluate 11
setvector CLK 1
setvector IN 11001
setvector Lbus 0000
setvector Mbus 1000
setvector Nbus 1010 
s

setvector CLK 0
setvector IN 11001
setvector Lbus 1111
setvector Mbus 1111
setvector Nbus 1111
s


| print
ana Phi2 Lbus Mbus Nbus Si notS Ri notR notCi_1 Fi notFi notCi notP notG
