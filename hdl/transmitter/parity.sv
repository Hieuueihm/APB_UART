module parity (
	input parity_type_i,
	input [7:0] data_i,
	output parity_bit_o
	
);
logic parity_calculated;
logic parity_values;
	 always_comb begin
        parity_calculated = ^data_i;
        parity_values = (parity_type_i == 1) ? parity_calculated : ~parity_calculated;
    end
    assign parity_bit_o = parity_values;

endmodule : parity