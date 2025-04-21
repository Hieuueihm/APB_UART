module apb_controller (
	input clk,    // Clock
	input reset_n,
	input psel,
	input penable,
	output logic is_setup,
	output logic is_access


);


  typedef enum logic [1:0] {
    IDLE   = 2'b00,
    SETUP  = 2'b01,
    ACCESS = 2'b10
  } state_e;


  state_e current_state, next_state;

  // Next state logic
  always_ff @(posedge clk or negedge reset_n) begin
    if (~reset_n) begin
      current_state <= IDLE;
    end else begin
      current_state <= next_state;
    end
  end
   always_comb begin
        next_state = IDLE;
    case (current_state)
      IDLE: begin
        if (psel & !penable) begin
          next_state = SETUP;
        end
      end

      SETUP: begin
        if (psel & penable) begin
            next_state = ACCESS;
        end else begin
            next_state = SETUP;
        end
      end

      ACCESS: begin
        if (psel && !penable) begin
            next_state =  SETUP;  
        end else begin
            next_state = IDLE;
        end
      end

      default: next_state = IDLE;
    endcase
  end

  always_comb begin 
  	is_setup = 1'b0;
  	is_access = 1'b0;
  	case (current_state)
  		SETUP: is_setup = 1'b1;
  		ACCESS: is_access = 1'b1;
  		default : begin
  			is_setup = 1'b0;
  			is_access = 1'b0;
  		end
  	endcase
  	
  end

endmodule 