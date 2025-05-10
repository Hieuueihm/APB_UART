package common_def;
  typedef enum logic [11:0] {
    ADDR_TDR = 12'h000,
    ADDR_RDR = 12'h004,
    ADDR_LCR = 12'h008,
    ADDR_OCR = 12'h00C,
    ADDR_LSR = 12'h010,
    ADDR_FCR = 12'h014,
    ADDR_IER = 12'h018,
    ADDR_IIR = 12'h01C,
    ADDR_HCR = 12'h020
  } apb_addr_e;
    `define SET_BIT_REGISTER(register ,cond, bit_set) if (cond) register <= bit_set;
    `define SET 1
    `define RST 0
  
endpackage