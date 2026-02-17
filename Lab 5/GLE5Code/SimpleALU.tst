// SimpleALU.tst - Test script for SimpleALU chip
// Tests all major operations and edge cases

load SimpleALU.hdl,
output-file SimpleALU.out,
compare-to SimpleALU.cmp,
output-list x%D1.6.1 y%D1.6.1 zx%B2.1.2 nx%B2.1.2 zy%B2.1.2 ny%B2.1.2 f%B2.1.2 no%B2.1.2 out%D1.6.1 zr%B2.1.2 ng%B2.1.2;

// Test 1: x AND 0 (should give 0)
set x %B0000000000001010,  // x = 10
set y %B0000000000000101,  // y = 5
set zx 0,
set nx 0,
set zy 1,
set ny 0,
set f 0,
set no 0,
eval,
output;

// Test 2: 0 AND y (should give 0)
set x %B0000000000001010,  // x = 10
set y %B0000000000000101,  // y = 5
set zx 1,
set nx 0,
set zy 0,
set ny 0,
set f 0,
set no 0,
eval,
output;

// Test 3: NOT(x) AND 0 (should give 0)
set x %B0000000000001010,  // x = 10
set y %B0000000000000101,  // y = 5
set zx 0,
set nx 1,
set zy 1,
set ny 0,
set f 0,
set no 0,
eval,
output;

// Test 4: 0 AND NOT(y) (should give 0)
set x %B0000000000001010,  // x = 10
set y %B0000000000000101,  // y = 5
set zx 1,
set nx 0,
set zy 0,
set ny 1,
set f 0,
set no 0,
eval,
output;

// Test 5: NOT(-1 + -1) = NOT(-2) = 1
set x %B0000000000001010,  // x = 10
set y %B0000000000000101,  // y = 5
set zx 1,
set nx 1,
set zy 1,
set ny 1,
set f 1,
set no 1,
eval,
output;

// Test 6: 0 + 0 = 0
set x %B0000000000001010,  // x = 10
set y %B0000000000000101,  // y = 5
set zx 1,
set nx 0,
set zy 1,
set ny 0,
set f 1,
set no 0,
eval,
output;

// Test 7: 15 AND 10 = 10
set x %B0000000000001111,  // x = 15
set y %B0000000000001010,  // y = 10
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f 0,
set no 0,
eval,
output;

// Test 8: 5 + 3 = 8
set x %B0000000000000101,  // x = 5
set y %B0000000000000011,  // y = 3
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f 1,
set no 0,
eval,
output;

// Test 9: NOT(5 + 3) = NOT(8) = -9
set x %B0000000000000101,  // x = 5
set y %B0000000000000011,  // y = 3
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f 1,
set no 1,
eval,
output;

// Test 10: 15 AND NOT(5) = 15 AND -6 = 10
set x %B0000000000001111,  // x = 15
set y %B0000000000000101,  // y = 5
set zx 0,
set nx 0,
set zy 0,
set ny 1,
set f 0,
set no 0,
eval,
output;

// Test 11: 0 AND 0 = 0 (zero flag test)
set x %B0000000000000000,  // x = 0
set y %B0000000000000000,  // y = 0
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f 0,
set no 0,
eval,
output;

// Test 12: 32767 AND 1 = 1 (large positive, ng should be 0)
set x %B0111111111111111,  // x = 32767
set y %B0000000000000001,  // y = 1
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f 0,
set no 0,
eval,
output;

// Test 13: 5 + NOT(0) = 5 + (-1) = 4 (tests zy=1, ny=1 order)
set x %B0000000000000101,  // x = 5
set y %B0000000000001010,  // y = 10
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 1,
set no 0,
eval,
output;

// Test 14: -256 AND 0 = 0 (partial zero: lower byte zero, upper non-zero)
set x %B1111111100000000,  // x = -256
set y %B0000000000000000,  // y = 0
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f 0,
set no 0,
eval,
output;

// Test 15: 255 AND 0 = 0 (partial zero: lower byte non-zero, upper zero)
set x %B0000000011111111,  // x = 255
set y %B0000000000000000,  // y = 0
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f 0,
set no 0,
eval,
output;

// Test 16: 100 AND NOT(0) = 100 AND -1 = 0 (tests zy=1, ny=1)
set x %B0000000001100100,  // x = 100
set y %B0000000000110010,  // y = 50
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 0,
set no 0,
eval,
output;

// Test 17: NOT(20 + 30) = NOT(50) = -51 (more no=1 test)
set x %B0000000000010100,  // x = 20
set y %B0000000000011110,  // y = 30
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f 1,
set no 1,
eval,
output;

// Test 18: 1000 AND 0 = 0 (large positive number)
set x %B0000001111101000,  // x = 1000
set y %B0000000000000000,  // y = 0
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f 0,
set no 0,
eval,
output;

// Test 19: 16384 AND 0 = 0 (bit 14 set, tests ng flag)
set x %B0100000000000000,  // x = 16384
set y %B0000000000000000,  // y = 0
set zx 0,
set nx 0,
set zy 1,
set ny 0,
set f 0,
set no 0,
eval,
output;

// Test 20: NOT(7777 AND 3333) (complex test)
set x %B0001111001100001,  // x = 7777
set y %B0000110100000101,  // y = 3333
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f 0,
set no 1,
eval,
output;
