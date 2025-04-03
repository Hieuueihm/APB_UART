module baud_generator #(
    parameter SYSTEM_FREQUENCY = 100000000,
    parameter SAMPLING_RATE = 16
) (
    input clk,
    input reset_n,
    input [2:0] baud_sl,  // input lcr 
    input start,
    output tick,
    output logic ready,
    output logic finish
);

  logic baud;
  `define NUMBER_OF_CLK 11
  logic [ 3:0] clock_left;
  logic [31:0] BIT_PERIOD;

  assign is_clk_left_not_zero = |clock_left;
  assign is_clk_left_zero = ~is_clk_left_not_zero;
  // use LUT 
  always_ff @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
      BIT_PERIOD <= SYSTEM_FREQUENCY / (SAMPLING_RATE * 115200);
    end else begin
      case (baud_sl)
        3'b000:  BIT_PERIOD <= SYSTEM_FREQUENCY / (SAMPLING_RATE * 4800);
        3'b001:  BIT_PERIOD <= SYSTEM_FREQUENCY / (SAMPLING_RATE * 9600);
        3'b010:  BIT_PERIOD <= SYSTEM_FREQUENCY / (SAMPLING_RATE * 14400);
        3'b011:  BIT_PERIOD <= SYSTEM_FREQUENCY / (SAMPLING_RATE * 19200);
        3'b100:  BIT_PERIOD <= SYSTEM_FREQUENCY / (SAMPLING_RATE * 38400);
        3'b101:  BIT_PERIOD <= SYSTEM_FREQUENCY / (SAMPLING_RATE * 57600);
        3'b110:  BIT_PERIOD <= SYSTEM_FREQUENCY / (SAMPLING_RATE * 115200);
        3'b111:  BIT_PERIOD <= SYSTEM_FREQUENCY / (SAMPLING_RATE * 230400);
        default: BIT_PERIOD <= SYSTEM_FREQUENCY / (SAMPLING_RATE * 115200);
      endcase
    end
  end

  typedef enum logic [1:0] {
    IDLE = 2'b00,
    PS = 2'b01,
    GENERATOR = 2'b10,
    FIN = 2'b11
  } state_e;


  state_e current_state, next_state;

  // Next state logic
  always_ff @(posedge clk) begin
    if (~reset_n) begin
      current_state <= IDLE;
    end else begin
      current_state <= next_state;
    end
  end

  always_comb begin
    case (current_state)
      IDLE: begin
        if (start) begin
          next_state = PS;
        end
      end
      PS: begin
        next_state = GENERATOR;
      end
      GENERATOR: begin
        if (is_clk_left_zero) begin
          next_state = FIN;
        end else begin
          next_state = GENERATOR;
        end
      end
      FIN: begin
        next_state = IDLE;
      end
      default: begin
        next_state = IDLE;
      end
    endcase
  end

  logic ready_, finish_;
  always_comb begin
    ready_  = 1'b0;
    finish_ = 1'b0;
    case (current_state)
      PS:  ready_ = 1'b1;
      FIN: finish_ = 1'b1;
    endcase

  end

  always_ff @(posedge clk) begin
    if (~reset_n) begin
      ready  <= 0;
      finish <= 0;
    end else begin
      ready  <= ready_;
      finish <= finish_;
    end
  end





  logic [15:0] counter;
  // clock left logic

  always_ff @(posedge clk) begin : proc_
    if (~reset_n) begin
      clock_left <= 0;
    end else if (ready_) begin
      clock_left <= `NUMBER_OF_CLK;
    end else if (baud == 1'b1) begin
      clock_left <= clock_left - 1;
    end
  end


  always_ff @(posedge clk) begin
    if (~reset_n) begin
      baud <= 0;
      counter <= 0;
    end else if (is_clk_left_not_zero) begin
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

  assign tick = baud;
endmodule
