// GLE1 for CSCE312 

load Nand.hdl,
output-file Nand.out,
compare-to Nand.cmp,
output-list a b out;

set a 0,
set b 0,
eval,
output;

set a 0,
set b 1,
eval,
output;

set a 1,
set b 0,
eval,
output;

set a 1,
set b 1,
eval,
output;