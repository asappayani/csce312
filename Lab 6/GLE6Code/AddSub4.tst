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

// Zero/identity
set a %B0101,
set b %B0000,
set sub 1,
eval,
output;

set a %B0000,
set b %B1011,
set sub 0,
eval,
output;

// Basic signed correctness
set a %B0011,
set b %B0010,
set sub 0,
eval,
output;

set a %B1101,
set b %B1110,
set sub 0,
eval,
output;

set a %B0011,
set b %B0010,
set sub 1,
eval,
output;

set a %B0010,
set b %B0011,
set sub 1,
eval,
output;

// Sign-crossing
set a %B0101,
set b %B1101,
set sub 0,
eval,
output;

set a %B1101,
set b %B0010,
set sub 1,
eval,
output;

// Extremes and overflow/wrap behavior
set a %B0111,
set b %B0001,
set sub 0,
eval,
output;

set a %B1000,
set b %B1111,
set sub 0,
eval,
output;

set a %B1000,
set b %B0001,
set sub 1,
eval,
output;

set a %B0111,
set b %B1111,
set sub 1,
eval,
output;

// Invariant check: a - a = 0
set a %B1000,
set b %B1000,
set sub 1,
eval,
output;

set a %B1111,
set b %B1111,
set sub 1,
eval,
output;