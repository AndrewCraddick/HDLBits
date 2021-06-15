module top_module(
    input clk,
    input areset,    // Asynchronous reset to state B
    input in,
    output out);//  

    parameter A=0, B=1; 
    reg state, next_state;
    

    always @(*) begin    // This is a combinational always block
        // State transition logic
        case (state)
            A: if(in==0) 
                next_state = B;
                else 
                    next_state = A;
                //next_state = in ? A : B; //  alternate way that doesn't use if else
            B: if(in==0) 
                next_state = A;
                else 
                    next_state = B;
                //next_state = in ? B : A;
        endcase
     end

    always @(posedge clk, posedge areset) begin    // This is a sequential always block
        if(areset==1)
            state <= B;
        else
            state <=next_state;
       // State flip-flops with asynchronous reset
    end

    // Output logic
     assign out = state;

endmodule