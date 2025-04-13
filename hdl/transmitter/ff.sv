module ff #(parameter BIT_RESET = 1)(
	input clk,    // Clock
	input reset_n,  // Asynchronous reset active low
	input D,
	input RS,
	input S,
	input en,
	output logic Q
);
	always_ff @(posedge clk ) begin 
		if(~reset_n) begin
			 Q<= BIT_RESET;
		end else if(S) begin
			 Q <= 1;
		end else if(RS) begin
			Q <= 0;
		
		end else if(en) begin
			Q <= D;
		end
	end

endmodule