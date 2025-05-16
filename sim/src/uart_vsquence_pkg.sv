package uart_vsequence_pkg;

import uvm_pkg::*;
`include "uvm_macros.svh"
import common_pkg::*;

import apb_agent_pkg::*;
import uart_agent_pkg::*;
import uart_reg_pkg::*;
import uart_env_pkg::*;

import apb_sequence_pkg::*;
import uart_sequence_pkg::*;


class uart_vseq_base extends uvm_sequence #(uart_sequence_item);

`uvm_object_utils(uart_vseq_base)
apb_sequencer apb;
uart_sequencer uart;
uart_env_cfg cfg;

uart_agent_cfg tx_uart_config;
uart_agent_cfg rx_uart_config;

uart_reg_block rm;

function new(string name = "uart_vseq_base");
  super.new(name);
endfunction

endclass

class basic_reg_vseq extends uart_vseq_base;

`uvm_object_utils(basic_reg_vseq)

function new(string name = "basic_reg_vseq");
  super.new(name);
endfunction

task body;

  quick_reg_access_seq t_seq = quick_reg_access_seq::type_id::create("t_seq");
  `uvm_info("run", "basic_reg_vseq running", UVM_LOW);
  t_seq.start(apb);

endtask

endclass

// test uart word format
class word_format_poll_vseq extends uart_vseq_base;

`uvm_object_utils(word_format_poll_vseq)

function new(string name = "word_format_poll_vseq");
  super.new(name);
endfunction

task body;
  uart_config_seq setup = uart_config_seq::type_id::create("setup");
  uart_host_rx_seq host_rx = uart_host_rx_seq::type_id::create("host_rx");
  uart_host_tx_seq host_tx = uart_host_tx_seq::type_id::create("host_tx");
  uart_rx_seq rx_serial = uart_rx_seq::type_id::create("rx_serial");
  bit[7:0] lcr;
  bit[4:0] fcr;
  bit[2:0] ocr;

  lcr = 1;
  fcr = 0;
  ocr = 5; /// 111 // tx_en and rx_en

  host_rx.no_rx_chars = 1;
  host_tx.no_tx_chars = 1;

  rx_serial.no_rx_chars = 1;
  rx_serial.no_errors = 0;

  repeat(1) begin
    assert(setup.randomize() with {setup.LCR == lcr;
                                   setup.FCR == fcr;
                                   setup.OCR == ocr;
                                   });
    setup.start(apb);
    rx_serial.lcr = lcr;
    rx_uart_config.lcr = lcr;
    tx_uart_config.lcr = lcr;
    host_tx.cfg = setup;


    fork
      host_rx.start(apb);
      host_tx.start(apb);
      rx_serial.start(uart);
    join
    lcr++;
  end

endtask

endclass


class word_format_int_vseq extends uart_vseq_base;

`uvm_object_utils(word_format_int_vseq)

function new(string name = "word_format_int_vseq");
  super.new(name);
endfunction

