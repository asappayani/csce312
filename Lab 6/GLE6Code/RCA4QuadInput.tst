//RCA4.tst

load RCA4QuadInput.hdl,
output-file RCA4QuadInput.out,
compare-to RCA4QuadInput.cmp,
output-list a%B1.4.1 b%B1.4.1 c%B1.4.1 d%B1.4.1 sum%B1.4.1 cout%B3.1.3;

set a %B0000,
set b %B0000,
set c %B0000,
set d %B0000,
eval,
output;

set a %B1111,
set b %B1111,
set c %B0000,
set d %B0000,
eval,
output;

// You can extend your own test cases below this