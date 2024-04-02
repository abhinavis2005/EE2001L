`timescale 1ns/100ps
module test_SyncCircuit;
wire PresA, PresB;
reg X, clock;

StateMach DUT (X, Z, clock, PresA, PresB);
initial
begin
$dumpfile("test_circuit.vcd");
$dumpvars(0,test_SyncCircuit);
$monitor ("At t=%t, a=%b, b=%b, X=%b, clk=%b,", $time, PresA, PresB, X, clock);
X=1; clock=0;  //t=0
#10 clock=1;

#10 clock=0;
#10 clock=1;
#10 clock=0;
#10 clock=1;
#10 clock=0;
#10 clock=1;
#10 clock=0;
#10 clock=1;
#10 clock=0;
#10 clock=1;
#10 clock=0;
#10 clock=1;
#10 clock=0;
#10 X=0;
#10 clock=1;
#10 clock=0;
#10 clock=1;
#10 clock=0;
#10 clock=1;

#50 $finish;
end


endmodule