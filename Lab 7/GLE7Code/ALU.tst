load ALU.hdl,
output-file ALU.out,
compare-to ALU.cmp,
output-list AluOp%B2.3.2 x%B2.16.2 y%B2.16.2 AluOut%B2.16.2 overflow%B2.1.2;

// Test 1: ADD: 5 + 3 = 8
// Expected AluOut = %B0000000000001000 (8), overflow = 0
set AluOp %B000,
set x %B0000000000000101,
set y %B0000000000000011,
eval,
output;

// Test 2: ADD: 0 + 0 = 0
// Expected AluOut = %B0000000000000000 (0), overflow = 0
set AluOp %B000,
set x %B0000000000000000,
set y %B0000000000000000,
eval,
output;

// Test 3: ADD: 32767 + 1 signed overflow
// Expected AluOut = %B1000000000000000 (-32768), overflow = 1
set AluOp %B000,
set x %B0111111111111111,
set y %B0000000000000001,
eval,
output;

// Test 4: ADD: -1 + 1 = 0
// Expected AluOut = %B0000000000000000 (0), overflow = 0
set AluOp %B000,
set x %B1111111111111111,
set y %B0000000000000001,
eval,
output;

// Test 5: ADD: -5 + -3 = -8
// Expected AluOut = %B1111111111111000 (-8), overflow = 0
set AluOp %B000,
set x %B1111111111111011,
set y %B1111111111111101,
eval,
output;

// Test 6: ADD: -32768 + -1 signed overflow
// Expected AluOut = %B0111111111111111 (32767), overflow = 1
set AluOp %B000,
set x %B1000000000000000,
set y %B1111111111111111,
eval,
output;

// Test 7: SUB: 10 - 3 = 7
// Expected AluOut = %B0000000000000111 (7), overflow = 0
set AluOp %B001,
set x %B0000000000001010,
set y %B0000000000000011,
eval,
output;

// Test 8: SUB: 5 - 5 = 0
// Expected AluOut = %B0000000000000000 (0), overflow = 0
set AluOp %B001,
set x %B0000000000000101,
set y %B0000000000000101,
eval,
output;

// Test 9: SUB: 0 - 1 = -1
// Expected AluOut = %B1111111111111111 (-1), overflow = 0
set AluOp %B001,
set x %B0000000000000000,
set y %B0000000000000001,
eval,
output;

// Test 10: SUB: 100 - 200 = -100
// Expected AluOut = %B1111111110011100 (-100), overflow = 0
set AluOp %B001,
set x %B0000000001100100,
set y %B0000000011001000,
eval,
output;

// Test 11: SUB: -32768 - 1 signed overflow
// Expected AluOut = %B0111111111111111 (32767), overflow = 1
set AluOp %B001,
set x %B1000000000000000,
set y %B0000000000000001,
eval,
output;

// Test 12: NAND: 0 NAND 0 = 0xFFFF
// Expected AluOut = %B1111111111111111 (-1), overflow = 0
set AluOp %B010,
set x %B0000000000000000,
set y %B0000000000000000,
eval,
output;

// Test 13: NAND: 0xFFFF NAND 0xFFFF = 0
// Expected AluOut = %B0000000000000000 (0), overflow = 0
set AluOp %B010,
set x %B1111111111111111,
set y %B1111111111111111,
eval,
output;

// Test 14: NAND: 0xAAAA NAND 0x5555 = 0xFFFF
// Expected AluOut = %B1111111111111111 (-1), overflow = 0
set AluOp %B010,
set x %B1010101010101010,
set y %B0101010101010101,
eval,
output;

// Test 15: NAND: 0xFF00 NAND 0xF0F0
// Expected AluOut = %B0000111111111111 (4095), overflow = 0
set AluOp %B010,
set x %B1111111100000000,
set y %B1111000011110000,
eval,
output;

// Test 16: NOR: 0 NOR 0 = 0xFFFF
// Expected AluOut = %B1111111111111111 (-1), overflow = 0
set AluOp %B011,
set x %B0000000000000000,
set y %B0000000000000000,
eval,
output;

// Test 17: NOR: 0xFFFF NOR 0 = 0
// Expected AluOut = %B0000000000000000 (0), overflow = 0
set AluOp %B011,
set x %B1111111111111111,
set y %B0000000000000000,
eval,
output;

