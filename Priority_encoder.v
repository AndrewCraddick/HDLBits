/* A priority encoder is a combinational circuit that, when given an input bit vector, 
outputs the position of the first 1 bit in the vector. For example, a 8-bit priority 
encoder given the input 8'b10010000 would output 3'd4, because bit[4] is first bit that is high.

Build a 4-bit priority encoder. For this problem, if none of the input bits are high 
(i.e., input is zero), output zero. Note that a 4-bit number has 16 possible combinations. */

module top_module (
    input [3:0] in,
    output [1:0] pos  );
    
    
    
    assign pos[0] = (~in[0]) & (in[1] || ( in[3]&(~in[2]) ) );
    assign pos[1] = (~in[1]) & (~in[0]) & (in[2] || in[3]);
    
    /* here I implimented the priority encoder using a Karnaugh map
       instead just to review my boolean skills 
       alternatively, it can be done like this:

       always @(*) begin
        pos = (in[0]&1)?2'd0:(in[1]&1)?2'd1:(in[2]&1)?2'd2:(in[3]&1)?2'd3:2'd0;
    end

    Simply put, we are doing this:
    (NOTE: pos must be declared as a reg for this to work)
    
  always@(*) begin  // This is a combinational circuit
         	 case(in)
                        4'd0 : pos = 0;
                        4'd1 : pos = 0;
                        4'd2 : pos = 1;
                        4'd3 : pos = 0;
                        4'd4 : pos = 2;
                        4'd5 : pos = 0;
                        4'd6 : pos = 1;
                        4'd7 : pos = 0;
                        4'd8 : pos = 3;
                        4'd9 : pos = 0;
                        4'd10 : pos = 1;
                        4'd11 : pos = 0;
                	    4'd12 : pos = 2;
                        4'd13 : pos = 0;
                        4'd14 : pos = 1;
                        4'd15 : pos = 0;
                        default pos = 0;
                    endcase
        end

endmodule
    */


endmodule