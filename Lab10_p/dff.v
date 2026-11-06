module dff(
	input D, clk,
	output reg Q,
	output Qnot
);

initial begin
	Q <= 0;
end

always @ (posedge clk)
	Q <= D;

assign Qnot = ~Q;

endmodule