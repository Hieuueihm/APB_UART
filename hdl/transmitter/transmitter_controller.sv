// define the control signals

module transmitter_controller (
	input clk,    // Clock
	input reset_n,  // Asynchronous reset active low
	input tx_en_i,
	input start_tx_i,
	input parity_en_i,
	input trans_data_fi_i,
	input trans_parity_fi_i,
	input trans_stop_fi_i,
	input trans_start_fi_i,
	input tick_i,
	output logic load_data,
	output logic load_d1,
	output logic load_d2,
	output logic load_d0,
	output logic shift_en,
	output logic trans_fi,
	output logic trans_process
	
);
	
	typedef enum logic [3:0] {
        IDLE,
        WAIT,
        LOAD_START,
        TRANS_START,
        LOAD_DATA,
        TRANS_DATA,
        LOAD_PARITY,
        TRANS_PARITY,
        LOAD_STOP,
        TRANS_STOP,
        FINISH
    } state_t; 
	state_t current_state, next_state;

		// hold state
	always_ff @(posedge clk) begin 
		if(~reset_n) begin
				current_state <= IDLE;
		end else begin
				 current_state<= next_state;
			end
		end

	// next state logic
	always_comb begin
		case (current_state)
			IDLE: begin
				if(tx_en_i) begin
					next_state = WAIT;
				end else begin
					next_state = IDLE;
				end
			end

			WAIT: begin
				if(start_tx_i) begin
					next_state = LOAD_START;
				end else if(~tx_en_i) begin
					next_state = IDLE;
				end
			end
			LOAD_START: begin
				next_state = TRANS_START;
			end
			TRANS_START: begin
				if(trans_start_fi_i) begin
					next_state = LOAD_DATA;
				end
			end
			LOAD_DATA: begin
				next_state = TRANS_DATA;
			end

			TRANS_DATA: begin
				if(trans_data_fi_i & parity_en_i) begin
					next_state = LOAD_PARITY;
				end else if(trans_data_fi_i ) begin
					next_state = LOAD_STOP;
				end
			end

			LOAD_PARITY: begin
				next_state = TRANS_PARITY;
				
			end
			TRANS_PARITY: begin
				if(trans_parity_fi_i) begin
					next_state = LOAD_STOP;
				end 
			end

			LOAD_STOP: begin
				next_state = TRANS_STOP;
			end
			TRANS_STOP: begin
				if(trans_stop_fi_i) begin
					next_state = FINISH;
				end
			end
			FINISH: begin
				next_state = IDLE;
			end
			default : next_state = IDLE;
		endcase
		
	end
	// output logic

	always_comb begin
		load_data = 1'b0;
		load_d1 = 0;
		load_d2 = 0;
	   shift_en = 0;
	   load_d0 = 0;
	   trans_fi = 0;
		case (current_state)
			LOAD_START: begin
				load_d0 = 1'b1;
				trans_process = 1'b1;
			end
		TRANS_START: shift_en = tick_i;
			LOAD_DATA: load_data = 1'b1;
			TRANS_DATA: shift_en = tick_i;
			LOAD_PARITY: begin
				load_d1 = 1'b1;
			end
			TRANS_PARITY: shift_en = tick_i;
			LOAD_STOP: begin
				load_d2 = 1'b1;
			end
			FINISH: begin
				trans_process = 1'b0;
				trans_fi = 1'b1;
			end
			TRANS_STOP: shift_en = tick_i;
		
			default : begin
				trans_process = 1'b0;
				load_data = 0;
				load_d1 = 0;
				load_d2 = 0;
				shift_en = 0;
			end
		endcase
	end


endmodule 	