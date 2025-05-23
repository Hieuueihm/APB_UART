package uart_vsequence_pkg;

import uvm_pkg::*;
`include "uvm_macros.svh"
`include "common_defines.sv"

import common_pkg::*;

import apb_agent_pkg::*;
import uart_agent_pkg::*;
import uart_reg_pkg::*;
import uart_env_pkg::*;

import apb_sequence_pkg::*;


class uart_vseq_base extends uvm_sequence #(uart_transaction);

`uvm_object_utils(uart_vseq_base)
apb_sequencer apb;
uart_sequencer uart;
uart_env_cfg cfg;

uart_agent_cfg tx_uart_config;
uart_agent_cfg rx_uart_config;
uart_env m_env;

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


class tx_polling_vseq extends uart_vseq_base;

`uvm_object_utils(tx_polling_vseq)

function new(string name = "tx_polling_vseq");
  super.new(name);
endfunction

task body;
  uart_config_seq setup = uart_config_seq::type_id::create("setup");
  uart_host_tx_seq host_tx = uart_host_tx_seq::type_id::create("host_tx");
  bit[4:0] lcr;
  bit[4:0] fcr;
  bit[2:0] ocr;
  bit [2:0] baud;

  int tx_cnt_before;


  tx_cnt_before = 0;
  baud = 0;
  lcr = 0;
  fcr = 0;
  ocr = 5; 

  host_tx.no_tx_chars =1;

  repeat(1) begin
      fcr = 0;
      lcr[4:0] = 0;
      repeat(32) begin
        assert(setup.randomize() with {setup.LCR[4:0] == lcr[4:0];
                                      setup.LCR[7:5] == baud[2:0];
                                      setup.FCR == fcr;
                                      setup.OCR == ocr;
                                      });
        setup.start(apb);
        tx_uart_config.lcr[4:0] = lcr[4:0];
        tx_uart_config.lcr[7:5] = baud[2:0];
        host_tx.cfg = setup;
        // host_tx.has_data_in = 1;
        // host_tx.data_in = 32'h13ec2483;


        fork
          host_tx.start(apb);
          wait(m_env.tx_sb.no_chars_tx == tx_cnt_before + 1);
        join
        tx_cnt_before = m_env.tx_sb.no_chars_tx;
        lcr++;
      end
    `LOG("TEST TX POOLING", "CHNAGE BAUD RATE")
  baud++;
  end
endtask

endclass



class tx_fifo_vseq extends uart_vseq_base;

`uvm_object_utils(tx_fifo_vseq)

function new(string name = "tx_fifo_vseq");
  super.new(name);
endfunction

task body;
  uart_config_seq setup = uart_config_seq::type_id::create("setup");
  uart_host_tx_seq_wfifo host_tx = uart_host_tx_seq_wfifo::type_id::create("host_tx");
  bit[4:0] lcr;
  bit[4:0] fcr;
  bit[2:0] ocr;
  bit [2:0] baud;

  int tx_cnt_before;


  tx_cnt_before = 0;
  baud = 0;
  lcr = 0;
  fcr = 0;
  ocr = 5; 

  host_tx.no_tx_chars =1;

  repeat(1) begin
      fcr = 1;
      lcr[4:0] = 0;
      repeat(32) begin
        assert(setup.randomize() with {setup.LCR[4:0] == lcr[4:0];
                                      setup.LCR[7:5] == baud[2:0];
                                      setup.FCR == fcr;
                                      setup.OCR == ocr;
                                      });
        setup.start(apb);
        tx_uart_config.lcr[4:0] = lcr[4:0];
        tx_uart_config.lcr[7:5] = baud[2:0];
        host_tx.cfg = setup;
        // host_tx.has_data_in = 1;
        // host_tx.data_in = 32'h13ec2483;


        fork
          host_tx.start(apb);
          wait(m_env.tx_sb.no_chars_tx == tx_cnt_before + 1);
        join
        tx_cnt_before = m_env.tx_sb.no_chars_tx;
        lcr++;
      end
    // `LOG("TEST TX POOLING", "CHNAGE BAUD RATE")
  baud++;
  end
endtask

endclass



  class uart_rx_seq extends uvm_sequence #(uart_transaction);

    `uvm_object_utils(uart_rx_seq)

    rand int no_rx_chars;

    rand bit[7:0] lcr_r;
    rand bit no_errors;

    function new(string name = "uart_rx_seq");
        super.new(name);
    endfunction

    task body;
        uart_transaction rx_char = uart_transaction::type_id::create("rx_char");
        // `uvm_info("RUNNING SEQUENCE", "RX SEQUENCE RUN", UVM_LOW);

        repeat(no_rx_chars) begin
          start_item(rx_char);
        assert(rx_char.randomize() with {
          data[4:0] != 0;
          pe dist {1 := 1, 0 := 9};
          fe dist {1 := 1, 0 := 9};
        });
          rx_char.lcr = lcr_r;
          // rx_char.data[7:0] = 8'h8d;
                   `uvm_info("RUNNING SEQUENCE", $sformatf("%h %h", rx_char.data, rx_char.lcr), UVM_LOW);

          if(no_errors) begin
              rx_char.fe = 0;
              rx_char.pe = 0;
          end
        finish_item(rx_char);
        end

    endtask

endclass


class rx_polling_vseq extends uart_vseq_base;

`uvm_object_utils(rx_polling_vseq)

function new(string name = "rx_polling_vseq");
  super.new(name);
endfunction

task body;
  uart_config_seq setup = uart_config_seq::type_id::create("setup");
  uart_host_rx_seq host_rx = uart_host_rx_seq::type_id::create("host_rx");
  uart_rx_seq rx_serial = uart_rx_seq::type_id::create("rx_serial");

  bit[7:0] lcr;
  bit[4:0] fcr;
  bit[2:0] ocr;
  int rx_cnt_before;


  rx_cnt_before = 0;

  lcr = 0;
  fcr = 0;
  ocr = 5; 

  host_rx.no_rx_chars =1;
  rx_serial.no_rx_chars = 1;
  rx_serial.no_errors = 0;


  repeat(32) begin
      assert(setup.randomize() with {setup.LCR == lcr;
                                    setup.FCR == fcr;
                                    setup.OCR == ocr;
                                    });
      setup.start(apb);
      rx_uart_config.lcr = lcr;
      rx_serial.lcr_r = lcr;

      fork
        host_rx.start(apb);
        rx_serial.start(uart);
        wait(m_env.rx_sb.no_chars_rx == rx_cnt_before + 1);
      join
      rx_cnt_before = m_env.rx_sb.no_chars_rx;

      lcr++;
  end

endtask

endclass

endpackage
