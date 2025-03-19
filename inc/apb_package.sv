package apb_package;

  typedef logic [31:0] apb_data_t;

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

  typedef struct {
    logic [11:0] paddr;
    logic penable;
    apb_data_t pwdata;
    logic pwrite;
    logic [3:0] pstrb;
  } apb_slv_t;

  typedef struct {
    logic pready;
    logic pslverr;
    apb_data_t prdata;
  } apb_mas_t;


endpackage
interface apb_interface;
  import apb_package::*;

  logic pclk;
  logic preset_n;
  logic psel;
  apb_slv_t apb_slv;
  apb_mas_t apb_mas;

  modport slave(input apb_slv, output apb_mas, input pclk, input preset_n, input psel);
endinterface
