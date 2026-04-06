// ARYAAN SAPPAYANI 935009763

// TODO: Implement the code, do ram[0] - ram[1] and if its negative then ram[1] (JLT) is bigger otherwise ram[0] is bigger (JGT). if sum equals 0 then they're equal so keep same order (JEQ).

@R0
D=M

@R1
D=D-M

@ram0bigger
D;JGT

@exit
0;JMP

(ram0bigger)
@R0
D=M

@9999
M=D

@R1
D=M
@R0
M=D

@9999
D=M
@R1
M=D

@exit
0;JMP

(exit)
@exit
0;JMP

