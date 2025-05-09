module receiver_controller(
		input clk,
		input reset_n,
		input rx_en_i,
		input start_bit_detected_i,
		input clk_1x_i,
		input clk_2x_i,
		input receive_data_fi_i,
		input receive_total_fi_i,
		input parity_en_i,
		input rts_ni,
		output logic receive_en,
		output logic data_o_valid,
		output logic receive_data_en

	);

	typedef enum logic [2:0] {
        IDLE,
        RTS,
        SCAN,
        WAIT_START,
        RECEIVE_DATA,
        RECEIVE_PARITY,
        RECEIVE_STOP,
        FINISH
    } state_t; 
	state_t current_state, next_state;
			// hold state
	always_ff @(posedge clk or negedge reset_n) begin 
		if(~reset_n) begin
				current_state <= IDLE;
		end else begin
				 current_state<= next_state;
			end
		end


// next state logic
	always_comb begin
		case (current_state)
			IDLE:  next_state = (rx_en_i) ? RTS: IDLE;
			RTS: next_state = (~rts_ni) ? SCAN : (~rx_en_i) ? IDLE: RTS; 
			SCAN: next_state = (~rx_en_i)? IDLE : (start_bit_detected_i) ? WAIT_START : SCAN;
			WAIT_START: next_state = (clk_1x_i) ? RECEIVE_DATA: WAIT_START;
			RECEIVE_DATA: next_state = (receive_data_fi_i & parity_en_i) ? RECEIVE_PARITY : (receive_data_fi_i & ~ parity_en_i) ? RECEIVE_STOP : RECEIVE_DATA;  
			RECEIVE_PARITY : next_state = (clk_2x_i) ? RECEIVE_STOP : RECEIVE_PARITY;
			RECEIVE_STOP: next_state = (receive_total_fi_i) ? FINISH: RECEIVE_STOP;
			FINISH: next_state =  IDLE;
		endcase
		
	end
	always_comb begin
		receive_data_en = 1'b0;
		receive_en = 1'b0;
		data_o_valid = 1'b0;
		case (current_state)
			RECEIVE_DATA: begin
				receive_data_en = 1'b1;
				receive_en = 1'b1;
			end
			RECEIVE_PARITY: begin
				receive_en = 1'b1;
			end
			RECEIVE_STOP: begin
				receive_en = 1'b1;
			end
			FINISH:	data_o_valid = 1'b1;
		endcase
	end
endmodule