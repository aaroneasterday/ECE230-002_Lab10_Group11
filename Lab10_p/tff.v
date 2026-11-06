module tff(
	input clk, T,
	output reg Q,
	output Qnot
);

initial begin
	Q <= 0;
end

always @ (posedge clk)
	Q <= T ? ~Q : Q;

assign Qnot = ~Q;

endmodule