module uart_receiver(
		input clk,
		input reset_n,
		input rx_en_i,
		input tick_i,
	    input parity_type_i,
	    input parity_en_i,
    	input tx_i,
   		input stop_bit_num_i,
    	input [1:0] data_bit_num_i,
    	output [7:0] data_o,
    	input rts_ni,
    	output logic data_o_valid,
    	output logic parity_err_o,
    	output logic stop_bit_err_o
    	);
	// sync tx with rx
	wire tx_sync;
	synchronizer sync(
		.clk(clk),
		.reset_n(reset_n),
		.async(tx_i),
		.sync(tx_sync)
		);

	// detect start bit
	logic d1;
	always_ff @(posedge clk or negedge reset_n) begin 
		if(~reset_n) begin
			d1 <= 0;
		end else begin
			d1 <= tx_sync;
		end
	end
  	logic [3:0] data_size;
    logic [1:0] stop_bit_size;
    logic [3:0] total_data_size;
    logic [7:0] data;
    assign data_o = data;
    wire [7:0] data_receive;
    wire receive_en;
    		wire receive_data_en;
	logic [3:0] count_data;
		assign receive_data_fi = count_data == data_size;
      assign stop_bit_size = (stop_bit_num_i) ? 2: 1;
      	assign receive_total_fi_i = count_data == total_data_size - 1;
	assign start_bit_detected = (d1 & ~tx_sync);
	// assign test =~(((^data) ^ parity_bit)^parity_type_i);
	assign parity_check = count_data == data_size & data_receive_en;
	assign parity_bit = (parity_check) ? tx_sync : 0; 

	assign parity_err_o = (~parity_en_i) ? 0 : 
                      (parity_check? ~(((^data) ^ parity_bit)^parity_type_i) : 0);
  	
  	assign stop_bit_1_check = (count_data == data_size + parity_en_i + 1) && data_receive_en; 
  	assign stop_bit_2_check = (count_data == data_size + parity_en_i + 2) && data_receive_en;
  	assign stop_bit_err_o = (stop_bit_1_check & (tx_sync != 1'b1)) |
                      ((stop_bit_size == 2) & stop_bit_2_check & (tx_sync != 1'b1));

	assign clk_1x = clk_div == 4'b1111 & tick_i;
	assign clk_2x = clk_div == 4'b0111 & tick_i;

	assign data_receive_en = clk_1x  & receive_en;
	assign shift_receive_en = clk_1x & receive_data_en;

      always_comb begin
        case (data_bit_num_i)
            2'b00: begin
                data_size = 4'd5;
                data = 00011111 & data_receive;
            end
            2'b01: begin
                data_size = 4'd6;
                data = 00111111 & data_receive;
            end
            2'b10: begin
                data_size = 4'd7;
                data = 01111111 & data_receive;
            end
            2'b11: begin
                data_size = 4'd8;
                data = data_receive;
            end
        endcase
        total_data_size = data_size + parity_en_i + stop_bit_size;
    end

	// counter



	always_ff @(posedge clk or negedge reset_n) begin
		if(~reset_n) begin
			 count_data <= 0;
		end else if(data_receive_en) begin
			 count_data <= count_data + 1;
		end else if(receive_total_fi_i) begin
				count_data <= 0;
			end
	end


	logic [3:0] clk_div;
	always_ff @(posedge clk or negedge reset_n) begin 
		if(~reset_n) begin
			clk_div <= 0;
		end else if(tick_i) begin
			clk_div <= clk_div + 1;
		end
	end




	// hold data
		shift_register shift_register_inst
		(
			.clk        (clk),
			.reset_n    (reset_n),
			.shift_en_i (shift_receive_en),
			.data_i     (tx_sync),
			.data_o     (data_receive)
		);

	// hold parity

	// hold stop bit

	receiver_controller receiver_controller_inst
		(
			.clk                  (clk),
			.reset_n              (reset_n),
			.rx_en_i              (rx_en_i),
			.rts_ni              (rts_ni),
			.start_bit_detected_i (start_bit_detected),
			.clk_1x_i             (clk_1x),
			.clk_2x_i             (clk_2x),
			.receive_data_fi_i    (receive_data_fi),
			.receive_total_fi_i   (receive_total_fi_i),
			.parity_en_i          (parity_en_i),
			.receive_data_en      (receive_data_en),
			.data_o_valid         (data_o_valid),
			.receive_en (receive_en)
		);



endmodule