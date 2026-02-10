// Updated test file for And2 chip with 2-bit wide inputs and outputs

load And2.hdl,
output-file And2.out,
compare-to And2.cmp,
output-list a%B1.2.2 b%B1.2.2 out%B1.2.2;

set a %B00,
set b %B00,
eval,
output;

set a %B00,
set b %B11,
eval,
output;

set a %B11,
set b %B11,
eval,
output;

set a %B10,
set b %B01,
eval,
output;

set a %B01,
set b %B10,
eval,
output;
