module top_module( 
    input [255:0] in,
    input [7:0] sel,
    output out );
    always@(*) begin
      //  for(int i =0,i<256,i++)
            out = in[sel];
    end
endmodule