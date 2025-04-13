`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2025 08:31:31 PM
// Design Name: 
// Module Name: uart_tx
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


module uart_tx(
    input  logic        clk,               // System clock
    input  logic        reset_n,           // Active-low reset
    input  logic        tx_en_i,           // Enable transmission
    input  logic        tick_i,            // Baud tick from BaudGen
    input  logic [7:0]  data_i,            // Data input
    input  logic        parity_en_i,       // Enable parity
    input  logic        parity_type_i,     // 0: Odd, 1: Even
    input  logic [1:0]  data_bit_num_i,    // Data bit length
    input  logic [1:0]  stop_bit_num_i,    // Stop bit length

    output logic        tx_o,              // UART TX output
    output logic        active_flag,       // UART is transmitting
    output logic        done_flag          // Transmission done
);

    // Internal connections
    logic       parity_bit;
    logic [3:0] total_bits;

    // Generate parity bit and total bit count
    parity_tx u_parity_tx (
        .reset_n(reset_n),
        .data_i(data_i),
        .parity_type_i(parity_type_i),
        .parity_en_i(parity_en_i),
        .data_bit_num_i(data_bit_num_i),
        .stop_bit_num_i(stop_bit_num_i),
        .parity_bit(parity_bit),
        .total_bits(total_bits)
    );

    // PISO shift register to transmit bits serially
    piso u_piso (
        .reset_n(reset_n),
        .tx_en_i(tx_en_i),
        .tick_i(tick_i),
        .parity_en_i(parity_en_i),
        .parity_type_i(parity_bit),        
        .parity_bit_i(parity_bit),         
        .data_bit_num_i(data_bit_num_i),
        .stop_bit_num_i(stop_bit_num_i),
        .data_i(data_i),
        .total_bits(total_bits),
        .tx_o(tx_o),
        .active_flag(active_flag),
        .done_flag(done_flag)
    );

endmodule
