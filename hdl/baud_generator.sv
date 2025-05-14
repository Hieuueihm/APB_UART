import common_pkg::*;

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

    logic [31:0] baud_rate;
    always_comb begin
        baud_rate = get_baud_rate(baud_sl_i);
        BIT_PERIOD_TX = SYSTEM_FREQUENCY / baud_rate;
        BIT_PERIOD_RX = SYSTEM_FREQUENCY / (SAMPLING_RATE * baud_rate);
    end

  // Counter và tick cho TX (1x)
    always_ff @(posedge clk or negedge reset_n) begin
        if (~reset_n) begin
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
        if (~reset_n) begin
            counter_rx <= 0;
            tick_rx <= 0;
        end else begin
        if (counter_rx == BIT_PERIOD_RX-1) begin
            counter_rx <= 0;
            tick_rx <= 1'b1;
        end else begin
            counter_rx <= counter_rx +1;
            tick_rx <= 0;
        end
        end
    end

endmodule
