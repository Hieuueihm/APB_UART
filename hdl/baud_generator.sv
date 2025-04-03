module baud_generator #(
    parameter SYSTEM_FREQUENCY = 100000000,
    parameter SAMPLING_RATE = 16
) (
    input clk,
    input reset_n,
    input [2:0] baud_sl,  // input lcr 
    input start,
    output tick,
    output ready
);

  logic baud;
  `define NUMBER_OF_CLK 11
  logic [ 3:0] clock_left;
  logic [19:0] BAUD_RATE;
  logic [31:0] BIT_PERIOD;

  always_ff @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
      BAUD_RATE  <= 115200;
      BIT_PERIOD <= SYSTEM_FREQUENCY / (SAMPLING_RATE * 115200);
    end else begin
      case (baud_sl)
        3'b000:  BAUD_RATE <= 4800;
        3'b001:  BAUD_RATE <= 9600;
        3'b010:  BAUD_RATE <= 14400;
        3'b011:  BAUD_RATE <= 19200;
        3'b100:  BAUD_RATE <= 38400;
        3'b101:  BAUD_RATE <= 57600;
        3'b110:  BAUD_RATE <= 115200;
        3'b111:  BAUD_RATE <= 230400;
        default: BAUD_RATE <= 115200;
      endcase
      BIT_PERIOD <= SYSTEM_FREQUENCY / (SAMPLING_RATE * BAUD_RATE);
    end
  end
  logic [15:0] counter;
  // clock left logic

  always_ff @(posedge clk) begin : proc_
    if (~reset_n) begin
      clock_left <= 0;
    end else if (start) begin
      clock_left <= `NUMBER_OF_CLK;
    end else if (baud == 1'b1) begin
      clock_left <= clock_left - 1;
    end
  end


  always_ff @(posedge clk) begin
    if (~reset_n) begin
      baud <= 0;
      counter <= 0;
    end else if (|clock_left) begin
      if (counter == BIT_PERIOD) begin
        baud <= 1'b1;
        counter <= 0;
      end else begin
        baud <= 1'b0;
        counter <= counter + 1;
      end
    end else begin
      baud <= 1'b0;
      counter <= 0;
    end
  end

  assign ready = ~|clock_left;
  assign tick  = baud;
endmodule
