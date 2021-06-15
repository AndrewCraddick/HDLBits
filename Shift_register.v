module top_module (
    input clk,
    input resetn,   // synchronous reset
    input in,
    output out);
    
	wire [3:0] shift_reg;
	
	// Create a shift register named sr. It shifts in "in".
	always @(posedge clk) begin
		if (~resetn)		// Synchronous active-low reset
			shift_reg <= 0;
		else 
			shift_reg <= {shift_reg[2:0], in};
	end
	
	assign out = shift_reg[3];		// Output the final bit (sr[3])

endmodule