// Test 18: NOR: 0xAAAA NOR 0x5555 = 0
// Expected AluOut = %B0000000000000000 (0), overflow = 0
set AluOp %B011,
set x %B1010101010101010,
set y %B0101010101010101,
eval,
output;

// Test 19: NOR: 0x00FF NOR 0xFF00 = 0
// Expected AluOut = %B0000000000000000 (0), overflow = 0
set AluOp %B011,
set x %B0000000011111111,
set y %B1111111100000000,
eval,
output;

// Test 20: XOR: 0xAAAA XOR 0x5555 = 0xFFFF
// Expected AluOut = %B1111111111111111 (-1), overflow = 0
set AluOp %B100,
set x %B1010101010101010,
set y %B0101010101010101,
eval,
output;

// Test 21: XOR: x XOR x = 0
// Expected AluOut = %B0000000000000000 (0), overflow = 0
set AluOp %B100,
set x %B0001001000110100,
set y %B0001001000110100,
eval,
output;

// Test 22: XOR: 0xFF00 XOR 0x00FF = 0xFFFF
// Expected AluOut = %B1111111111111111 (-1), overflow = 0
set AluOp %B100,
set x %B1111111100000000,
set y %B0000000011111111,
eval,
output;

// Test 23: XOR: 0 XOR 0xFFFF = 0xFFFF
// Expected AluOut = %B1111111111111111 (-1), overflow = 0
set AluOp %B100,
set x %B0000000000000000,
set y %B1111111111111111,
eval,
output;

// Test 24: LRSHIFT: 0xFFFF >> 1 = 0x7FFF
// Expected AluOut = %B0111111111111111 (32767), overflow = 0
set AluOp %B101,
set x %B0000000000000000,
set y %B1111111111111111,
eval,
output;

// Test 25: LRSHIFT: 2 >> 1 = 1
// Expected AluOut = %B0000000000000001 (1), overflow = 0
set AluOp %B101,
set x %B0000000000000000,
set y %B0000000000000010,
eval,
output;

// Test 26: LRSHIFT: 0 >> 1 = 0
// Expected AluOut = %B0000000000000000 (0), overflow = 0
set AluOp %B101,
set x %B0000000000000000,
set y %B0000000000000000,
eval,
output;

// Test 27: LRSHIFT: -32768 >> 1 = 16384
// Expected AluOut = %B0100000000000000 (16384), overflow = 0
set AluOp %B101,
set x %B0000000000000000,
set y %B1000000000000000,
eval,
output;

// Test 28: LSHIFT: 1 << 1 = 2
// Expected AluOut = %B0000000000000010 (2), overflow = 0
set AluOp %B110,
set x %B0000000000000000,
set y %B0000000000000001,
eval,
output;

// Test 29: LSHIFT: 0x7FFF << 1 = 0xFFFE
// Expected AluOut = %B1111111111111110 (-2), overflow = 0
set AluOp %B110,
set x %B0000000000000000,
set y %B0111111111111111,
eval,
output;

// Test 30: LSHIFT: 0xFFFF << 1 = 0xFFFE
// Expected AluOut = %B1111111111111110 (-2), overflow = 0
set AluOp %B110,
set x %B0000000000000000,
set y %B1111111111111111,
eval,
output;

// Test 31: LSHIFT: 0 << 1 = 0
// Expected AluOut = %B0000000000000000 (0), overflow = 0
set AluOp %B110,
set x %B0000000000000000,
set y %B0000000000000000,
eval,
output;

// Test 32: ARSHIFT: 0xFFFF >> 1 = 0xFFFF
// Expected AluOut = %B1111111111111111 (-1), overflow = 0
set AluOp %B111,
set x %B0000000000000000,
set y %B1111111111111111,
eval,
output;

// Test 33: ARSHIFT: -32768 >> 1 = -16384
// Expected AluOut = %B1100000000000000 (-16384), overflow = 0
set AluOp %B111,
set x %B0000000000000000,
set y %B1000000000000000,
eval,
output;

// Test 34: ARSHIFT: 2 >> 1 = 1
// Expected AluOut = %B0000000000000001 (1), overflow = 0
set AluOp %B111,
set x %B0000000000000000,
set y %B0000000000000010,
eval,
output;

// Test 35: ARSHIFT: 0 >> 1 = 0
// Expected AluOut = %B0000000000000000 (0), overflow = 0
set AluOp %B111,
set x %B0000000000000000,
set y %B0000000000000000,
eval,
output;