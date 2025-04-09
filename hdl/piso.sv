`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2025 10:49:06 PM
// Design Name: 
// Module Name: piso1
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


module piso(
    input  logic        reset_n,           //  Active low reset.
    input  logic        tx_en_i,           //  An enable to start transmission.
    input  logic        tick_i,            //  Clocking signal from the BaudGen unit.
    input  logic        parity_en_i,       //  Enable parity.
    input  logic        parity_type_i,     //  0: even, 1: odd
    input  logic [1:0]  data_bit_num_i,    //  Number of data bits (2b'0: 5, 2'b01: 6, 2'b10: 7, 2'b11: 8)
    input  logic [1:0]  stop_bit_num_i,    //  Number of stop bits (2b'0: 1 bit, 2b'1: 2 bit)
    input  logic [7:0]  data_i,            //  The data input.

    output logic        tx_o,              //  Serial transmitter's data out
    output logic        active_flag,       //  High when Tx is transmitting
    output logic        done_flag          //  High when transmission is done          //  High when transmission is done, low when active.  
    );
    // Internal declarations  
    logic [3:0]       stop_count;       // Counter for stop bits.  
    logic [10:0]      frame;            // Frame for transmission.  
    logic [10:0]      frame_r;          // Registered frame for shifting.  
    logic [7:0]       reg_data;         // Holds the data until transmission is done.  
    logic             next_state;       // Holds the FSM's next state.  
    logic [3:0]  total_bits;  // total bits in the frame
    // Encoding the states  
    localparam IDLE   = 1'b0,  
               ACTIVE = 1'b1;  

    // Set the data and hold it in reset and IDLE case  
    always_ff @(negedge next_state) begin  
        if (~next_state)   
            reg_data <= data_i;  
    end  
    
    // Calculate how many bits are in the frame
    always_comb begin
        case (data_bit_num_i)
            2'b00: total_bits = 5;
            2'b01: total_bits = 6;
            2'b10: total_bits = 7;
            default: total_bits = 8;
        endcase
        total_bits = total_bits + 1; // Start bit
        if (parity_en_i) total_bits = total_bits + 1; // Parity bit
        case (stop_bit_num_i)
            2'b00: total_bits = total_bits + 1;   // 1 stop bit
            2'b11: total_bits = total_bits + 2;   // ~1.5 bits, rounded to 2 for simplicity // 2 stop bits
        endcase
    end
    
    // Frame generation combinational logic  
    always_comb begin 
        logic [7:0] masked_data;
        case (data_bit_num_i)
            2'b00: masked_data = reg_data & 8'b0001_1111; // 5 bits
            2'b01: masked_data = reg_data & 8'b0011_1111; // 6 bits
            2'b10: masked_data = reg_data & 8'b0111_1111; // 7 bits
            default: masked_data = reg_data;             // 8 bits
        endcase
        for (int i = 0; i < 8; i++)
            masked_data[i] = reg_data[7 - i];
        if (!parity_en_i) begin  
            // Frame with no parity bit  
            frame = {2'b11, masked_data, 1'b0}; // Start bit + data + stop bit  
        end else begin  
            // Frame with parity bit
            frame = {1'b1, parity_type_i, masked_data, 1'b0}; // Start bit + parity + data + stop bit  
        end  
    end  

    // Transmission logic FSM with Asynchronous Reset logic  
    always_ff @(posedge tick_i or negedge reset_n) begin  
        if (~reset_n) begin  
            next_state       <= IDLE;   
            tx_o          <= 1'b1;  
            active_flag      <= 1'b0;  
            done_flag        <= 1'b1;  
            stop_count       <= 4'd0;  
        end else begin  
            frame_r <= frame; // Load the frame for transmission  
            case (next_state)  
                IDLE: begin  
                    tx_o      <= 1'b1; // Set tx_o to idle state  
                    active_flag  <= 1'b0; // Transmission not active  
                    done_flag    <= 1'b1; // Transmission done  
                    stop_count   <= 4'd0;  

                    if (tx_en_i) begin  
                        next_state <= ACTIVE; // Switch to ACTIVE state  
                    end  
                end  

                ACTIVE: begin  
                    if (stop_count == total_bits) begin  
                        tx_o      <= 1'b1; // Set tx_o to idle state for stop bit  
                        stop_count   <= 4'd0;  
                        active_flag  <= 1'b0; // Transmission not active  
                        done_flag    <= 1'b1; // Transmission done  
                        next_state   <= IDLE; // Go back to IDLE  
                    end else begin  
                        tx_o      <= frame_r[0]; // Transmit the current bit  
                        frame_r      <= frame_r >> 1; // Shift frame right  
                        stop_count   <= stop_count + 1; // Increment stop count 
                        active_flag  <= 1'b1; // Transmission active  
                        done_flag    <= 1'b0; // Not done yet  
                        next_state   <= ACTIVE; // Stay in ACTIVE  
                    end  
                end  

                default: begin  
                    next_state <= IDLE; // Fallback to IDLE  
                end  
            endcase   
        end   
    end
endmodule
