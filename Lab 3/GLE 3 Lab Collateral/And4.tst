// Test Stimulus File for And4 Chip

load And4.hdl,
output-file And4.out,
compare-to And4.cmp,
output-list a%B1.4.4 b%B1.4.4 out%B1.4.4;

set a %B0000,
set b %B0000,
eval,
output;

set a %B0000,
set b %B1111,
eval,
output;

set a %B1111,
set b %B1111,
eval,
output;

set a %B1010,
set b %B0101,
eval,
output;

set a %B0011,
set b %B1100,
eval,
output;

set a %B1110,
set b %B0111,
eval,
output;
