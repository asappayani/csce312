//this tst file can be used to test 
//whether your sequence.asm implementation
//properly handles all test cases

load sort.asm,
output-file sort.out,
compare-to sort.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2;

set PC 0,
set RAM[0] 10,
set RAM[1] 0,
repeat 100 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 10,
set RAM[1] -10,
repeat 100 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 10,
set RAM[1] 10,
repeat 100 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 0,
set RAM[1] 10,
repeat 100 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 0,
set RAM[1] -10,
repeat 100 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 0,
set RAM[1] 0,
repeat 100 {
	ticktock;
}
output;

set PC 0,
set RAM[0] -3,
set RAM[1] 0,
repeat 100 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 5,
set RAM[1] 0,
repeat 100 {
	ticktock;
}
output;

set PC 0,
set RAM[0] -5,
set RAM[1] 0,
repeat 100 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 10,
set RAM[1] 0,
repeat 100 {
	ticktock;
}
output;

set PC 0,
set RAM[0] -10,
set RAM[1] 0,
repeat 100 {
	ticktock;
}
output;