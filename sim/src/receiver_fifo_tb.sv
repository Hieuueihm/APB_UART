// `timescale 1ns/1ps

// module receiver_fifo_tb;

//     parameter CLOCK_PERIOD = 10;
// parameter DEPTH =16;
//     logic clk;
//     logic reset_n;

//     logic [7:0] fifo_rx_i;
//     logic fifo_rx_push_i;
//     logic fifo_rx_pop_i;
//     logic fifo_rx_reset_i;
//     logic [1:0] fifo_rx_trig_level_i;
//     logic [7:0] fifo_rx_o;
//     logic fifo_rx_empty_o;
//     logic fifo_rx_full_o;
//     logic fifo_rx_triggered_o;
//     // Clock generation
//     always #(CLOCK_PERIOD/2) clk = ~clk;
//         receiver_fifo #(
//             .DEPTH(DEPTH)
//         ) inst_receiver_fifo (
//             .clk                  (clk),
//             .reset_n                  (reset_n),
//             .fifo_rx_i            (fifo_rx_i),
//             .fifo_rx_push_i       (fifo_rx_push_i),
//             .fifo_rx_pop_i        (fifo_rx_pop_i),
//             .fifo_rx_reset_i      (fifo_rx_reset_i),
//             .fifo_rx_trig_level_i (fifo_rx_trig_level_i),
//             .fifo_rx_o            (fifo_rx_o),
//             .fifo_rx_empty_o      (fifo_rx_empty_o),
//             .fifo_rx_full_o       (fifo_rx_full_o),
//             .fifo_rx_triggered_o  (fifo_rx_triggered_o)
//         );


//     // Initial setup and multiple test cases
//     initial begin
//         clk = 0;
//         reset_n = 0;
//         fifo_rx_i = 0;
//         fifo_rx_push_i = 0;
//         fifo_rx_pop_i= 0;
//         fifo_rx_reset_i = 0;
//         fifo_rx_trig_level_i = 0;
//         #200 reset_n = 1;
//         @(posedge clk);
//         fifo_rx_i = 8'd10;
//         fifo_rx_push_i = 1'b1;
//         @(posedge clk);
//                 fifo_rx_i = 8'd20;
//         fifo_rx_push_i = 1'b1;
//         @(posedge clk);
//                 fifo_rx_push_i = 1'b0;

//         fifo_rx_pop_i= 1'b1;
//         @(posedge clk);
//                 @(posedge clk);

//                 fifo_rx_pop_i= 1'b0;

//         #100;




 
//     $stop;
// end

// endmodule