task body;
  uart_config_seq     setup = uart_config_seq::type_id::create("setup");
  uart_int_enable_seq ien = uart_int_enable_seq::type_id::create("ien");
  uart_int_tx_rx_seq  isr = uart_int_tx_rx_seq::type_id::create("isr");
  uart_rx_seq         rx_serial = uart_rx_seq::type_id::create("rx_serial");
  uart_host_rx_seq    rx_poll = uart_host_rx_seq::type_id::create("rx_poll");
  uart_host_tx_seq    tx_poll = uart_host_tx_seq::type_id::create("tx_poll");
  uart_wait_empty_seq wait_empty = uart_wait_empty_seq::type_id::create("wait_empty");

  bit[7:0] lcr;
  bit[4:0] fcr;

  lcr = 0;

  rx_serial.no_rx_chars = 2;
  rx_serial.no_errors = 1;

  repeat(64) begin
    assert(setup.randomize() with {setup.LCR == lcr;});
    setup.start(apb);
    ien.IER = 3'h3;
    ien.start(apb);
    rx_serial.lcr = lcr;
    rx_uart_config.lcr = lcr;
    tx_uart_config.lcr = lcr;

    assert(isr.randomize() with {no_tx_chars inside {[1:20]};});
    isr.FCR = setup.FCR;
    case(setup.FCR)
      2'b00: isr.no_rx_chars = $urandom_range(2, 10);
      2'b01: isr.no_rx_chars = $urandom_range(4, 12);
      2'b10: isr.no_rx_chars = $urandom_range(8, 16);
      2'b11: isr.no_rx_chars = $urandom_range(14, 22);
    endcase
    rx_serial.no_rx_chars = isr.no_rx_chars;
    tx_poll.no_tx_chars = 1;
    tx_poll.start(apb);

    fork
      begin
        while((isr.no_rx_chars > isr.rx_fifo_threshold) || (isr.no_tx_chars > 0)) begin
          if(!cfg.get_interrupt_level()) begin
            cfg.wait_for_interrupt();
          end
          isr.start(apb);
        end
        rx_poll.no_rx_chars = isr.no_rx_chars;
        rx_poll.start(apb);
      end
      rx_serial.start(uart);
    join
    wait_empty.start(apb);
    lcr++;
  end

endtask

endclass


class rx_errors_int_vseq extends uart_vseq_base;

`uvm_object_utils(rx_errors_int_vseq)

function new(string name = "rx_errors_int_vseq");
  super.new(name);
endfunction

task body;
  uart_config_seq     setup = uart_config_seq::type_id::create("setup");
  uart_int_enable_seq ien = uart_int_enable_seq::type_id::create("ien");
  uart_int_tx_rx_seq  isr = uart_int_tx_rx_seq::type_id::create("isr");
  uart_rx_seq         rx_serial = uart_rx_seq::type_id::create("rx_serial");
  uart_host_rx_seq    rx_poll = uart_host_rx_seq::type_id::create("rx_poll");
  uart_host_tx_seq    tx_poll = uart_host_tx_seq::type_id::create("tx_poll");
  uart_wait_empty_seq wait_empty = uart_wait_empty_seq::type_id::create("wait_empty");

  bit[7:0] lcr;
  bit[4:0] fcr;

  lcr = 0;

  rx_serial.no_rx_chars = 2;
  rx_serial.no_errors = 0;

  repeat(64) begin
    assert(setup.randomize() with {setup.LCR == lcr;});
    setup.start(apb);
    ien.IER = 4'h7;
    ien.start(apb);
    rx_serial.lcr = lcr;
    rx_uart_config.lcr = lcr;
    tx_uart_config.lcr = lcr;

    assert(isr.randomize() with {no_tx_chars inside {[1:20]};});
    isr.FCR = setup.FCR;
    case(setup.FCR)
      2'b00: isr.no_rx_chars = $urandom_range(2, 10);
      2'b01: isr.no_rx_chars = $urandom_range(4, 12);
      2'b10: isr.no_rx_chars = $urandom_range(8, 16);
      2'b11: isr.no_rx_chars = $urandom_range(14, 22);
    endcase
    rx_serial.no_rx_chars = isr.no_rx_chars;
    tx_poll.no_tx_chars = 1;
    tx_poll.start(apb);

    fork
      begin
        while((isr.no_rx_chars > isr.rx_fifo_threshold) || (isr.no_tx_chars > 0)) begin
          if(!cfg.get_interrupt_level()) begin
            cfg.wait_for_interrupt();
          end
          isr.start(apb);
          $display("no_rx_chars:%0d rx_fifo_threshold:%0d no_tx_chars:%0d", isr.no_rx_chars, isr.rx_fifo_threshold, isr.no_tx_chars);
        end
        rx_poll.no_rx_chars = isr.no_rx_chars;
        rx_poll.start(apb);
      end
      rx_serial.start(uart);
    join
    wait_empty.start(apb);
    lcr++;
  end

endtask

endclass
endpackage
