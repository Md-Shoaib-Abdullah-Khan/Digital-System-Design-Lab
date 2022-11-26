module adderSubtractor(A, B, M, S, C);

input [0:3]A, B;
input M;
output [0:3] S;
output C;

wire [0:3] Bxor;

assign Bxor[0] = B[0] ^ M,
	 Bxor[1] = B[1] ^ M,
	 Bxor[2] = B[2] ^ M,
	 Bxor[3] = B[3] ^ M;

assign {C, S} = A + Bxor + M ; 	

endmodule
