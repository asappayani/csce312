load ShiftRightLogical16.hdl,
output-file ShiftRightLogical16.out,
compare-to ShiftRightLogical16.cmp,
output-list in%B2.16.2 out%B2.16.2;

// Test 1: 0 >> 1 = 0
set in %B0000000000000000,
eval,
output;

// Test 2: 2 >> 1 = 1
set in %B0000000000000010,
eval,
output;

// Test 3: 4 >> 1 = 2
set in %B0000000000000100,
eval,
output;

// Test 4: 0xFFFF >> 1 = 0x7FFF
set in %B1111111111111111,
eval,
output;

// Test 5: 0x8000 >> 1 = 0x4000
set in %B1000000000000000,
eval,
output;

// Test 6: 1 >> 1 = 0
set in %B0000000000000001,
eval,
output;

// Test 7: 0xAAAA >> 1 = 0x5555
set in %B1010101010101010,
eval,
output;

// Test 8: 0x5555 >> 1 = 0x2AAA
set in %B0101010101010101,
eval,
output;
