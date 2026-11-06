module jkff(
	input clk, J, K,
	output reg Q,
	output Qnot
);

initial begin
	Q <= 0;
end

always @ (posedge clk)
	Q <= (J & K) ? ~Q : (~J & ~K) ? Q : (~J & K) ? 0 : 1;

assign Qnot = ~Q;

endmodule