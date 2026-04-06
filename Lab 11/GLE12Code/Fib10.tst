load Fib10.asm,
output-file Fib10.out,
compare-to Fib10.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[3]%D2.6.2 RAM[4]%D2.6.2 RAM[5]%D2.6.2 RAM[6]%D2.6.2 RAM[7]%D2.6.2 RAM[8]%D2.6.2 RAM[9]%D2.6.2;

set PC 0,
repeat 200 {
  ticktock;
}
output;
