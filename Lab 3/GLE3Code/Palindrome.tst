//Test Stimulus File for Palindrome Chip

load Palindrome.hdl,
compare-to Palindrome.cmp,
output-file Palindrome.out,
output-list p%B3.1.3 q%B3.1.3 r%B3.1.3 s%B3.1.3 t%B3.1.3 out%B3.1.3;

// All zeros
set p %B0,
set q %B0,
set r %B0,
set s %B0,
set t %B0,
eval,
output;

// All ones
set p %B1,
set q %B1,
set r %B1,
set s %B1,
set t %B1,
eval,
output;

// Classic palindrome
set p %B1,
set q %B0,
set r %B1,
set s %B0,
set t %B1,
eval,
output;

// Symmetric
set p %B0,
set q %B1,
set r %B1,
set s %B1,
set t %B0,
eval,
output;

// Middle different
set p %B1,
set q %B1,
set r %B0,
set s %B1,
set t %B1,
eval,
output;

// Non-palindrome
set p %B0,
set q %B0,
set r %B1,
set s %B1,
set t %B0,
eval,
output;

// First bit wrong
set p %B1,
set q %B0,
set r %B0,
set s %B0,
set t %B0,
eval,
output;

// Last bit wrong
set p %B0,
set q %B0,
set r %B0,
set s %B0,
set t %B1,
eval,
output;

// Second bit wrong
set p %B0,
set q %B1,
set r %B0,
set s %B0,
set t %B0,
eval,
output;

// Fourth bit wrong
set p %B0,
set q %B0,
set r %B0,
set s %B1,
set t %B0,
eval,
output;

// Both outer mismatched
set p %B1,
set q %B0,
set r %B0,
set s %B1,
set t %B0,
eval,
output;

// Both inner match
set p %B0,
set q %B1,
set r %B0,
set s %B1,
set t %B0,
eval,
output;

// Partial match only
set p %B1,
set q %B0,
set r %B1,
set s %B1,
set t %B1,
eval,
output; 