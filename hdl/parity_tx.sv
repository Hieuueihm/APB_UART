`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2025 12:09:34 AM
// Design Name: 
// Module Name: parity_tx
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

module parity_tx(
  input         reset_n,           // Active low reset
  input  [7:0]  data_i,            // Data input
  input         parity_type_i,     // Parity type: 1'b1 = Even, 1'b0 = Odd
  input         parity_en_i,       // Enable parity generation
  input  [1:0]  data_bit_num_i,    // Number of data bits: 2'b00 = 5, 2'b01 = 6, 2'b10 = 7, 2'b11 = 8
  input  [1:0]  stop_bit_num_i,    // Number of stop bits: 2'b00 = 1 stop, 2'b11 = 2 stop
  
  output logic        parity_bit,   // Calculated parity bit output
  output logic [3:0]  total_bits    // Total number of bits in frame including start, data, optional parity, stop
  
);

  // Parity type encoding
  parameter EVEN = 1'b1,
            ODD = 1'b0;      
     
  // Combinational logic block
  always_comb begin
    if (!reset_n) begin
      parity_bit = 1'b1;  // Default parity value (usually high when idle)
      total_bits = 0;       // No bits to transmit
    end else begin
      // --------- Parity Bit Calculation ---------
      case (parity_type_i)
        ODD:                    parity_bit = (^data_i) ? 1'b0 : 1'b1;   // Odd parity: parity bit = NOT XOR of data
        EVEN:                   parity_bit = (^data_i) ? 1'b1 : 1'b0;   // Even parity: parity bit = XOR of data
      endcase
      // --------- Base Data Bits Count ---------
      case (data_bit_num_i)
            2'b00: total_bits = 5;
            2'b01: total_bits = 6;
            2'b10: total_bits = 7;
            default: total_bits = 8;
        endcase
        // --------- Add Start Bit ---------
        total_bits = total_bits + 1; // Start bit
        // --------- Add Parity Bit if Enabled --------
        if (parity_en_i) total_bits =total_bits + 1;
        // --------- Add Stop Bits ---------
        case (stop_bit_num_i)
            2'b00: total_bits = total_bits + 1;  // 1 stopbit
            2'b11: total_bits = total_bits + 2;  // 2 stopbit
        endcase
    end
  end

endmodule
