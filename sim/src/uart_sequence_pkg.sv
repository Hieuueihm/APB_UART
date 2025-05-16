

package uart_sequence_pkg;

import uvm_pkg::*;
`include "uvm_macros.svh"
import common_pkg::*;

import uart_agent_pkg::*;

  class uart_rx_seq extends uvm_sequence #(uart_sequence_item);

  `uvm_object_utils(uart_rx_seq)

  rand int no_rx_chars;

  rand bit[7:0] lcr;
  rand bit no_errors;

  function new(string name = "uart_rx_seq");
    super.new(name);
  endfunction

  task body;
    uart_sequence_item rx_char = uart_sequence_item::type_id::create("rx_char");
    `uvm_info("RUNNING SEQUENCE", "RX SEQUENCE RUN", UVM_MEDIUM);

    repeat(no_rx_chars) begin
      start_item(rx_char);
      
      assert(rx_char.randomize());
      rx_char.lcr = lcr;
      if(no_errors) begin
        rx_char.fe = 0;
        rx_char.pe = 0;
      end
      finish_item(rx_char);
    end

  endtask

  endclass
endpackage
