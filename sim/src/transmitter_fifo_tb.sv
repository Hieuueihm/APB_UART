`timescale 1ns/1ps

module transmitter_fifo_tb;

    parameter CLOCK_PERIOD = 10;
parameter DEPTH =16;
    logic clk;
    logic reset_n;

    logic [7:0] fifo_tx_i;
    logic fifo_tx_push_i;
    logic fifo_tx_pop_i;
    logic fifo_tx_reset_i;
    logic [7:0] fifo_tx_o;
    logic fifo_tx_empty_o;
    logic fifo_tx_full_o;
    // Clock generation
    always #(CLOCK_PERIOD/2) clk = ~clk;
    transmitter_fifo #(
            .DEPTH(DEPTH)
        ) inst_transmitter_fifo (
            .clk             (clk),
            .reset_n         (reset_n),
            .fifo_tx_i       (fifo_tx_i),
            .fifo_tx_push_i  (fifo_tx_push_i),
            .fifo_tx_pop_i   (fifo_tx_pop_i),
            .fifo_tx_reset_i (fifo_tx_reset_i),
            .fifo_tx_o       (fifo_tx_o),
            .fifo_tx_empty_o (fifo_tx_empty_o),
            .fifo_tx_full_o  (fifo_tx_full_o)
        );


    // Initial setup and multiple test cases
    initial begin
        clk = 0;
        reset_n = 0;
        fifo_tx_i = 0;
        fifo_tx_pop_i = 0;
        fifo_tx_push_i= 0;
        fifo_tx_reset_i = 0;
        #200 reset_n = 1;
        @(posedge clk);
        fifo_tx_i = 8'd10;
        fifo_tx_push_i = 1'b1;
        @(posedge clk);
                fifo_tx_i = 8'd20;
        fifo_tx_push_i = 1'b1;
        @(posedge clk);
                fifo_tx_push_i = 1'b0;

        fifo_tx_pop_i= 1'b1;
        @(posedge clk);
                @(posedge clk);

                fifo_tx_pop_i= 1'b0;

        #100;




 
    $stop;
end

endmodule