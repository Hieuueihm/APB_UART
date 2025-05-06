module apb_slave (
	input clk,    
	input preset_n,  
	
	input psel,
	input penable,
	input pwrite,
	input[11:0] paddr,
	input[3:0] pstrb,
	input[31:0] pwdata,
	output pready,
	output pslverr,
	output[31:0] prdata,
	output logic [31:0] tdr,
	input logic [31:0] rdr,
	output logic [31:0] lcr,
	output logic [31:0] ocr,
	output logic [31:0] lsr,
	output logic [31:0] fcr,
	output logic [31:0] msr,
	output logic [31:0] mcr,
	output logic [31:0] ier,
	output logic [31:0] iir
);

	logic addr_err;
	
	logic register_access_en;
	apb_controller apb_controller_inst
		(
			.clk        (clk),
			.reset_n    (preset_n),
			.psel_i     (psel),
			.penable_i  (penable),
			.addr_err_i (addr_err),
			.pready_o   (pready),
			.act_en_o   (register_access_en),
			.pslverr_o  (pslverr)
		);
	register_file register_file_inst
		(
			.clk           (clk),
			.reset_n       (preset_n),
			.addr_i        (paddr),
			.wr_rd_i       (pwrite),
			.en_i          (register_access_en),
			.pwdata_i      (pwdata),
			.byte_strobe_i (pstrb),
			.prdata_o      (prdata),
			.tdr_o         (tdr),
			.rdr_o         (rdr),
			.lcr_o         (lcr),
			.ocr_o         (ocr),
			.lsr_o         (lsr),
			.fcr_o         (fcr),
			.msr_o         (msr),
			.mcr_o         (mcr),
			.ier_o         (ier),
			.iir_o         (iir),
			.addr_err_o    (addr_err)
		);


endmodule 