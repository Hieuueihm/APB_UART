// test module

module uart_tx_test #(
    parameter SYSTEM_FREQUENCY = 100000000,
    parameter SAMPLING_RATE = 16
)(
    input clk,
    input reset_n,
    
    input [7:0] data_i,
    input tx_en_i,
    input rx_en_i,
    input start_tx_i,
    input [2:0] baud_sl_i,
    input stop_bit_num_i,
    input [1:0] data_bit_num_i,
    input parity_en_i,
    input parity_type_i,
    input fifo_en_i,
    input [1:0] fifo_rx_trig_level_i,
    input fifo_rx_pop_i,

    
    // UART TX output
    output fifo_tx_empty_o,
    output fifo_tx_full_o,
    output parity_err_o,
    output stop_bit_err_o,
    output fifo_rx_triggered_o,
    output fifo_rx_empty_o,
    output fifo_rx_full_o,
    output [7:0] data_o,
    output data_o_valid
);

    // Internal signals
    logic tx;
    logic tick_tx;
    logic tick_rx; 

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
    // wire tx;
    // wire trans_fi_o;
    uart_tx_top inst_uart_tx_top
        (
            .clk             (clk),
            .reset_n         (reset_n),
            .fifo_en_i         (fifo_en_i),
            .tx_en_i         (tx_en_i),
            .parity_type_i   (parity_type_i),
            .parity_en_i     (parity_en_i),
            .tick_i          (tick_tx),
            .stop_bit_num_i  (stop_bit_num_i),
            .data_bit_num_i  (data_bit_num_i),
            .data_i          (data_i),
            .write_data_i    (start_tx_i),
            .tx_o            (tx),
            .fifo_tx_empty_o (fifo_tx_empty_o),
            .fifo_tx_full_o  (fifo_tx_full_o)
        );

    uart_rx_top inst_uart_rx_top
        (
            .clk                  (clk),
            .reset_n              (reset_n),
            .rx_en_i              (rx_en_i),
            .tick_i               (tick_rx),
            .parity_type_i        (parity_type_i),
            .parity_en_i          (parity_en_i),
            .tx_i                 (tx),
            .stop_bit_num_i       (stop_bit_num_i),
            .data_bit_num_i       (data_bit_num_i),
            .fifo_en              (fifo_en_i),
            .fifo_rx_trig_level_i (fifo_rx_trig_level_i),
            .fifo_rx_pop_i        (fifo_rx_pop_i),
            .data_o               (data_o),
            .data_o_valid         (data_o_valid),
            .parity_err_o         (parity_err_o),
            .stop_bit_err_o       (stop_bit_err_o),
            .fifo_rx_triggered_o  (fifo_rx_triggered_o),
            .fifo_rx_empty_o      (fifo_rx_empty_o),
            .fifo_rx_full_o       (fifo_rx_full_o)
        );




endmodule
