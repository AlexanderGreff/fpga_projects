`timescale 1ns / 1ps

module clk_wiz_0 (
    output logic clk_out1,  // Intended for clk_25MHz (in phase with clk_in1)
    output logic clk_out2,  // Intended for clk_125MHz (in phase with clk_in2) 
    output logic clk_out3,  // Intended for clk_100MHz (pass-through)
    input logic reset,      // Active high reset signal
    output logic locked,    
    input logic clk_in1     // Intended for axi_aclk (100MHz input)
);
    
    // clk_out3 (100 MHz) is simply assigned the input clock value with no delay.
    // This ensures it is always exactly in phase with clk_in1.
    assign clk_out3 = clk_in1;
    assign clk_out2 = clk_in1; // Pass-through for 100MHZ
    assign locked = 1'b1;    // Always locked for simulation purposes

    // 25 MHz Output Generation
    // We use a counter to divide the 100MHz clock frequency by 4.
    // The division ensures the signals start in phase after reset is de-asserted.
    logic [1:0] divider_count;

    always_ff @(posedge clk_in1 or posedge reset) begin
        if (reset) begin
            // Reset state: clk_out1 is low, counter is zero.
            clk_out1 <= 1'b0;
            divider_count <= 2'd0;
        end else begin
            // Normal operation:
            if (divider_count == 2'd1) begin
                // Toggle the 25MHz clock on the 2nd edge of the 100MHz clock cycle
                clk_out1 <= ~clk_out1; 
            end
            
            // Increment/wrap the counter on every positive edge of clk_in1
            divider_count <= divider_count + 1'b1;
        end
    end
    
    // Initialize outputs at the start of the simulation (time 0)
    // initial begin
    //     clk_out1 <= 1'b0;
    //     // clk_out3 is driven by assign, initial is optional but safe
    // end

endmodule
