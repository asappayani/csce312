//Starter Test stimulus file for FastRCA12 

load FastRCA12.hdl,
compare-to FastRCA12.cmp,
output-file FastRCA12.out,
output-list a%B3.12.3 b%B3.12.3 out%B3.12.3 carry%B3.1.3;

set a %B000000000000,
set b %B000000000000,
eval,
output;

set a %B000000000001,
set b %B000000000001,
eval,
output;

set a %B000000001111,
set b %B000000000001,
eval,
output;

set a %B000000010000,
set b %B000000010000,
eval,
output;

set a %B000001011111,
set b %B000000100001,
eval,
output;

set a %B001100010000,
set b %B010000010000,
eval,
output;

set a %B001111111111,
set b %B010000000001,
eval,
output;

set a %B111111111111,
set b %B000000000001,
eval,
output;

set a %B101010101010,
set b %B010101010101,
eval,
output;