module apb (
  input pclk,
  input preset_n,
  input psel,
  input penable,
  input [11:0] paddr,
  input [31:0] pwdata,
  input pwrite,
  input [3:0]  pstrb,
  output logic pready,
  output logic [31:0] prdata,
  output logic pslverr
);
  // Internal signals
  logic is_setup, is_access;
  logic [31:0] reg_prdata;
  logic reg_pslverr;
  logic [31:0] tdr, rdr, lcr, ocr, lsr, fcr, msr, mcr, ier, iir;

  // Instantiate apb_controller
  apb_controller u_controller (
    .clk(pclk),
    .reset_n(preset_n),
    .psel(psel),
    .penable(penable),
    .is_setup(is_setup),
    .is_access(is_access)
  );

  // Instantiate register_file
  register_file u_regfile (
    .pclk(pclk),
    .preset_n(preset_n),
    .write_en(is_setup & psel & pwrite),
    .addr(paddr),
    .pwdata(pwdata),
    .pstrb(pstrb),
    .rdr(rdr),
    .lcr(lcr),
    .tdr(tdr),
    .ocr(ocr),
    .lsr(lsr),
    .fcr(fcr),
    .msr(msr),
    .mcr(mcr),
    .ier(ier),
    .iir(iir),
    .reg_prdata(reg_prdata),
    .reg_pslverr(reg_pslverr)
  );

  // pready
  assign pready = psel & penable;

  always_ff @(posedge pclk or negedge preset_n) begin
    if (~preset_n) begin
      prdata  <= 32'h0;
      pslverr <= 1'b0;
    end else if (is_setup) begin
      prdata  <= pwrite ? 32'h0 : reg_prdata;
      pslverr <= reg_pslverr;
    end else begin
      prdata  <= 32'h0;
      pslverr <= 1'b0;
    end
  end

endmodule