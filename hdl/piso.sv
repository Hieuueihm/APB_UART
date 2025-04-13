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
    input  logic        parity_bit_i,
    input  logic [1:0]  data_bit_num_i,    //  Number of data bits (2b'0: 5, 2'b01: 6, 2'b10: 7, 2'b11: 8)
    input  logic [1:0]  stop_bit_num_i,    //  Number of stop bits (2b'0: 1 bit, 2b'1: 2 bit)
    input  logic [7:0]  data_i,            //  The data input.
    input  logic [3:0]  total_bits,        // 

    output logic        tx_o,              //  Serial transmitter's data out
    output logic        active_flag,       // High when transmission is in progress.
    output logic        done_flag          // High when transmission is complete.  
    );
    
    // FSM state declaration
    typedef enum logic [2:0] {
        IDLE       = 3'b000,
        LOAD       = 3'b001,
        START_BIT  = 3'b010,
        SEND_DATA  = 3'b011,
        PARITY_BIT = 3'b101,
        STOP_BIT   = 3'b110
    }tx_state_t;
     
    // Internal signals
    logic [7:0]       reg_data;                      // Register to hold data during shifting  
    tx_state_t        next_state,current_state;      // FSM state registers        
    logic [7:0]       masked_data;                   // Data after masking according to bit count
    logic [3:0]       bit_cnt;                       // Counts how many bits have been transmitted
    logic [3:0]       bit_send;                      // Number of data bits to send
    
     
    // Mask the input data based on selected data_bit_num_i
    always_comb begin       
        case (data_bit_num_i)
            2'b00: begin masked_data = data_i & 8'b0001_1111; // 5 bits     
                    bit_send = 5;
                   end
            2'b01: begin masked_data = data_i & 8'b0011_1111; // 6 bits
                    bit_send = 6;
                   end
            2'b10: begin  masked_data = data_i & 8'b0111_1111; // 7 bits
                    bit_send = 7;
                   end
            default:begin masked_data = data_i;             // 8 bits
                    bit_send = 8;
                   end
        endcase  
    end  

    
    // FSM Next-state logic
    always_comb begin
    next_state = current_state;
    case (current_state)
      IDLE:        next_state = tx_en_i ? LOAD : IDLE;
      LOAD:        next_state = START_BIT;
      START_BIT:   next_state = SEND_DATA;
      SEND_DATA:   next_state = (bit_cnt ==bit_send+1) ? 
                                (parity_en_i ? PARITY_BIT : STOP_BIT) : SEND_DATA;
      PARITY_BIT:  next_state = STOP_BIT;
      STOP_BIT:    next_state = (bit_cnt==total_bits)? IDLE : STOP_BIT;
      IDLE:        next_state = IDLE;
      default:     next_state = IDLE;
    endcase
  end
    
    // FSM State register (asynchronous reset)
    always_ff @(posedge tick_i or negedge reset_n) begin
        if (!reset_n)
            current_state <= IDLE;
        else
            current_state <= next_state;
    end
    
    // Transmission process logic
    always_ff @(posedge tick_i or negedge reset_n) begin
    if (!reset_n) begin
      reg_data   <= '0;
      bit_cnt     <= 0;
      tx_o  <= 1'b1;                // Idle line state is high
      active_flag  <= 1'b0;  
      done_flag    <= 1'b1;
    end else begin
      case (next_state)
        IDLE: begin
          tx_o <= 1'b1;
          bit_cnt    <= 0;
          active_flag  <= 1'b0;  
          done_flag    <= 1'b1;
        end

        LOAD: begin
          reg_data <= masked_data;
          active_flag  <= 1'b1;         // Load masked input into shift register
          done_flag    <= 1'b0;
        end

        START_BIT: begin
          tx_o <= 1'b0;
          bit_cnt <= bit_cnt +1;            // Send start bit
          active_flag  <= 1'b1;  
          done_flag    <= 1'b0;
        end

        SEND_DATA: begin
          tx_o <= reg_data[7];                  // Send MSB
          reg_data  <= reg_data << 1;           // Shift data left
          bit_cnt    <= bit_cnt + 1;
        end

        PARITY_BIT: begin
          tx_o <= parity_bit_i;                    // Send calculated parity
          bit_cnt    <= bit_cnt + 1;
        end

        STOP_BIT: begin
          tx_o <= 1'b1;                     
          bit_cnt    <= bit_cnt + 1;                // Send stop bit(s)
        end
      endcase
    end
  end
endmodule
