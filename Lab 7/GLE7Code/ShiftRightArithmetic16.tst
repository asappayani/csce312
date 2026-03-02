load ShiftRightArithmetic16.hdl,
output-file ShiftRightArithmetic16.out,
compare-to ShiftRightArithmetic16.cmp,
output-list in%B2.16.2 out%B2.16.2;

// Test 1: 0 >>> 1 = 0
set in %B0000000000000000,
eval,
output;

// Test 2: 2 >>> 1 = 1
set in %B0000000000000010,
eval,
output;

// Test 3: 0xFFFF (-1) >>> 1 = 0xFFFF (-1)
set in %B1111111111111111,
eval,
output;

// Test 4: 0x8000 (-32768) >>> 1 = 0xC000 (-16384)
set in %B1000000000000000,
eval,
output;

// Test 5: 1 >>> 1 = 0
set in %B0000000000000001,
eval,
output;

// Test 6: 0x7FFF (32767) >>> 1 = 0x3FFF (16383)
set in %B0111111111111111,
eval,
output;

// Test 7: 0xAAAA >>> 1 = 0xD555 (sign=1, preserved)
set in %B1010101010101010,
eval,
output;

// Test 8: 0x5555 >>> 1 = 0x2AAA (sign=0, preserved)
set in %B0101010101010101,
eval,
output;
