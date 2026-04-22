load CPU.hdl,
output-file CPU.out,
compare-to CPU.cmp,
output-list time%S0.4.0 fromM%D0.16.0 In%B0.26.0 Reset%B2.1.2 toM%D1.16.0 writeM%B3.1.3 addressM%D0.16.0 PCOut%D0.16.0;

set In %B0010000000000000, // SUB R0, R0, R0 -> R0=0
tick, output, tock, output;

set In %B0010001001001000, // SUB R1, R1, R1 -> R1=0
tick, output, tock, output;

set In %B0010010010010000, // SUB R2, R2, R2 -> R2=0
tick, output, tock, output;

set In %B0010011011011000, // SUB R3, R3, R3 -> R3=0
tick, output, tock, output;

set In %B0010100100100000, // SUB R4, R4, R4 -> R4=0
tick, output, tock, output;

set In %B0010101101101000, // SUB R5, R5, R5 -> R5=0
tick, output, tock, output;

set In %B0010110110110000, // SUB R6, R6, R6 -> R6=0
tick, output, tock, output;

set In %B0010111111111000, // SUB R7, R7, R7 -> R7=0
tick, output, tock, output;

// ALU/logical — check results via WRITE/READ

set In %B0001000001000111, // ADDI R0,R1,7 → R0=7
tick, output, tock, output;

set In %B0000001000000000, // ADD R1,R0,R0 → R1=14
tick, output, tock, output;

set In %B1010000001111111, // WRITE R0,R1 → MEM[7]=14
tick, output, tock, output;

set fromM %D14,
set In %B1000110000111111, // READ R6,R0 → R6=fromM
tick, output, tock, output;

set In %B0010001110000000, // SUB R1,R6,R0 → R1=7
tick, output, tock, output;

set In %B1010000001111111, // WRITE R0,R1 → MEM[7]=7
tick, output, tock, output;

set fromM %D7,
set In %B1000110000111111, // READ R6,R0 → R6=7
tick, output, tock, output;

set In %B0011001110000111, // SUBI R1,R6,7 → R1=0
tick, output, tock, output;

set In %B1010000001111111, // WRITE R0,R1 → MEM[7]=0
tick, output, tock, output;

set In %B0100010000000010, // NAND R2,R0,R0 → R2=-8
tick, output, tock, output;

set In %B1010000010111111, // WRITE R0,R2 → MEM[7]=-8
tick, output, tock, output;

set In %B0101001001000001, // NOR R1,R1,R0 → R1=-8 
tick, output, tock, output;

set In %B1010000001111111, // WRITE R0,R1 → MEM[7]=-8
tick, output, tock, output;

set In %B0110010000000110, // XOR R2,R0,R0 → R2=0
tick, output, tock, output;

set In %B1010000010111111, // WRITE R0,R2 → MEM[7]=0
tick, output, tock, output;


////////////// BEQ + JMP ////////////

set fromM %D221,
set In %B1000001100000011, // READ R1,R4 → R1=221
tick, output, tock, output;

set fromM %D0,
set In %B1000011010000011, // READ R3,R2 → R3=0
tick, output, tock, output;

set In %B1001001011000111, // BEQ R1,R3 → PC←R1 (=221) if R3==0
tick, output, tock, output;

set In %B1001011001000111, // BEQ R3,R1 → no branch (R1≠0), PC++
tick, output, tock, output;

set fromM %D312,
set In %B1000101101000011, // READ R5,R5 → R5=312
tick, output, tock, output;

set In %B1011101000000000, // JMP R5 → PC←R5
tick, output, tock, output;


////////////// SHIFTS + INP + OUT ////////////

set fromM -32768,
set In %B1000000111000000, // READ R0,R7 → R0=-32768
tick, output, tock, output;

set In %B0111011000000000, // SLL R3,R0
tick, output, tock, output;

set In %B0111010000000001, // SRL R2,R0
tick, output, tock, output;

set In %B0111001000000010, // SRA R1,R0
tick, output, tock, output;

set In %B1010100001111111, // WRITE R4,R1 (R4=0 → MEM[0])
tick, output, tock, output;

set In %B1010100010111111, // WRITE R4,R2
tick, output, tock, output;

set In %B1010100011111111, // WRITE R4,R3
tick, output, tock, output;

set In %B1100000000000000, // OUT R0,R0
tick, output, tock, output;

set In %B1110110000000000, // INP R6
set fromM 65,
tick, output, tock, output;

set In %B1010110110000000, // WRITE R6,R6 → MEM[65]=R6
tick, output, tock, output;

/// RESET

set In %B0000000000000000,
set Reset 1, // Reset asserted
tick, tock, output;

////////////// CALL + RET ////////////

set Reset 0,

set In %B0010000000000000, // SUB R0, R0, R0
tick, output, tock, output;

set In %B0010001001001000, // SUB R1, R1, R1
tick, output, tock, output;

set In %B0010010010010000, // SUB R2, R2, R2
tick, output, tock, output;

set In %B0010011011011000, // SUB R3, R3, R3
tick, output, tock, output;

set In %B0010100100100000, // SUB R4, R4, R4
tick, output, tock, output;

set In %B0010101101101000, // SUB R5, R5, R5
tick, output, tock, output;

set In %B0010110110110000, // SUB R6, R6, R6
tick, output, tock, output;

set In %B0010111111111000, // SUB R7, R7, R7
tick, output, tock, output;

set In %B0001001000000110, // ADDI R1,R0,6 → R1=6
tick, output, tock, output;

set In %B1101000001000000, // CALL R1 → R7=PC+1, PC←R1
tick, output, tock, output;

set In %B1111000000000000, // RET → PC←R7
tick, output, tock, output;

set In %B1010000111111111, // WRITE R0,R7 → MEM[0]=R7
tick, output, tock, output;