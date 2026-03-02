load AddSub16.hdl,
output-file AddSub16.out,
compare-to AddSub16.cmp,
output-list a%B2.16.2 b%B2.16.2 sub%B2.1.2 out%B2.16.2 overflow%B2.1.2;

// Test 1: ADD 0 + 0 = 0
set a %B0000000000000000,
set b %B0000000000000000,
set sub 0,
eval,
output;

// Test 2: ADD 5 + 3 = 8
set a %B0000000000000101,
set b %B0000000000000011,
set sub 0,
eval,
output;

// Test 3: ADD 1 + 1 = 2
set a %B0000000000000001,
set b %B0000000000000001,
set sub 0,
eval,
output;

// Test 4: ADD -1 + 1 = 0
set a %B1111111111111111,
set b %B0000000000000001,
set sub 0,
eval,
output;

// Test 5: ADD -5 + -3 = -8
set a %B1111111111111011,
set b %B1111111111111101,
set sub 0,
eval,
output;

// Test 6: ADD -1 + -1 = -2
set a %B1111111111111111,
set b %B1111111111111111,
set sub 0,
eval,
output;

// Test 7: ADD 32767 + 1 = -32768 (overflow)
set a %B0111111111111111,
set b %B0000000000000001,
set sub 0,
eval,
output;

// Test 8: ADD -32768 + -1 = 32767 (overflow)
set a %B1000000000000000,
set b %B1111111111111111,
set sub 0,
eval,
output;

// Test 9: SUB 10 - 3 = 7
set a %B0000000000001010,
set b %B0000000000000011,
set sub 1,
eval,
output;

// Test 10: SUB 5 - 5 = 0
set a %B0000000000000101,
set b %B0000000000000101,
set sub 1,
eval,
output;

// Test 11: SUB 0 - 1 = -1
set a %B0000000000000000,
set b %B0000000000000001,
set sub 1,
eval,
output;

// Test 12: SUB 3 - 10 = -7
set a %B0000000000000011,
set b %B0000000000001010,
set sub 1,
eval,
output;

// Test 13: SUB 100 - 200 = -100
set a %B0000000001100100,
set b %B0000000011001000,
set sub 1,
eval,
output;

// Test 14: SUB -32768 - 1 = 32767 (overflow)
set a %B1000000000000000,
set b %B0000000000000001,
set sub 1,
eval,
output;

// Test 15: SUB 32767 - (-1) = -32768 (overflow)
set a %B0111111111111111,
set b %B1111111111111111,
set sub 1,
eval,
output;
