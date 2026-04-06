// Aryaan Sappayani 935009763

// Generate first 10 Fibonacci numbers in R0..R9
// Output: R0..R9 = 0,1,1,2,3,5,8,13,21,34

// TODO: Write your ASM code below

@0
M=0

@1
M=1

@2
M=1

@2
D=A
@R10 // R10 stores the current register we on
M=D

@8
D=A
@R11 // R11 stores the counter variable
M=D

@R12  // R12 stores the first previous value
M=0
@R13 // R13 stores the second previous value
M=0

(LOOP)
@R11
D=M
@exit
D;JEQ

@R10
D=M-1
A=D // get the number of the previous register
D=M // store the value held by previous register

@R10
A=M
A=A-1 // move to previous register
A=A-1 // move to previous previous register
D=D+M // add previous + previous previous

//store that val at the current register we at denoted by R10
@R10
A=M
M=D

// increment to the next register and decrement our counter
@R10
M=M+1
@R11
M=M-1

@LOOP
0;JMP

(exit)
@exit
0;JMP