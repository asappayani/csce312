load TrafficLights.hdl,
output-file TrafficLights.out,
compare-to TrafficLights.cmp,
output-list time%S1.4.1 carNS%B2.1.2 carEW%B2.1.2 timerExpire%B5.1.5 NSlight%B6.2.6 EWlight%B6.2.6;

// Initial state: DFFs may power up as 00/00.
// Your recovery logic should force the machine to NS green after one cycle.
set carNS 0,
set carEW 0,
set timerExpire 0,
output;
tick, output;
tock, output;

