`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2025 06:16:47 PM
// Design Name: 
// Module Name: piso_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module piso_tb(
        
    );
    // Parameters
    parameter DATA_WIDTH = 8;

    // Testbench signals
    logic reset_n;
    logic tx_en_i;
    logic tick_i;
    logic parity_en_i;
    logic parity_type_i;
    logic [1:0] stop_bit_num_i;
    logic [1:0] data_bit_num_i;
    logic [DATA_WIDTH-1:0] data_i;
    logic tx_o;
    logic active_flag;
    logic done_flag;

    // Instantiate the PISO module
    piso dut (
        .reset_n(reset_n),
        .tx_en_i(tx_en_i),
        .tick_i(tick_i),
        .parity_en_i (parity_en_i),
        .parity_type_i(parity_type_i),
        .data_bit_num_i(data_bit_num_i),
        .stop_bit_num_i(stop_bit_num_i),
        .data_i(data_i),
        .tx_o(tx_o),
        .active_flag(active_flag),
        .done_flag(done_flag)
    );

    // Clock generation (tick_i)
    always begin
        #5 tick_i = ~tick_i; // Period = 10ns (100MHz)
    end

    // Stimulus process
    initial begin
        // Initialize signals
        reset_n = 0;
        tx_en_i = 0;
        tick_i = 0;
        parity_type_i = 0;
        stop_bit_num_i = 2'b00;
        data_bit_num_i =2'b11;
        data_i = 8'b01010101; // Example data input: 0x55
        parity_en_i = 0;
        // Apply reset
        #10 reset_n = 1;

        // Test 1: tx_en_i data with no parity
        parity_en_i = 0;
        #10 tx_en_i = 1; // Start transmission100
        #10 tx_en_i = 0; // Stop transmission
        #130; // Wait for transmission to complete

        // Test 2: tx_en_i data with parity bit
        parity_en_i = 1;
        parity_type_i = 0; // Enable parity bit
        #10 tx_en_i = 1; // Start transmission
        #10 tx_en_i = 0; // Stop transmission
        #100; // Wait for transmission to complete

        // Test 3: Check done_flag when transmission is complete
        #10 tx_en_i = 1;
        #10 tx_en_i = 0;
        #50; // Check if done_flag is high

        // Test 4: Reset functionality
        #10 reset_n = 0;
        #10 reset_n = 1;

        // Finish simulation
        #200 $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("time = %0t, reset_n = %b, tx_en_i = %b, data_i = %b, tx_o = %b, active_flag = %b, done_flag = %b", 
                 $time, reset_n, tx_en_i, data_i, tx_o, active_flag, done_flag);
    end
endmodule
