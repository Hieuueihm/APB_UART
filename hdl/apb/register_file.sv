module register_file (
	input        clk,           // Clock
	input        reset_n,
	input [11:0] addr_i,
	input        wr_rd_i,
	input        en_i,
	input [31:0] pwdata_i,
	input [3:0]  byte_strobe_i,
	output logic [31:0] prdata_o,
	output logic [31:0] tdr_o,
	output logic [31:0] rdr_o,
	output logic [31:0] lcr_o,
	output logic [31:0] ocr_o,
	output logic [31:0] lsr_o,
	output logic [31:0] fcr_o,
	output logic [31:0] msr_o,
	output logic [31:0] mcr_o,
	output logic [31:0] ier_o,
	output logic [31:0] iir_o,
	output logic        addr_err_o
);

  typedef enum logic [11:0] {
    ADDR_TDR = 12'h000,
    ADDR_RDR = 12'h004,
    ADDR_LCR = 12'h008,
    ADDR_OCR = 12'h00C,
    ADDR_LSR = 12'h010,
    ADDR_FCR = 12'h014,
    ADDR_MSR = 12'h018,
    ADDR_MCR = 12'h01C,
    ADDR_IER = 12'h020,
    ADDR_IIR = 12'h024
  } apb_addr_e;




  always_ff @(posedge clk or negedge reset_n) begin
    if (~reset_n) begin
      tdr_o       <= 32'b0;
      rdr_o       <= 32'b0;
      lcr_o       <= 32'b0;
      ocr_o       <= 32'b0;
      lsr_o       <= 32'b0;
      fcr_o       <= 32'b0;
      msr_o       <= 32'b0;
      mcr_o       <= 32'b0;
      ier_o       <= 32'b0;
      iir_o       <= 32'b0;
      prdata_o    <= 32'b0;
      addr_err_o  <= 1'b0;
    end else begin
      addr_err_o <= 1'b0;

      if (en_i && wr_rd_i) begin  // Write
  unique case (addr_i)
    ADDR_TDR: begin
      if (byte_strobe_i[0]) tdr_o[7:0]    <= pwdata_i[7:0];
      if (byte_strobe_i[1]) tdr_o[15:8]   <= pwdata_i[15:8];
      if (byte_strobe_i[2]) tdr_o[23:16]  <= pwdata_i[23:16];
      if (byte_strobe_i[3]) tdr_o[31:24]  <= pwdata_i[31:24];
    end

    ADDR_RDR: begin
      if (byte_strobe_i[0]) rdr_o[7:0]    <= pwdata_i[7:0];
      if (byte_strobe_i[1]) rdr_o[15:8]   <= pwdata_i[15:8];
      if (byte_strobe_i[2]) rdr_o[23:16]  <= pwdata_i[23:16];
      if (byte_strobe_i[3]) rdr_o[31:24]  <= pwdata_i[31:24];
    end

    ADDR_LCR: begin
      if (byte_strobe_i[0]) lcr_o[7:0]    <= pwdata_i[7:0];
      if (byte_strobe_i[1]) lcr_o[15:8]   <= pwdata_i[15:8];
      if (byte_strobe_i[2]) lcr_o[23:16]  <= pwdata_i[23:16];
      if (byte_strobe_i[3]) lcr_o[31:24]  <= pwdata_i[31:24];
    end

    ADDR_OCR: begin
      if (byte_strobe_i[0]) ocr_o[7:0]    <= pwdata_i[7:0];
      if (byte_strobe_i[1]) ocr_o[15:8]   <= pwdata_i[15:8];
      if (byte_strobe_i[2]) ocr_o[23:16]  <= pwdata_i[23:16];
      if (byte_strobe_i[3]) ocr_o[31:24]  <= pwdata_i[31:24];
    end

    ADDR_LSR: begin
      if (byte_strobe_i[0]) lsr_o[7:0]    <= pwdata_i[7:0];
      if (byte_strobe_i[1]) lsr_o[15:8]   <= pwdata_i[15:8];
      if (byte_strobe_i[2]) lsr_o[23:16]  <= pwdata_i[23:16];
      if (byte_strobe_i[3]) lsr_o[31:24]  <= pwdata_i[31:24];
    end

    ADDR_FCR: begin
      if (byte_strobe_i[0]) fcr_o[7:0]    <= pwdata_i[7:0];
      if (byte_strobe_i[1]) fcr_o[15:8]   <= pwdata_i[15:8];
      if (byte_strobe_i[2]) fcr_o[23:16]  <= pwdata_i[23:16];
      if (byte_strobe_i[3]) fcr_o[31:24]  <= pwdata_i[31:24];
    end

    ADDR_MSR: begin
      if (byte_strobe_i[0]) msr_o[7:0]    <= pwdata_i[7:0];
      if (byte_strobe_i[1]) msr_o[15:8]   <= pwdata_i[15:8];
      if (byte_strobe_i[2]) msr_o[23:16]  <= pwdata_i[23:16];
      if (byte_strobe_i[3]) msr_o[31:24]  <= pwdata_i[31:24];
    end

    ADDR_MCR: begin
      if (byte_strobe_i[0]) mcr_o[7:0]    <= pwdata_i[7:0];
      if (byte_strobe_i[1]) mcr_o[15:8]   <= pwdata_i[15:8];
      if (byte_strobe_i[2]) mcr_o[23:16]  <= pwdata_i[23:16];
      if (byte_strobe_i[3]) mcr_o[31:24]  <= pwdata_i[31:24];
    end

    ADDR_IER: begin
      if (byte_strobe_i[0]) ier_o[7:0]    <= pwdata_i[7:0];
      if (byte_strobe_i[1]) ier_o[15:8]   <= pwdata_i[15:8];
      if (byte_strobe_i[2]) ier_o[23:16]  <= pwdata_i[23:16];
      if (byte_strobe_i[3]) ier_o[31:24]  <= pwdata_i[31:24];
    end

    ADDR_IIR: begin
      if (byte_strobe_i[0]) iir_o[7:0]    <= pwdata_i[7:0];
      if (byte_strobe_i[1]) iir_o[15:8]   <= pwdata_i[15:8];
      if (byte_strobe_i[2]) iir_o[23:16]  <= pwdata_i[23:16];
      if (byte_strobe_i[3]) iir_o[31:24]  <= pwdata_i[31:24];
    end

    default: addr_err_o <= 1'b1;

  endcase
end else if (en_i && !wr_rd_i) begin  // Read
        unique case (addr_i)
          ADDR_TDR: prdata_o <= tdr_o;
          ADDR_RDR: prdata_o <= rdr_o;
          ADDR_LCR: prdata_o <= lcr_o;
          ADDR_OCR: prdata_o <= ocr_o;
          ADDR_LSR: prdata_o <= lsr_o;
          ADDR_FCR: prdata_o <= fcr_o;
          ADDR_MSR: prdata_o <= msr_o;
          ADDR_MCR: prdata_o <= mcr_o;
          ADDR_IER: prdata_o <= ier_o;
          ADDR_IIR: prdata_o <= iir_o;
          default: begin
            prdata_o   <= 32'b0;
            addr_err_o <= 1'b1;
          end
        endcase
      end else begin
        prdata_o <= 32'b0;
      end
    end
  end

endmodule
