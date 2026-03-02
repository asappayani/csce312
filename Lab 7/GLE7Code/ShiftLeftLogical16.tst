load ShiftLeftLogical16.hdl,
output-file ShiftLeftLogical16.out,
compare-to ShiftLeftLogical16.cmp,
output-list in%B2.16.2 out%B2.16.2;

// Test 1: 0 << 1 = 0
set in %B0000000000000000,
eval,
output;

// Test 2: 1 << 1 = 2
set in %B0000000000000001,
eval,
output;

// Test 3: 2 << 1 = 4
set in %B0000000000000010,
eval,
output;

// Test 4: 0x7FFF << 1 = 0xFFFE
set in %B0111111111111111,
eval,
output;

// Test 5: 0xFFFF << 1 = 0xFFFE
set in %B1111111111111111,
eval,
output;

// Test 6: 0x8000 << 1 = 0x0000
set in %B1000000000000000,
eval,
output;

// Test 7: 0xAAAA << 1 = 0x5554
set in %B1010101010101010,
eval,
output;

// Test 8: 0x4000 << 1 = 0x8000
set in %B0100000000000000,
eval,
output;
