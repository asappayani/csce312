load Door.hdl,
output-file Door.out,
compare-to Door.cmp,
output-list S%B3.1.3 K%B3.1.3 C%B3.1.3 Open%B3.1.3;

set S 0,
set K 0,
set C 0,
eval,
output;

set S 0,
set K 0,
set C 1,
eval,
output;

set S 0,
set K 1,
set C 0,
eval,
output;

set S 0,
set K 1,
set C 1,
eval,
output;

set S 1,
set K 0,
set C 0,
eval,
output;

set S 1,
set K 0,
set C 1,
eval,
output;

set S 1,
set K 1,
set C 0,
eval,
output;

set S 1,
set K 1,
set C 1,
eval,
output;
