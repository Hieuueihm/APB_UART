`timescale 1ns/1ps

module uart_tb;

    // Parameters
    parameter SYSTEM_FREQUENCY = 10000000;
    parameter SAMPLING_RATE = 16;
    parameter CLOCK_PERIOD = 10;

    logic clk;
    logic reset_n;

    logic [7:0] data_i;
    logic tx_en_i;
    logic start_tx_i;
    logic [2:0] baud_sl_i;
    logic [1:0] stop_bit_num;
    logic [1:0] data_bit_num;
    logic parity_en_i;
    logic parity_type;
    logic tx_o;
    wire trans_fi_o;

    // Clock generation
    always #(CLOCK_PERIOD/2) clk = ~clk;

    // DUT
    uart #(
        .SYSTEM_FREQUENCY(SYSTEM_FREQUENCY),
        .SAMPLING_RATE(SAMPLING_RATE)
    ) dut (
        .clk(clk),
        .reset_n(reset_n),
        .data_i(data_i),
        .tx_en_i(tx_en_i),
        .start_tx_i(start_tx_i),
        .baud_sl_i(baud_sl_i),
        .stop_bit_num(stop_bit_num),
        .data_bit_num(data_bit_num),
        .parity_en_i(parity_en_i),
        .parity_type(parity_type),
        .tx_o(tx_o),
        .trans_fi_o(trans_fi_o)
    );

    // Initial setup and multiple test cases
    initial begin
    clk = 0;
    reset_n = 0;
    tx_en_i = 0;
    start_tx_i = 0;
    data_i = 8'h00;
    baud_sl_i = 3'b001; // 9600 baud
    #200 reset_n = 1;

    // --- TEST CASE 1: 7-bit, 1 stop bit, even parity ---
    #100;
    data_i = 8'h6A; //  01101010
    data_bit_num = 2'b10; // 7 bits
    stop_bit_num = 2'b00; // 1 stop bit
    parity_en_i = 0;
    parity_type = 1; // Even parity
    tx_en_i = 1;
    start_tx_i = 1;
    #10 
    start_tx_i = 0;
    wait(trans_fi_o);
    #100000;
    data_i = 8'hAB; //  10101011 
    data_bit_num = 2'b11; // 8 bits
    start_tx_i = 1'b1;
    #10;
    start_tx_i = 1'b0;
    wait(trans_fi_o);

       #100000;
    data_i = 8'h6B; //  01101011 
    data_bit_num = 2'b11; // 8 bits
    start_tx_i = 1'b1;
    parity_type = 1; // Odd parity
    parity_en_i = 1'b1;
    #10;
    start_tx_i = 1'b0;
    wait(trans_fi_o);

           #100000;
    data_i = 8'h6B; //  01101011 
    data_bit_num = 2'b11; // 8 bits
    start_tx_i = 1'b1;
    parity_type = 0; // Odd parity
    parity_en_i = 1'b1;
    stop_bit_num = 2'b10; // 1 stop bit
    #10;
    start_tx_i = 1'b0;
    wait(trans_fi_o);


    // --- TEST CASE 2: 8-bit, 2 stop bits, odd parity ---
    // data_i = 8'hC3;
    // data_bit_num = 2'b11; // 8 bits
    // stop_bit_num = 2'b01; // 2 stop bits
    // parity_en_i = 1;
    // parity_type = 0; // Odd parity
    // start_tx_i = 1;
    // #200000 start_tx_i = 0;
    // #1500000;

    // // --- TEST CASE 3: 5-bit, 2 stop bits, no parity ---
    // data_i = 8'h0A;
    // data_bit_num = 2'b00; // 5 bits
    // stop_bit_num = 2'b10; // 2 stop bits
    // parity_en_i = 0;
    // start_tx_i = 1;
    // #200000 start_tx_i = 0;
    // #1500000;

    // // --- TEST CASE 4: 6-bit, 1 stop bit, even parity ---
    // data_i = 8'h3E;
    // data_bit_num = 2'b01; // 6 bits
    // stop_bit_num = 2'b00; // 1 stop bit
    // parity_en_i = 1;
    // parity_type = 1; // Even parity
    // start_tx_i = 1;
    // #200000 start_tx_i = 0;
    // #1500000;

    // tx_en_i = 0;
    // $display("Simulation finished.");
    #1000;
    $stop;
end

endmodule