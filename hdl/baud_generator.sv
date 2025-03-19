module baud_generator #(
    parameter SYSTEM_FREQUENCY = 100000000
) (
    input clk,
    input reset_n,
    input [2:0] baud_sl,
    input start_tx,
    input start_rx,
    output baud_tx,
    output baud_rx
);

  // generating baudrate of tx and rx

endmodule
