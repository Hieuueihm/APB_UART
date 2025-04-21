module register_file (
  input pclk,
  input preset_n,
  input write_en,
  input [11:0] addr,
  input [31:0] pwdata,
  input [3:0]  pstrb,
  output logic [31:0] rdr,
  output logic [31:0] lcr,
  output logic [31:0] tdr,
  output logic [31:0] ocr,
  output logic [31:0] lsr,
  output logic [31:0] fcr,
  output logic [31:0] msr,
  output logic [31:0] mcr,
  output logic [31:0] ier,
  output logic [31:0] iir,
  output logic [31:0] reg_prdata,
  output logic reg_pslverr
);

  typedef logic [31:0] apb_data_t;

  localparam [11:0] ADDR_TDR = 12'h000;
  localparam [11:0] ADDR_RDR = 12'h004;
  localparam [11:0] ADDR_LCR = 12'h008;
  localparam [11:0] ADDR_OCR = 12'h00C;
  localparam [11:0] ADDR_LSR = 12'h010;
  localparam [11:0] ADDR_FCR = 12'h014;
  localparam [11:0] ADDR_MSR = 12'h018;
  localparam [11:0] ADDR_MCR = 12'h01C;
  localparam [11:0] ADDR_IER = 12'h020;
  localparam [11:0] ADDR_IIR = 12'h024;

 
  always_ff @(posedge pclk or negedge preset_n) begin
    if (~preset_n) begin
      tdr <= 32'h0;
      rdr <= 32'h0;
      lcr <= 32'h0;
      ocr <= 32'h0;
      fcr <= 32'h0;
      mcr <= 32'h0;
      ier <= 32'h0;
      iir <= 32'h0;
      msr <= 32'h0;
      lsr <= 32'h0;
    end else if (write_en) begin
      case (addr)
        ADDR_TDR: begin
          if (pstrb[3]) tdr[31:24] <= pwdata[31:24];
          if (pstrb[2]) tdr[23:16] <= pwdata[23:16];
          if (pstrb[1]) tdr[15:8] <= pwdata[15:8];
          if (pstrb[0]) tdr[7:0]  <= pwdata[7:0];
        end
        ADDR_LCR: begin
          if (pstrb[3]) lcr[31:24] <= pwdata[31:24];
          if (pstrb[2]) lcr[23:16] <= pwdata[23:16];
          if (pstrb[1]) lcr[15:8] <= pwdata[15:8];
          if (pstrb[0]) lcr[7:0] <= pwdata[7:0];
        end
        ADDR_OCR: begin
          if (pstrb[3]) ocr[31:24] <= pwdata[31:24];
          if (pstrb[2]) ocr[23:16] <= pwdata[23:16];
          if (pstrb[1]) ocr[15:8] <= pwdata[15:8];
          if (pstrb[0]) ocr[7:0] <= pwdata[7:0];
        end
        ADDR_FCR: begin
          if (pstrb[3]) fcr[31:24] <= pwdata[31:24];
          if (pstrb[2]) fcr[23:16] <= pwdata[23:16];
          if (pstrb[1]) fcr[15:8] <= pwdata[15:8];
          if (pstrb[0]) fcr[7:0] <= pwdata[7:0];
        end
        ADDR_MCR: begin
          if (pstrb[3]) mcr[31:24] <= pwdata[31:24];
          if (pstrb[2]) mcr[23:16] <= pwdata[23:16];
          if (pstrb[1]) mcr[15:8] <= pwdata[15:8];
          if (pstrb[0]) mcr[7:0] <= pwdata[7:0];
        end
        ADDR_IER: begin
          if (pstrb[3]) ier[31:24] <= pwdata[31:24];
          if (pstrb[2]) ier[23:16] <= pwdata[23:16];
          if (pstrb[1]) ier[15:8] <= pwdata[15:8];
          if (pstrb[0]) ier[7:0] <= pwdata[7:0];
        end
        ADDR_IIR: begin
          if (pstrb[3]) iir[31:24] <= pwdata[31:24];
          if (pstrb[2]) iir[23:16] <= pwdata[23:16];
          if (pstrb[1]) iir[15:8] <= pwdata[15:8];
          if (pstrb[0]) iir[7:0] <= pwdata[7:0];
        end
        default: ;
      endcase
    end
  end

  
  always_comb begin
    reg_prdata  = 32'h0;
    reg_pslverr = 1'b0;
    case (addr)
      ADDR_TDR: reg_prdata = tdr;
      ADDR_RDR: reg_prdata = rdr;
      ADDR_LCR: reg_prdata = lcr;
      ADDR_OCR: reg_prdata = ocr;
      ADDR_LSR: reg_prdata = lsr;
      ADDR_FCR: reg_prdata = fcr;
      ADDR_MSR: reg_prdata = msr;
      ADDR_MCR: reg_prdata = mcr;
      ADDR_IER: reg_prdata = ier;
      ADDR_IIR: reg_prdata = iir;
      default: begin
        reg_prdata  = 32'h0;
        reg_pslverr = 1'b1;
      end
    endcase
  end

endmodule