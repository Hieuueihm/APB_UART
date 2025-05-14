
package uart_env_pkg;

import uvm_pkg::*;
`include "uvm_macros.svh"
import common_def::*;

import apb_agent_pkg::*;
import uart_agent_pkg::*;
import uart_reg_pkg::*;

// env: agent, scoreboard, 

class uart_env_cfg extends uvm_object;

  `uvm_object_utils(uart_env_cfg);

  apb_agent_cfg m_apb_agent_cfg;
  uart_agent_cfg m_tx_uart_agent_cfg;
  uart_agent_cfg m_rx_uart_agent_cfg;

  uart_reg_block rm;

  virtual interrupt_if IRQ; // IRQ interface

  function new(string name = "uart_env_cfg");
    super.new(name);
  endfunction

  task wait_for_interrupt();
      @(posedge IRQ.irq);
  endtask

 

  task wait_for_clock(int n = 1);
    repeat(n)
      @(posedge IRQ.clk);
  endtask

  task wait_for_baud_rate();
    @(posedge IRQ.baud_out);
  endtask
endclass




  class lcr_item extends uvm_object;

  `uvm_object_utils(lcr_item)
    
    bit[7:0] lcr;

  function new(string name = "lcr_item");
    super.new(name);
  endfunction

  endclass

  class uart_tx_scoreboard extends uvm_component;

  `uvm_component_utils(uart_tx_scoreboard)

  uvm_tlm_analysis_fifo #(apb_sequence_item) apb_fifo;
  uvm_tlm_analysis_fifo #(apb_sequence_item) uart_fifo;
  uvm_analysis_port #(lcr_item) ap;

  uart_reg_block rm;

  int no_chars_written;
  int no_chars_tx;
  int no_data_errors;
  int no_errors;

  bit[7:0] data_q[$];

  function new(string name = "uart_tx_scoreboard", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    apb_fifo = new("apb_fifo", this);
    uart_fifo = new("uart_fifo", this);
    ap = new("ap", this);
  endfunction


  task run_phase(uvm_phase phase);
    no_chars_written = 0;
    no_chars_tx = 0;
    no_data_errors = 0;
    no_errors = 0;

    fork
      monitor_apb;
      monitor_uart;
    join

  endtask
  task monitor_apb;
    apb_sequence_item host_req;
    forever begin
      apb_fifo.get(host_req);
      if((host_req.paddr == 0) && (host_req.pwrite == 1)) begin
        data_q.push_back(host_req.pdata);
        no_chars_written++;
      end
    end
  endtask
task monitor_uart;
  uart_sequence_item uart_item;
  bit[7:0] data;
  uvm_reg_data_t WL;
  lcr_item report_item;

  forever begin
    uart_fifo.get(uart_item);
    no_chars_tx++;
    WL = rm.LCR.get();
    if(uart_item.pe || uart_item.fe) begin
      `uvm_error("monitor_uart", $sformatf("TX Data error detected: PE:%0b FE:%0b LCR:%0h", uart_item.pe, uart_item.fe, WL[7:0]))
      no_errors++;
    end
    if(data_q.size() > 0) begin
      data = data_q.pop_front();
    end
    case(WL[1:0])
      2'b00: begin
               if(data[4:0] != uart_item.data[4:0]) begin
                 no_data_errors++;
                 `uvm_error("monitor_uart", $sformatf("Error in observed UART TX data expected:%0h actual:%0h LCR:%0h", data[4:0], uart_item.data[4:0], WL[7:0]))
               end
             end
      2'b01: begin
               if(data[5:0] != uart_item.data[5:0]) begin
                 no_data_errors++;
                 `uvm_error("monitor_uart", $sformatf("Error in observed UART TX data expected:%0h actual:%0h LCR:%0h", data[5:0], uart_item.data[5:0], WL[7:0]))
               end
             end
      2'b10: begin
               if(data[6:0] != uart_item.data[6:0]) begin
                 no_data_errors++;
                 `uvm_error("monitor_uart", $sformatf("Error in observed UART TX data expected:%0h actual:%0h LCR:%0h", data[6:0], uart_item.data[6:0], WL[7:0]))
               end
             end
      2'b11: begin
               if(data[7:0] != uart_item.data[7:0]) begin
                 no_data_errors++;
                 `uvm_error("monitor_uart", $sformatf("Error in observed UART TX data expected:%0h actual:%0h LCR:%0h", data[7:0], uart_item.data[7:0], WL[7:0]))
               end
             end
    endcase
    report_item = lcr_item::type_id::create("lcr_item");
    report_item.lcr = WL[7:0];
    ap.write(report_item);
  end

  endtask
  function void report_phase(uvm_phase phase);

    if((no_errors == 0) && (no_data_errors == 0)) begin
      `uvm_info("report_phase", $sformatf("%0d characters transmitted from the UART with no errors", no_chars_written), UVM_LOW)
    end
    if(no_errors != 0) begin
      `uvm_error("report_phase", $sformatf("%0d characters transmitted with errors from %0d transmitted overall", no_errors, no_chars_written))
    end
    if(no_data_errors != 0) begin
      `uvm_error("report_phase", $sformatf("%0d characters transmitted with data_errors from %0d transmitted overall", no_data_errors, no_chars_written))
    end

  endfunction
endclass












class uart_rx_scoreboard extends uvm_component;

  `uvm_component_utils(uart_rx_scoreboard)

  uvm_tlm_analysis_fifo #(apb_sequence_item) apb_fifo;
  uvm_tlm_analysis_fifo #(apb_sequence_item) uart_fifo;
  uvm_analysis_port #(lcr_item) ap;

  uart_reg_block rm;

  int no_chars_written;
  int no_data_errors;
  int no_errors;
  int no_reported_errors;

  bit pe;
  bit fe;
  bit oe;

  bit[9:0] data_q[$];

  function new(string name = "uart_rx_scoreboard", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    apb_fifo = new("apb_fifo", this);
    uart_fifo = new("uart_fifo", this);
    ap = new("ap", this);
  endfunction

  task run_phase(uvm_phase phase);
    no_chars_written = 0;
    no_data_errors = 0;
    no_errors = 0;
    no_reported_errors = 0;

    fork
      monitor_apb;
      monitor_uart;
    join

  endtask
  task monitor_apb;
    apb_sequence_item host_req;
    bit[9:0] data;
    uvm_reg_data_t WL;
    lcr_item lcr = lcr_item::type_id::create("lcr");

    forever begin
      apb_fifo.get(host_req);
      if((host_req.paddr == ADDR_RDR) && (host_req.pwrite == 0)) begin
        WL = rm.LCR.get();
        if(data_q.size() > 0) begin
          data = data_q.pop_front();
          pe = data[9];
          fe = data[8];
        end
        if(data[9:8] != 0) begin
          `uvm_info("monitor_uart", $sformatf("RX Data error detected: PE:%0b FE:%0b LCR:%0h", data[9], data[8], WL[7:0]), UVM_LOW)
          no_errors++;
        end
        case(WL[1:0])
          2'b00: begin
                   if(data[4:0] != host_req.pdata[4:0]) begin
                     no_data_errors++;
                     `uvm_error("monitor_uart", $sformatf("Error in observed UART RX data expected:%0h actual:%0h LCR:%0h", data[4:0], host_req.pdata[4:0], WL[7:0]))
                   end
                 end
          2'b01: begin
                   if(data[5:0] != host_req.pdata[5:0]) begin
                     no_data_errors++;
                     `uvm_error("monitor_uart", $sformatf("Error in observed UART RX data expected:%0h actual:%0h LCR:%0h", data[5:0], host_req.pdata[5:0], WL[7:0]))
                   end
                 end
          2'b10: begin
                   if(data[6:0] != host_req.pdata[6:0]) begin
                     no_data_errors++;
                     `uvm_error("monitor_uart", $sformatf("Error in observed UART RX data expected:%0h actual:%0h LCR:%0h", data[6:0], host_req.pdata[6:0], WL[7:0]))
                   end
                 end
          2'b11: begin
                   if(data[7:0] != host_req.pdata[7:0]) begin
                     no_data_errors++;
                     `uvm_error("monitor_uart", $sformatf("Error in observed UART RX data expected:%0h actual:%0h LCR:%0h", data[7:0], host_req.pdata[7:0], WL[7:0]))
                   end
                 end
        endcase
        lcr.lcr = WL[7:0];;
        ap.write(lcr);
      end
      else if((host_req.paddr == ADDR_LSR) && (host_req.pwrite == 0)) begin
        if(pe != host_req.pdata[2]) begin
          `uvm_error("monitor_uart", $sformatf("Error in LSR PE bit - expected:%0b actual:%0b", pe, host_req.pdata[2]))
          no_reported_errors++;
        end
        if(fe != host_req.pdata[3]) begin
          `uvm_error("monitor_uart", $sformatf("Error in LSR FE bit - expected:%0b actual:%0b", fe, host_req.pdata[3]))
          no_reported_errors++;
        end
        pe = 0;
        fe = 0;
      end
    end
  endtask

    task monitor_uart;
      uart_sequence_item uart_item;
      bit[7:0] data;

      forever begin
        uart_fifo.get(uart_item);
        data_q.push_back({uart_item.pe, uart_item.fe, uart_item.data});
        no_chars_written++;
      end
    endtask

  function void report_phase(uvm_phase phase);

    if((no_reported_errors == 0) && (no_data_errors == 0)) begin
      `uvm_info("report_phase", $sformatf("%0d characters received by the UART with %0d inserted errors", no_chars_written, no_errors), UVM_LOW)
    end
    if(no_reported_errors != 0) begin
      `uvm_error("report_phase", $sformatf("%0d characters received with undetected errors from %0d received overall", no_reported_errors, no_chars_written))
    end
    if(no_data_errors != 0) begin
      `uvm_error("report_phase", $sformatf("%0d characters received with data_errors from %0d received overall", no_data_errors, no_chars_written))
    end

  endfunction
endclass





class uart_interrupt_coverage_monitor extends uvm_component;

`uvm_component_utils(uart_interrupt_coverage_monitor)

uvm_tlm_analysis_fifo #(apb_sequence_item) apb_fifo;

uart_reg_block rm;
uart_env_cfg cfg;

uvm_reg_data_t data;

  covergroup tx_word_format_int_cg() with function sample(bit[3:0] lcr);

    option.name = "tx_word_format_interrupt";
    option.per_instance = 1;

    WORD_LENGTH: coverpoint lcr[1:0] {
      bins bits_5 = {0};
      bins bits_6 = {1};
      bins bits_7 = {2};
      bins bits_8 = {3};
    }

    STOP_BITS: coverpoint lcr[2] {
      bins stop_1 = {0};
      bins stop_2 = {1};
    }

    PARITY: coverpoint lcr[3] {
      bins no_parity = {0};
      bins has_parity = {1};
    }

    WORD_FORMAT: cross WORD_LENGTH, STOP_BITS, PARITY;

  endgroup

covergroup rx_word_format_int_cg() with function sample(bit[3:0] lcr, bit[4:0] fcr);

  option.name = "rx_word_format_interrupt";
  option.per_instance = 1;

  WORD_LENGTH: coverpoint lcr[1:0] {
    bins bits_5 = {0};
    bins bits_6 = {1};
    bins bits_7 = {2};
    bins bits_8 = {3};
  }

  STOP_BITS: coverpoint lcr[2] {
    bins stop_1 = {0};
    bins stop_2 = {1};
  }

  PARITY: coverpoint lcr[3] {
      bins no_parity = {0};
      bins has_parity = {1};
      }
  
  FIFO_EN : coverpoint fcr[0] {
    bins  fifo_dis = {0};
    bins fifo_en = {1};
  }

  FIFO_TRIGGER_LEVEL: coverpoint fcr[4:3] {
    bins one = {0};
    bins four = {1};
    bins eight = {2};
    bins fourteen = {3};
  }

  WORD_FORMAT: cross WORD_LENGTH, STOP_BITS, PARITY, FIFO_EN, FIFO_TRIGGER_LEVEL;

endgroup

covergroup rx_status_word_format_int_cg() with function sample(bit[3:0] lcr);

  option.name = "rx_status_word_format_interrupt";
  option.per_instance = 1;

  WORD_LENGTH: coverpoint lcr[1:0] {
    bins bits_5 = {0};
    bins bits_6 = {1};
    bins bits_7 = {2};
    bins bits_8 = {3};
  }

  STOP_BITS: coverpoint lcr[2] {
    bins stop_1 = {0};
    bins stop_2 = {1};
  }

   PARITY: coverpoint lcr[3] {
      bins no_parity = {0};
      bins has_parity = {1};
      }

  WORD_FORMAT: cross WORD_LENGTH, STOP_BITS, PARITY;

endgroup


  covergroup int_enable_cg() with function sample(bit[2:0] ier);

  option.name = "interrupt_enable";
  option.per_instance = 1;

  INT_SOURCE: coverpoint ier {
    bins rx_data_only = {3'b001};
    bins tx_data_only = {3'b010};
    bins rx_status_only = {3'b100};
    bins rx_tx_data = {3'b011};
    bins rx_status_rx_data = {3'b101};
    bins rx_status_tx_data = {3'b110};
    bins rx_status_rx_tx_data = {3'b111};
    illegal_bins no_enables = {0}; 
  }

endgroup


covergroup int_enable_src_cg() with function sample(bit[2:0] ier, bit[2:0] iir);

  option.name = "interrupt_enable_and_identification";
  option.per_instance = 1;

  IIR: coverpoint iir {
    bins lsr_error = {3'b110};
    bins lsr_rdr = {3'b100};
    bins tdr_empty = {3'b010};
    bins no_intr = {3'b001};
  }

   INT_SOURCE: coverpoint ier {
    bins rx_data_only = {3'b001};
    bins tx_data_only = {3'b010};
    bins rx_status_only = {3'b100};
    bins rx_tx_data = {3'b011};
    bins rx_status_rx_data = {3'b101};
    bins rx_status_tx_data = {3'b110};
    bins rx_status_rx_tx_data = {3'b111};
    illegal_bins no_enables = {0}; 
  }

  ID_IEN: cross IIR, INT_SOURCE {
    ignore_bins rx_not_enabled = binsof(INT_SOURCE) intersect{3'b010, 3'b110, 3'b100, 0} && binsof(IIR) intersect{3'b100};
    ignore_bins tx_not_enabled = binsof(INT_SOURCE) intersect{3'b001, 3'b100, 3'b101, 0} && binsof(IIR) intersect{3'b010};
    ignore_bins rx_line_status_not_enabled = binsof(INT_SOURCE) intersect{3'b011, 3'b010, 3'b001, 0} && binsof(IIR) intersect{3'b110};
  }

endgroup



covergroup lsr_int_src_cg() with function sample(bit[7:0] lsr);

  option.name = "lsr_int_src_cg";
  option.per_instance = 1;

  LINE_STATUS_SRC: coverpoint lsr[6:2] {
    bins oe_only = {5'b10000};
    bins fde_only = {5'b01000};
    bins tdre_only = {5'b00100};
    bins fe_only = {5'b00010};
    bins pe_only = {5'b00001};
    bins oe_pe = {5'b10001};
    bins oe_fe = {4'b10010};
    bins fe_pe = {4'b00011};
    bins no_ints = {0};
  }

endgroup

  function new(string name = "uart_interrupt_coverage_monitor", uvm_component parent = null);
    super.new(name, parent);
    tx_word_format_int_cg = new();
    rx_word_format_int_cg = new();
    int_enable_cg = new();
    lsr_int_src_cg = new();
    int_enable_src_cg = new();
  endfunction

  function void build_phase(uvm_phase phase);
    apb_fifo = new("apb_fifo", this);
  endfunction

  task run_phase(uvm_phase phase);

  fork
    monitor_int_enable;
    monitor_int_src;
  join

  endtask
  task monitor_int_enable;

    forever begin
      cfg.wait_for_interrupt();
      data = rm.IER.get_mirrored_value();
      int_enable_cg.sample(data[2:0]);
    end

  endtask

  task monitor_int_src;
    apb_sequence_item req;
    bit[2:0] ien;
    bit[7:0] lcr;

    forever begin
      cfg.wait_for_interrupt();
      apb_fifo.get(req);
      if((req.paddr != ADDR_IIR) || (req.pwrite)) begin
        while((req.paddr != ADDR_IIR) || (req.pwrite)) begin
          apb_fifo.get(req);
      end
    end
      data = rm.LCR.get();
      lcr = data[7:0];
      data = rm.IER.get();
      ien = data[2:0];
      case(req.pdata[2:0])
         3'b110: 
                begin
                   rx_status_word_format_int_cg.sample(lcr[3:0]);
                 end
        3'b100: 
                begin
                   data = rm.FCR.get();
                   rx_word_format_int_cg.sample(lcr[3:0], data[4:0]);
                 end
        3'b010: 
             begin
                   tx_word_format_int_cg.sample(lcr[3:0]);
              end
      endcase
      int_enable_src_cg.sample(ien, req.pdata[2:0]);

      if(req.pdata[2:0] == 3'b110) begin
        apb_fifo.get(req);
        if(req.paddr != ADDR_LSR) begin
          while(req.paddr != ADDR_LSR) begin
            apb_fifo.get(req);
          end
          data = req.pdata;
          lsr_int_src_cg.sample(data[7:0]);
        end
    end

    end

  endtask
endclass










class uart_tx_coverage_monitor extends uvm_subscriber #(lcr_item);

`uvm_component_utils(uart_tx_coverage_monitor)

covergroup tx_word_format_cg with function sample(bit[3:0] lcr);

  option.name = "tx_word_format";
  option.per_instance = 1;

  WORD_LENGTH: coverpoint lcr[1:0] {
    bins bits_5 = {0};
    bins bits_6 = {1};
    bins bits_7 = {2};
    bins bits_8 = {3};
  }

  STOP_BITS: coverpoint lcr[2] {
    bins stop_1 = {0};
    bins stop_2 = {1};
  }

   PARITY: coverpoint lcr[3] {
      bins no_parity = {0};
      bins has_parity = {1};
      }

  WORD_FORMAT: cross WORD_LENGTH, STOP_BITS, PARITY;

endgroup


  function new(string name = "uart_tx_coverage_monitor", uvm_component parent = null);
    super.new(name, parent);
    tx_word_format_cg = new();
  endfunction

  function void write(T t);
    tx_word_format_cg.sample(t.lcr[3:0]);
  endfunction

endclass


class uart_rx_coverage_monitor extends uvm_subscriber #(lcr_item);

`uvm_component_utils(uart_rx_coverage_monitor)

covergroup rx_word_format_cg with function sample(bit[3:0] lcr);

  option.name = "rx_word_format";
  option.per_instance = 1;

  WORD_LENGTH: coverpoint lcr[1:0] {
    bins bits_5 = {0};
    bins bits_6 = {1};
    bins bits_7 = {2};
    bins bits_8 = {3};
  }

  STOP_BITS: coverpoint lcr[2] {
    bins stop_1 = {0};
    bins stop_2 = {1};
  }
   PARITY: coverpoint lcr[3] {
      bins no_parity = {0};
      bins has_parity = {1};
      }

  WORD_FORMAT: cross WORD_LENGTH, STOP_BITS, PARITY;

endgroup: rx_word_format_cg


function new(string name = "uart_rx_coverage_monitor", uvm_component parent = null);
  super.new(name, parent);
  rx_word_format_cg = new();
endfunction

function void write(T t);
  rx_word_format_cg.sample(t.lcr[3:0]);
endfunction

endclass



class baud_rate_checker extends uvm_component;

  `uvm_component_utils(baud_rate_checker)

  uvm_tlm_analysis_fifo #(apb_sequence_item) apb_fifo;

  virtual interrupt_if IRQ;


  uart_reg_block rm;

  int clk_count;

  bit[7:0] lcr;
  bit baud_errors;
  bit new_value_written;


covergroup baud_rate_cg() with function sample(bit[7:5] lcr);

  coverpoint lcr[7:5] {
    bins baud_opts[] = {3'b000, 3'b001, 3'b010, 3'b001, 3'b100, 3'b101, 3'b110, 3'b111};
  }
endgroup

  function new(string name = "baud_rate_checker", uvm_component parent = null);
    super.new(name, parent);
    baud_rate_cg = new();
  endfunction

  function void build_phase(uvm_phase phase);
    apb_fifo = new("apb", this);
  endfunction

  task run_phase(uvm_phase phase);

    clk_count = 0;

    fork
      count_clocks();
      monitor_baudout();
      monitor_apb();
    join

  endtask

  task count_clocks();
    forever begin
      @(posedge IRQ.clk);
      clk_count++;
    end
  endtask


function void check_count(bit[7:5] lcr, int clk_count);
  if(clk_count != (IRQ.SYSTEM_FREQUENCY / get_baud_rate(lcr[7:5]))) begin
    `uvm_error("check_count", $sformatf("Baudrate divisor error - Divisor:%0d Clock interval:%0d", get_baud_rate(lcr[7:5]), clk_count))
    baud_errors++;
  end
  else begin
    baud_rate_cg.sample(lcr[7:5]);
  end
endfunction



  task monitor_baudout();
    forever begin
      @(posedge IRQ.baud_out);
      if((new_value_written == 0)) begin
         check_count(lcr[7:5], clk_count);
      end
      new_value_written = 0;
      clk_count = 0;
    end

  endtask

  task monitor_apb();
    apb_sequence_item apb;

    forever begin
      apb_fifo.get(apb);
      if(apb.pwrite) begin
        if(apb.paddr == ADDR_LCR) begin
          new_value_written = 1;
        end
      end
    end

endtask



  function void report_phase(uvm_phase phase);
    if(baud_errors == 0) begin
      `uvm_info("report_phase", "No baud rate errors detected", UVM_LOW)
    end
    else begin
      `uvm_error("report_phase", $sformatf("%0d baud rate errors detected", baud_errors))
    end
  endfunction
endclass













class uart_reg_access_coverage_monitor extends uvm_subscriber #(apb_sequence_item);

`uvm_component_utils(uart_reg_access_coverage_monitor)

  bit we;
  bit[11:0] addr;

covergroup reg_access_cg();

  option.name = "reg_access_cg";
  option.per_instance = 1;

  RW: coverpoint we {
    bins read = {0};
    bins write = {1};
  }

  ADDR: coverpoint addr {
    bins tdr = {ADDR_TDR};
    bins rdr = {ADDR_RDR};
    bins lcr = {ADDR_LCR};
    bins ocr = {ADDR_OCR};
    bins lsr = {ADDR_LSR};
    bins fcr = {ADDR_FCR};
    bins ier = {ADDR_IER};
    bins irr = {ADDR_IIR};
    bins hcr = {ADDR_HCR};
  }

  REG_ACCESS: cross RW, ADDR {
    ignore_bins read_only = binsof(ADDR) intersect {ADDR_RDR, ADDR_LSR, ADDR_IIR} && binsof(RW) intersect {1};
  }

endgroup

covergroup lsr_read_cg() with function sample(bit[7:0] lsr);

  option.name = "lsr_read_cg";
  option.per_instance = 1;


  TX_DONE: coverpoint lsr[0] {
    bins tx_done = {1};
    bins tx_not_done = {0};
  }

  RX_DATA: coverpoint lsr[1] {
    bins empty = {1'b0};
    bins has_data = {1'b1};
  }

  PE: coverpoint lsr[2] {
    bins pe = {1};
    bins no_pe = {0};
  }

  FE: coverpoint lsr[3]{
    bins fe = {1};
    bins no_fe = {0};
  }

  TDRE: coverpoint lsr[4]{
    bins empty = {1};
    bins not_empty = {0};
  }

  FIFO_DATA_ERR: coverpoint lsr[5] {
    bins data_err = {1};
    bins no_data_err = {0};
  }

  OVRRUN: coverpoint lsr[6]{
    bins no_overr = {0};
    bins has_overr = {1};
  }

  FIFO_ERROR_STATUS: cross PE, FE, FIFO_DATA_ERR, TDRE, OVRRUN;

endgroup


function new(string name = "uart_reg_access_coverage_monitor", uvm_component parent = null);
  super.new(name, parent);
  reg_access_cg = new();
  lsr_read_cg = new();
endfunction

function void write(T t);
  we = t.pwrite;
  addr = t.paddr;
  reg_access_cg.sample();
  if((addr == ADDR_LSR) && (we == 0)) begin
    lsr_read_cg.sample(t.pdata[7:0]);
  end
endfunction


endclass

class uart_env extends uvm_component;

`uvm_component_utils(uart_env)

  uart_env_cfg m_cfg;

  apb_agent m_apb_agent;
  uart_agent m_tx_uart_agent;
  uart_agent m_rx_uart_agent;

  uart_tx_scoreboard tx_sb;
  uart_rx_scoreboard rx_sb;
  uart_tx_coverage_monitor tx_cov;
  uart_rx_coverage_monitor rx_cov;
  uart_interrupt_coverage_monitor int_cov;
  baud_rate_checker br_sb;
  uart_reg_access_coverage_monitor reg_cov;

  reg2apb_adapter reg_adapter;
  uvm_reg_predictor #(apb_sequence_item) reg_predictor;

  function new(string name = "uart_env", uvm_component parent = null);
    super.new(name, parent);
  endfunction


  function void build_phase(uvm_phase phase);
    if(!uvm_config_db #(uart_env_cfg)::get(this, "", "uart_env_cfg", m_cfg)) begin
      `uvm_error("build_phase", "Unable to get uart_env_cfg from uvm_config_db")
    end
    m_apb_agent = apb_agent::type_id::create("m_apb_agent", this);
    uvm_config_db #(apb_agent_cfg)::set(this, "m_apb_agent", "apb_agent_cfg", m_cfg.m_apb_agent_cfg);
    m_tx_uart_agent = uart_agent::type_id::create("m_tx_uart_agent", this);
    uvm_config_db #(uart_agent_cfg)::set(this, "m_tx_uart_agent", "uart_agent_cfg", m_cfg.m_tx_uart_agent_cfg);
    m_rx_uart_agent = uart_agent::type_id::create("m_rx_uart_agent", this);
    uvm_config_db #(uart_agent_cfg)::set(this, "m_rx_uart_agent", "uart_agent_cfg", m_cfg.m_rx_uart_agent_cfg);

    reg_predictor = uvm_reg_predictor #(apb_sequence_item)::type_id::create("reg_predictor", this);
    reg_adapter = reg2apb_adapter::type_id::create("reg_adapter");

    tx_sb = uart_tx_scoreboard::type_id::create("tx_sb", this);
    rx_sb = uart_rx_scoreboard::type_id::create("rx_sb", this);
    tx_cov = uart_tx_coverage_monitor::type_id::create("tx_cov", this);
    rx_cov = uart_rx_coverage_monitor::type_id::create("rx_cov", this);
    int_cov = uart_interrupt_coverage_monitor::type_id::create("int_cov", this);
    br_sb = baud_rate_checker::type_id::create("br_sb", this);
    reg_cov = uart_reg_access_coverage_monitor::type_id::create("reg_cov", this);
  endfunction

  function void connect_phase(uvm_phase phase);
    m_cfg.rm.map.set_sequencer(m_apb_agent.m_sequencer, reg_adapter);

    reg_predictor.map = m_cfg.rm.map;
    reg_predictor.adapter = reg_adapter;
    m_apb_agent.ap.connect(reg_predictor.bus_in);

    m_apb_agent.ap.connect(tx_sb.apb_fifo.analysis_export);
    m_tx_uart_agent.ap.connect(tx_sb.uart_fifo.analysis_export);
    tx_sb.rm = m_cfg.rm;

    m_apb_agent.ap.connect(rx_sb.apb_fifo.analysis_export);

    m_rx_uart_agent.ap.connect(rx_sb.uart_fifo.analysis_export);
    rx_sb.rm = m_cfg.rm;

    tx_sb.ap.connect(tx_cov.analysis_export);
    m_apb_agent.ap.connect(int_cov.apb_fifo.analysis_export);

    int_cov.cfg = m_cfg;
    int_cov.rm = m_cfg.rm;
    rx_sb.ap.connect(rx_cov.analysis_export);
    br_sb.rm = m_cfg.rm;
    br_sb.IRQ = m_cfg.IRQ;

    m_apb_agent.ap.connect(br_sb.apb_fifo.analysis_export);
    m_apb_agent.ap.connect(reg_cov.analysis_export);
  endfunction

endclass





endpackage
