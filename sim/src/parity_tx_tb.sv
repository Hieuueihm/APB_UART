`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2025 01:21:17 AM
// Design Name: 
// Module Name: parity_tx_tb
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


module parity_tx_tb(

    );
        // ==== Inputs ====
  logic        reset_n;
  logic [7:0]  data_i;
  logic        parity_type_i;
  logic        parity_en_i;
  logic [1:0]  data_bit_num_i;
  logic [1:0]  stop_bit_num_i;

  // ==== Outputs ====
  logic        parity_bit;
  logic [3:0]  total_bits;

  // ==== DUT Instantiation ====
  parity_tx dut (
    .reset_n(reset_n),
    .data_i(data_i),
    .parity_type_i(parity_type_i),
    .parity_en_i(parity_en_i),
    .data_bit_num_i(data_bit_num_i),
    .stop_bit_num_i(stop_bit_num_i),
    .parity_bit(parity_bit),
    .total_bits(total_bits)
  );

  // ==== Test Sequence ====
  initial begin
    $display("====== Start parity_tx_tb ======");
    
    // Reset
    reset_n = 0;
    data_i = 8'h00;
    parity_en_i = 0;
    parity_type_i = 0;
    data_bit_num_i = 2'b00;
    stop_bit_num_i = 2'b00;
    #5;
    
    reset_n = 1;
    #5;

    // === Test case 1: Even parity, 8 data bits, 1 stop bit ===
    data_i = 8'b10101010;        // Has even number of 1s
    parity_en_i = 1;
    parity_type_i = 1'b1;        // EVEN
    data_bit_num_i = 2'b11;      // 8 bits
    stop_bit_num_i = 2'b00;      // 1 stop bit
    #5;
    $display("[TC1] Even parity | data: %b | parity: %b | total_bits: %0d", data_i, parity_bit, total_bits);

    // === Test case 2: Odd parity, 7 data bits, 2 stop bits ===
    data_i = 8'b1111000;         // 4 ones ? parity for ODD should be 1
    parity_en_i = 1;
    parity_type_i = 1'b0;        // ODD
    data_bit_num_i = 2'b10;      // 7 bits
    stop_bit_num_i = 2'b11;      // 2 stop bits
    #5;
    $display("[TC2] Odd parity | data: %b | parity: %b | total_bits: %0d", data_i, parity_bit, total_bits);

    // === Test case 3: No parity, 6 data bits, 1 stop bit ===
    data_i = 8'b01010101;
    parity_en_i = 0;             // Disabled
    data_bit_num_i = 2'b01;      // 6 bits
    stop_bit_num_i = 2'b00;      // 1 stop bit
    #5;
    $display("[TC3] No parity | data: %b | parity_en: %b | total_bits: %0d", data_i, parity_en_i, total_bits);

    // === Test case 4: Edge case: All 1s, Even parity, 5 data bits, 2 stop bits ===
    data_i = 8'b11111111;
    parity_en_i = 1;
    parity_type_i = 1'b1;        // EVEN
    data_bit_num_i = 2'b00;      // 5 bits
    stop_bit_num_i = 2'b11;      // 2 stop bits
    #5;
    $display("[TC4] Even parity | data: %b | parity: %b | total_bits: %0d", data_i, parity_bit, total_bits);

    // === Reset again ===
    reset_n = 0;
    #2;
    reset_n = 1;
    #5;
    $display("[Reset] parity_bit: %b | total_bits: %0d", parity_bit, total_bits);

    $display("====== End of testbench ======");
    $finish;
  end

endmodule

