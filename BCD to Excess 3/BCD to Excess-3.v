module BCD_to_Excess(B, E);

input [3:0]B;
output [3:0]E;

assign  E[0] = ~B[0],
	E[1] = ~(B[1] ^ B[0]),
	E[2] = B[2] ^ (B[1] | B[0]),
	E[3] = B[3] | B[2] & (B[1] | B[0]);
endmodule