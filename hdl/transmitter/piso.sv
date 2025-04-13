module piso (
	input clk,    // Clock
	input reset_n,  // Asynchronous reset active low
	input load_data_i,
	input load_d0_i,
	input load_d1_i,
	input load_d2_i,
	input [7:0] data_i,
	input parity_i,
	input [1:0] stop_bit_i,
	input shift_en_i,
	output tx_o
	
);	
	wire Q7, Q6, Q5, Q4, Q3, Q2, Q1, Q0;
	wire [7:0] data_transfer = {Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7};
	ff #(.BIT_RESET(1)) ff_inst_tx (.clk(clk), .reset_n(reset_n),.D(Q0),.S(0) ,.RS(0), .en(shift_en_i), .Q(tx_o));
	ff #(.BIT_RESET(1)) ff_inst_0 (.clk(clk), .reset_n(reset_n), .D(Q1),.S(load_d2_i) ,.RS((~data_i[0] & load_data_i) | load_d0_i | ((~parity_i & load_d1_i))), .en(shift_en_i), .Q(Q0));
	ff #(.BIT_RESET(1)) ff_inst_1 (.clk(clk), .reset_n(reset_n), .D(Q2),.S(0) ,.RS((~data_i[1] & load_data_i)), .en(shift_en_i), .Q(Q1));
	ff #(.BIT_RESET(1)) ff_inst_2 (.clk(clk), .reset_n(reset_n), .D(Q3),.S(0) ,.RS((~data_i[2] & load_data_i )) , .en(shift_en_i), .Q(Q2));
	ff #(.BIT_RESET(1)) ff_inst_3 (.clk(clk), .reset_n(reset_n), .D(Q4),.S(0) ,.RS(~data_i[3] & load_data_i), .en(shift_en_i), .Q(Q3));
	ff #(.BIT_RESET(1)) ff_inst_4 (.clk(clk), .reset_n(reset_n), .D(Q5),.S(0) ,.RS(~data_i[4] & load_data_i), .en(shift_en_i), .Q(Q4));
	ff #(.BIT_RESET(1)) ff_inst_5 (.clk(clk), .reset_n(reset_n), .D(Q6),.S(0) ,.RS(~data_i[5] & load_data_i), .en(shift_en_i), .Q(Q5));
	ff #(.BIT_RESET(1)) ff_inst_6 (.clk(clk), .reset_n(reset_n), .D(Q7),.S(0) ,.RS(~data_i[6] & load_data_i), .en(shift_en_i), .Q(Q6));
	ff #(.BIT_RESET(1)) ff_inst_7 (.clk(clk), .reset_n(reset_n), .D(1), .S(0) ,.RS(~data_i[7] & load_data_i), .en(shift_en_i), .Q(Q7));

endmodule 