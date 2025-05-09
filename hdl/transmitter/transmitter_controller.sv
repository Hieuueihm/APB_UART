// define the control signals

module transmitter_controller (
	input clk,    // Clock
	input reset_n,  // Asynchronous reset active low
	input tx_en_i,
	input start_tx_i,
	input trans_data_fi_i,
	input trans_stop_fi_i,
	input tick_d_i,
	input parity_en_i,
	input cts_ni,
	output logic trans_en_o,
	output logic tx_finish_o
	
);
	
	typedef enum logic [2:0] {
        IDLE,
        CTS,
        WAIT,
        TRANS_START,
        TRANS_DATA,
        TRANS_PARITY,
        TRANS_STOP,
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
	logic start_tx_d;
	always_ff @(posedge clk or negedge reset_n) begin 
		if(~reset_n) begin
			 start_tx_d<= 0;
		end else begin
			start_tx_d<= start_tx_i;
		end
	end
	assign negedge_start = start_tx_d & ~start_tx_i; 
	logic start_en_d, start_en_d1;
	always_ff @(posedge clk or negedge reset_n) begin : proc_
		if(~reset_n) begin
			start_en_d <= 0;
			start_en_d1 <= 0;
		end else begin
			start_en_d <= negedge_start;
			start_en_d1 <= start_en_d;
		end
	end
	// next state logic
	always_comb begin
		case (current_state)
			IDLE:  next_state = (tx_en_i) ? CTS: IDLE;
			CTS: next_state = (~cts_ni) ? WAIT : (~tx_en_i) ? IDLE: CTS;
			WAIT: next_state = (~tx_en_i)? IDLE : (start_en_d1) ? TRANS_START : WAIT;
			TRANS_START: next_state =  (tick_d_i) ? TRANS_DATA: TRANS_START;
			TRANS_DATA: next_state = (trans_data_fi_i & parity_en_i) ? TRANS_PARITY : (trans_data_fi_i & ~parity_en_i) ? TRANS_STOP : TRANS_DATA;
			TRANS_PARITY: next_state = (tick_d_i) ? TRANS_STOP : TRANS_PARITY;
			TRANS_STOP: next_state = (trans_stop_fi_i) ? FINISH : TRANS_STOP;
			FINISH:	next_state = IDLE;
			default: next_state = IDLE; 
		endcase
		
	end
	always_comb begin
		trans_en_o = 1'b0;
		tx_finish_o = 1'b0;
		case (current_state)
			TRANS_START: begin
				trans_en_o = 1'b1;
			end
			TRANS_DATA: begin
				trans_en_o = 1'b1;
			end
			TRANS_PARITY: begin
				trans_en_o = 1'b1;
			end
			TRANS_STOP: begin
				trans_en_o = 1'b1;
			end
			FINISH:	tx_finish_o = 1'b1;
		endcase
	end


endmodule 	