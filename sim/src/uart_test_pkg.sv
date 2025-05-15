package uart_test_pkg;

import uvm_pkg::*;
`include "uvm_macros.svh"
import common_pkg::*;

import uart_reg_pkg::*;
import uart_agent_pkg::*;
import apb_agent_pkg::*;

import uart_env_pkg::*;
import uart_vsequence_pkg::*;
import apb_sequence_pkg::*;


class uart_test_base extends uvm_test;

`uvm_component_utils(uart_test_base)

uart_env m_env;
uart_env_cfg m_env_cfg;
uart_reg_block rm;

uart_agent_cfg m_tx_uart_cfg;
uart_agent_cfg m_rx_uart_cfg;
apb_agent_cfg m_apb_cfg;



  function new(string name = "uart_test_base", uvm_component parent = null);
    super.new(name, parent);
  endfunction
  function void build_phase(uvm_phase phase);
    `uvm_info("build phase", "uart_test_base build", UVM_LOW);
    m_env_cfg = uart_env_cfg::type_id::create("m_env_cfg");

    rm = uart_reg_block::type_id::create("rm");
    rm.build();
    m_env_cfg.rm = rm;

    m_apb_cfg = apb_agent_cfg::type_id::create("m_apb_cfg");
    if(!uvm_config_db #(virtual apb_if)::get(this, "", "APB", m_apb_cfg.APB)) begin
      `uvm_error("build_phase", "Unable to find APB interface in the uvm_config_db")
    end
    m_env_cfg.m_apb_agent_cfg = m_apb_cfg;
    m_tx_uart_cfg = uart_agent_cfg::type_id::create("m_tx_uart_cfg");
    if(!uvm_config_db #(virtual serial_if)::get(this, "", "TX_UART", m_tx_uart_cfg.sline)) begin
      `uvm_error("build_phase", "Unable to find UART interface in the uvm_config_db")
    end
    m_tx_uart_cfg.ACTIVE = 0;
    m_env_cfg.m_tx_uart_agent_cfg = m_tx_uart_cfg;
    m_rx_uart_cfg = uart_agent_cfg::type_id::create("m_rx_uart_cfg");
    if(!uvm_config_db #(virtual serial_if)::get(this, "", "RX_UART", m_rx_uart_cfg.sline)) begin
      `uvm_error("build_phase", "Unable to find UART interface in the uvm_config_db")
    end
    m_env_cfg.m_rx_uart_agent_cfg = m_rx_uart_cfg;
    if(!uvm_config_db #(virtual interrupt_if)::get(this, "", "IRQ", m_env_cfg.IRQ)) begin
      `uvm_error("build_phase", "Unable to find IRQ interface in the uvm_config_db")
    end
    m_env = uart_env::type_id::create("m_env", this);
    uvm_config_db #(uart_env_cfg)::set(this, "m_env*", "uart_env_cfg", m_env_cfg);
  endfunction

  function void init_vseq(uart_vseq_base vseq);
    `uvm_info("init", "init_vseq", UVM_LOW);
    vseq.apb = m_env.m_apb_agent.m_sequencer;
    vseq.uart = m_env.m_rx_uart_agent.m_uart_sequencer;
    vseq.rm = rm;
    vseq.tx_uart_config = m_tx_uart_cfg;
    vseq.rx_uart_config = m_rx_uart_cfg;
    vseq.cfg = m_env_cfg;
  endfunction
endclass




class uart_test extends uart_test_base;

`uvm_component_utils(uart_test)

  function new(string name = "uart_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction
  task run_phase(uvm_phase phase);

    basic_reg_vseq vseq = basic_reg_vseq::type_id::create("vseq");
            `uvm_info("run_phase", "run_phase OF UART TEST", UVM_LOW);

    phase.raise_objection(this);
    init_vseq(vseq);
    vseq.start(null);
    phase.drop_objection(this);

  endtask

  function void report_phase(uvm_phase phase);
    `uvm_info("*** UVM TEST PASSED ***", "Register RW paths checked", UVM_LOW)
  endfunction
endclass






class word_format_poll_test extends uart_test_base;

`uvm_component_utils(word_format_poll_test)

  function new(string name = "word_format_poll_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    word_format_poll_vseq vseq = word_format_poll_vseq::type_id::create("vseq");

    phase.raise_objection(this);
    init_vseq(vseq);
    vseq.start(null);
    phase.drop_objection(this);
  endtask


  function void report_phase(uvm_phase phase);
    if((m_env.tx_sb.no_errors == 0) && (m_env.tx_sb.no_data_errors == 0) && (m_env.rx_sb.no_reported_errors == 0) && (m_env.rx_sb.no_data_errors == 0)) begin
      `uvm_info("*** UVM TEST PASSED ***", "No RX or TX data errors detected", UVM_LOW)
    end
    else begin
      `uvm_error("*** UVM TEST FAILED ***", "RX or TX data errors detected - see scoreboard reports for more detail")
    end
  endfunction
endclass







class word_format_int_test extends uart_test_base;

`uvm_component_utils(word_format_int_test)

  function new(string name = "word_format_int_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    word_format_int_vseq vseq = word_format_int_vseq::type_id::create("vseq");

    phase.raise_objection(this);
    init_vseq(vseq);
    vseq.start(null);
    phase.drop_objection(this);
  endtask


  function voidreport_phase(uvm_phase phase);
    if((m_env.tx_sb.no_errors == 0) && (m_env.tx_sb.no_data_errors == 0) && (m_env.rx_sb.no_reported_errors == 0) && (m_env.rx_sb.no_data_errors == 0)) begin
      `uvm_info("*** UVM TEST PASSED ***", "No RX or TX data errors detected", UVM_LOW)
    end
    else begin
      `uvm_error("*** UVM TEST FAILED ***", "RX or TX data errors detected - see scoreboard reports for more detail")
    end
  endfunction
endclass



class rx_errors_int_test extends uart_test_base;

`uvm_component_utils(rx_errors_int_test)


  function new(string name = "rx_errors_int_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    rx_errors_int_vseq vseq = rx_errors_int_vseq::type_id::create("vseq");

    phase.raise_objection(this);
    init_vseq(vseq);
    vseq.start(null);
    phase.drop_objection(this);
  endtask
endclass



endpackage
