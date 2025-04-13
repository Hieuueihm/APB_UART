module uart #(
    parameter SYSTEM_FREQUENCY = 100000000,
    parameter SAMPLING_RATE = 16
)(
    input clk,
    input reset_n,
    
    input [7:0] data_i,
    input tx_en_i,
    input start_tx_i,
    input [2:0] baud_sl_i,
    input [1:0] stop_bit_num,
    input [1:0] data_bit_num,
    input parity_en_i,
    input parity_type,
    
    // UART TX output
    output tx_o,
    output trans_fi_o
);

    // Internal signals
    logic tick_tx;
    logic tick_rx; // Chưa dùng nhưng vẫn xuất ra nếu cần dùng sau

    // Baud generator instance
    baud_generator #(
        .SYSTEM_FREQUENCY(SYSTEM_FREQUENCY),
        .SAMPLING_RATE(SAMPLING_RATE)
    ) baud_gen_inst (
        .clk(clk),
        .reset_n(reset_n),
        .baud_sl_i(baud_sl_i),
        .tick_tx(tick_tx),
        .tick_rx(tick_rx)
    );

    // UART transmitter instance
    uart_transmitter uart_tx_inst (
        .clk(clk),
        .reset_n(reset_n),
        .start_tx_i(start_tx_i),
        .tx_en_i(tx_en_i),
        .parity_type_i(parity_type),
        .parity_en_i(parity_en_i),
        .data_i(data_i),
        .tick_i(tick_tx),
        .stop_bit_num_i(stop_bit_num),
        .data_bit_num_i(data_bit_num),
        .tx_o(tx_o),
        .trans_fi_o(trans_fi_o)
    );

endmodule
