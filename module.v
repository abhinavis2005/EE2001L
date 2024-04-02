module StateMach(X, Z, clock, PresA, PresB);

input X;
input clock;
output Z;
reg PresA=0;
reg PresB=0;
output PresA;
output PresB;

wire NexA;
wire NexB;


always@(posedge clock)
begin
    PresA <= NexA;
    PresB <= NexB;
end

//comb

assign NexA = (PresA & (~X))  | (X & PresB);
assign NexB = (~(PresA) & X) | ((~X)&PresB);

endmodule