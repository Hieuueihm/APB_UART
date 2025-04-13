`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2025 01:45:29 AM
// Design Name: 
// Module Name: uart_tx_tb
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


module uart_tx_tb(

    );// Testbench signals
  logic clk;
  logic reset_n;
  logic tick_i;
  logic tx_en_i;
  logic [7:0] data_i;
  logic parity_en_i;
  logic parity_type_i;
  logic [1:0] data_bit_num_i;
  logic [1:0] stop_bit_num_i;
  logic tx_o;
  logic active_flag;
  logic done_flag;

  // Clock generation
  initial clk = 0;
  always #5 clk = ~clk; // 100MHz clock

  // Generate tick every 160ns to simulate 62500 baud
  initial begin
    tick_i = 0;
    forever begin
      #160 tick_i = 1;
      #20 tick_i = 0;
    end
  end

  // Instantiate DUT
  uart_tx dut (
    .clk(clk),
    .reset_n(reset_n),
    .tx_en_i(tx_en_i),
    .tick_i(tick_i),
    .data_i(data_i),
    .parity_en_i(parity_en_i),
    .parity_type_i(parity_type_i),
    .data_bit_num_i(data_bit_num_i),
    .stop_bit_num_i(stop_bit_num_i),
    .tx_o(tx_o),
    .active_flag(active_flag),
    .done_flag(done_flag)
  );

  // Stimulus
  initial begin
    
    reset_n = 0;
    tx_en_i = 0;
    data_i = 8'h00;
    parity_en_i = 0;
    parity_type_i = 0;
    data_bit_num_i = 2'b11; // 8 data bits
    stop_bit_num_i = 2'b00; // 1 stop bit

    #100;
    reset_n = 1;

    // Test 1: Transmit 0xA5 with parity enabled (even)
    @(negedge tick_i);
    data_i = 8'hA5;
    parity_en_i = 1;
    parity_type_i = 1;      // EVEN
    tx_en_i = 1;

    @(negedge tick_i);      // Allow FSM to detect enable
    tx_en_i = 0;
    // Wait for transmission to complete
    wait (done_flag == 1);

    // Test 2: Transmit 0x3C with parity disabled
    @(negedge tick_i);
    data_i = 8'h3C;
    parity_en_i = 0;
    tx_en_i = 1;

    @(negedge tick_i);
    tx_en_i = 0;

    wait (done_flag == 1);
    #1000;
    $stop;
  end

endmodule