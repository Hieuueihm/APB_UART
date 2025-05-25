package apb_uart_coverage_pkg;

import uvm_pkg::*;
`include "uvm_macros.svh"
import common_pkg::*;
import apb_agent_pkg::*;
import uart_agent_pkg::*;

class apb_coverage extends uvm_subscriber #(apb_transaction);
  `uvm_component_utils(apb_coverage)

  apb_transaction tr;

  covergroup apb_cg;
    // Coverpoint for reg addr
    cp_paddr: coverpoint tr.paddr {
      bins tdr = {ADDR_TDR};
      bins rdr = {ADDR_RDR};
      bins lcr = {ADDR_LCR};
      bins ocr = {ADDR_OCR};
      bins lsr = {ADDR_LSR};
      bins fcr = {ADDR_FCR};
      bins ier = {ADDR_IER};
      bins iir = {ADDR_IIR};
      bins hcr = {ADDR_HCR};
    }

    // Coverpoint for transaction type
    cp_pwrite: coverpoint tr.pwrite {
      bins write = {1};
      bins read = {0};
    }
    
    // Cross coverage: apb transaction
    cross_apb_transaction: cross cp_paddr, cp_pwrite {
    }
  endgroup

  function new(string name, uvm_component parent);
    super.new(name, parent);
    apb_cg = new();
  endfunction

  function void write(apb_transaction t);
    tr = t;
    `uvm_info("APB_COVERAGE", $sformatf("Received APB transaction: paddr=%h, pwrite=%b", tr.paddr, tr.pwrite), UVM_MEDIUM)
    apb_cg.sample();
  endfunction
endclass

class uart_coverage extends uvm_subscriber #(uart_transaction);
  `uvm_component_utils(uart_coverage)

  uart_transaction tr;

  covergroup uart_cg;

    // Coverpoint for number data bit
    cp_lcr_data_bits: coverpoint tr.lcr[1:0] {
      bins five_bits  = {2'b00};
      bins six_bits   = {2'b01};
      bins seven_bits = {2'b10};
      bins eight_bits = {2'b11};
    }

    // Coverpoint for stop bit
    cp_lcr_stop_bits: coverpoint tr.lcr[2] {
      bins stop1 = {0};
      bins stop2 = {1};
    }

    // Coverpoint for parity
    cp_lcr_parity: coverpoint tr.lcr[5:3] {
      bins no_parity   = {3'b000};
      bins even_parity = {3'b100};
      bins odd_parity  = {3'b110};
    }

    // Cross coverage
    // 1. Cross LCR configuration: all config
    cross_lcr_config: cross cp_lcr_data_bits, cp_lcr_stop_bits, cp_lcr_parity {

    }
  endgroup

  function new(string name, uvm_component parent);
    super.new(name, parent);
    uart_cg = new();
  endfunction

  function void write(uart_transaction t);
    tr = t;
    `uvm_info("UART_COVERAGE", $sformatf("Received UART transaction: data=%h, lcr=%h, pe=%b, fe=%b", tr.data, tr.lcr, tr.pe, tr.fe), UVM_MEDIUM)
    uart_cg.sample();
  endfunction
endclass

endpackage