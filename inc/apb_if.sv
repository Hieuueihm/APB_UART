
interface apb_if(input clk,
                 input preset_n);
  logic psel; 
  logic penable;
  logic pwrite;
  logic pready;
  logic pslverr;
  logic[11:0] paddr;
  logic [3:0] pstrb;
  logic[31:0] prdata;
  logic[31:0] pwdata;


  property psel_valid;
    @(posedge clk)
    !$isunknown(psel);
  endproperty: psel_valid

  CHK_PSEL: assert property(psel_valid);

  COVER_PSEL: cover property(psel_valid);

endinterface: apb_if