`timescale 1ns/1ps

module uart_tx_top_tb;

    // Parameters
    parameter SYSTEM_FREQUENCY = 10000000;
    parameter SAMPLING_RATE = 16;
    parameter CLOCK_PERIOD = 10;

    logic clk;
    logic reset_n;

    logic fifo_en_i;
    logic tx_en_i;
    logic rx_en_i;
    logic start_tx_i;
    logic [2:0] baud_sl_i;
    logic  stop_bit_num_i;
    logic [1:0] data_bit_num_i;
    logic parity_en_i;
    logic parity_type_i;
    logic [7:0] data_i;
    logic [1:0] fifo_rx_trig_level_i;
    logic fifo_rx_pop_i;

    wire tx_o;
    wire fifo_tx_full_o;
    wire fifo_tx_empty_o;

    wire parity_err_o;
    wire stop_bit_err_o;
    wire fifo_rx_triggered_o;
    wire fifo_rx_empty_o;
    wire [7:0] data_o;
    wire data_o_valid;


    // Clock generation
    always #(CLOCK_PERIOD/2) clk = ~clk;

        uart_tx_test #(
            .SYSTEM_FREQUENCY(SYSTEM_FREQUENCY),
            .SAMPLING_RATE(SAMPLING_RATE)
        ) inst_uart_tx_test (
            .clk                  (clk),
            .reset_n              (reset_n),
            .data_i               (data_i),
            .tx_en_i              (tx_en_i),
            .rx_en_i              (rx_en_i),
            .start_tx_i           (start_tx_i),
            .baud_sl_i            (baud_sl_i),
            .stop_bit_num_i       (stop_bit_num_i),
            .data_bit_num_i       (data_bit_num_i),
            .parity_en_i          (parity_en_i),
            .parity_type_i        (parity_type_i),
            .fifo_en_i            (fifo_en_i),
            .fifo_rx_trig_level_i (fifo_rx_trig_level_i),
            .fifo_rx_pop_i        (fifo_rx_pop_i),
            .fifo_tx_empty_o      (fifo_tx_empty_o),
            .fifo_tx_full_o       (fifo_tx_full_o),
            .parity_err_o         (parity_err_o),
            .stop_bit_err_o       (stop_bit_err_o),
            .fifo_rx_triggered_o  (fifo_rx_triggered_o),
            .fifo_rx_empty_o      (fifo_rx_empty_o),
            .data_o               (data_o),
            .data_o_valid   (data_o_valid)
        );


    // Initial setup and multiple test cases
    //    logic fifo_en_i;
    // logic tx_en_i;
    // logic rx_en_i;
    // logic start_tx_i;
    // logic [1:0] baud_sl_i;
    // logic stop_bit_num_i;
    // logic [1:0] data_bit_num_i;
    // logic parity_en_i;
    // logic parity_type_i;
    // logic [7:0] data_i;

    initial begin
    clk = 0;
    reset_n = 0;
    fifo_en_i = 1;
    tx_en_i = 0;
    rx_en_i = 1'b1;
    start_tx_i = 0;
    stop_bit_num_i = 0;
    data_bit_num_i = 2'b11;
    parity_en_i = 0;
    data_i = 8'h00;
    baud_sl_i = 2'b001; // 9600 baud
    fifo_rx_trig_level_i = 2'b0;
    fifo_rx_pop_i = 1'b0;


    #200 reset_n = 1;

    @(posedge clk);
    data_i = 8'h6A; //  01101010
    data_bit_num_i = 2'b11; // 8 bits
    stop_bit_num_i = 1'b0; // 1 stop bit
    parity_en_i= 0;
    parity_type_i = 1; // Even parity
    tx_en_i = 1;
    start_tx_i = 1;
    @(posedge clk);
    start_tx_i = 0;
    @(posedge clk);

    start_tx_i = 1;
    data_i = 8'b00101010;
    @(posedge clk);
    start_tx_i = 0;

    @(posedge clk);

    start_tx_i = 1;
    data_i = 8'b11110000;
    @(posedge clk);
    start_tx_i = 0;


    // wait(trans_fi_o);
    #1000000;
    @(posedge clk);

    // data_i = 8'hAB; //  10101011 
    // data_bit_num = 2'b11; // 8 bits
    // start_tx_i = 1'b1;
    // @(posedge clk);
    //     @(posedge clk);

    // start_tx_i = 1'b0;
    // wait(trans_fi_o);

    //    #100000;
    //        @(posedge clk);

    // data_i = 8'h6B; //  01101011 
    // data_bit_num = 2'b01; // 8 bits
    // start_tx_i = 1'b1;
    // stop_bit_num = 1'b1; // 1 stop bit
    // parity_type = 0; // Odd parity
    // parity_en_i = 1'b1;
    // @(posedge clk);
    //     @(posedge clk);

    // start_tx_i = 1'b0;
    // wait(trans_fi_o);

    //        #100000;
    //            @(posedge clk);

    // data_i = 8'h6B; //  01101011 
    // data_bit_num = 2'b00; // 8 bits
    // start_tx_i = 1'b1;
    // parity_type = 1; // Odd parity
    // parity_en_i = 1'b1;
    // stop_bit_num = 1'b1; // 1 stop bit
    // @(posedge clk);
    //     @(posedge clk);

    // start_tx_i = 1'b0;
    // wait(trans_fi_o);

    #1000;
    $stop;
end

endmodule