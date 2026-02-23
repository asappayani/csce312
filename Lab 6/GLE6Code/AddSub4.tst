//Test stimulus file for AddSub4

load AddSub4.hdl,
output-file AddSub4.out,
compare-to AddSub4.cmp,
output-list a%B1.4.1 b%B1.4.1 sub%B1.1.1 out%B1.4.1;

// Addition tests (sub=0)

set a %B0000,
set b %B0000,
set sub 0,
eval,
output;


// Subtraction tests (sub=1)

set a %B0000,
set b %B0000,
set sub 1,
eval,
output;

// Extend your test cases below this line