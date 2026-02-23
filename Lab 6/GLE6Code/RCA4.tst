//RCA4 Test stimulus file

load RCA4.hdl,
output-file RCA4.out,
compare-to RCA4.cmp,
output-list a%B0.4.0 b%B0.4.0 c%B0.1.0 sum%B0.4.0 cout%B0.1.3;

set a %B0000,
set b %B0000,
set c 0,
eval,
output;

set a %B0101,
set b %B1010,
set c 0,
eval,
output;

set a %B0001,
set b %B1111,
set c 0,
eval,
output;

set a %B1111,
set b %B1111,
set c 0,
eval,
output;