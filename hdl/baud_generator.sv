module baud_generator #(
    parameter SYSTEM_FREQUENCY = 100000000, 
    parameter SAMPLING_RATE = 16            
) (
    input clk,
    input reset_n,
    input [2:0] baud_sl_i,         
    output logic tick_tx,        
    output logic tick_rx   
);

    logic [31:0] BIT_PERIOD_TX, BIT_PERIOD_RX;
    logic [31:0] counter_tx, counter_rx;

  
    always_comb begin
        case (baud_sl_i)
        3'b000: begin
            BIT_PERIOD_TX = SYSTEM_FREQUENCY / 4800;
            BIT_PERIOD_RX = SYSTEM_FREQUENCY / (SAMPLING_RATE * 4800);
        end
        3'b001: begin
         BIT_PERIOD_TX = SYSTEM_FREQUENCY / 9600;
         BIT_PERIOD_RX = SYSTEM_FREQUENCY / (SAMPLING_RATE * 9600);
        end
        3'b010: begin
            BIT_PERIOD_TX = SYSTEM_FREQUENCY / 14400;
            BIT_PERIOD_RX = SYSTEM_FREQUENCY / (SAMPLING_RATE * 14400);
        end
        3'b011: begin
            BIT_PERIOD_TX = SYSTEM_FREQUENCY / 19200;
            BIT_PERIOD_RX = SYSTEM_FREQUENCY / (SAMPLING_RATE * 19200);
        end
        3'b100: begin
            BIT_PERIOD_TX = SYSTEM_FREQUENCY / 38400;
            BIT_PERIOD_RX = SYSTEM_FREQUENCY / (SAMPLING_RATE * 38400);
        end
        3'b101: begin
            BIT_PERIOD_TX = SYSTEM_FREQUENCY / 57600;
            BIT_PERIOD_RX = SYSTEM_FREQUENCY / (SAMPLING_RATE * 57600);
        end
        3'b110: begin
            BIT_PERIOD_TX = SYSTEM_FREQUENCY / 115200;
            BIT_PERIOD_RX = SYSTEM_FREQUENCY / (SAMPLING_RATE * 115200);
        end
        3'b111: begin
            BIT_PERIOD_TX = SYSTEM_FREQUENCY / 230400;
            BIT_PERIOD_RX = SYSTEM_FREQUENCY / (SAMPLING_RATE * 230400);
        end
        default: begin
            BIT_PERIOD_TX = SYSTEM_FREQUENCY / 115200;
            BIT_PERIOD_RX = SYSTEM_FREQUENCY / (SAMPLING_RATE * 115200);
        end
        endcase
    end

  // Counter và tick cho TX (1x)
    always_ff @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            counter_tx <= 0;
            tick_tx <= 0;
        end else begin
            if (counter_tx == BIT_PERIOD_TX-1) begin
                counter_tx <= 0;
                tick_tx <= 1;
            end else  begin
                counter_tx <= counter_tx+1; 
                tick_tx <= 0;
            end
        end
    end

  // Counter và tick cho RX (16x)
    always_ff @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            counter_rx <= 0;
            tick_rx <= 0;
        end else begin
        if (counter_rx == BIT_PERIOD_RX-1) begin
            counter_rx <= 0;
            tick_rx <= 1;
        end else 
        counter_rx <= counter_rx +1;
        tick_rx <= 0;
        end
    end

endmodule
