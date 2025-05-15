package apb_sequence_pkg;
	import uvm_pkg::*;
`include "uvm_macros.svh"
	import common_pkg::*;

import apb_agent_pkg::*;
import uart_reg_pkg::*;
import uart_env_pkg::*;


	class common_sequence extends uvm_sequence #(apb_sequence_item);
		`uvm_object_utils(common_sequence);
		uart_env_cfg cfg;
		uart_reg_block rm;


		uvm_status_e status;
		rand uvm_reg_data_t data;

	function new(string name = "common_sequence");
	  super.new(name);
	endfunction

	task body;
	  if(!uvm_config_db #(uart_env_cfg)::get(m_sequencer, "", "uart_env_cfg", cfg)) begin
	    `uvm_error("body", "Unable to find uart_env_cfg in uvm_config_db")
	  end
	  rm = cfg.rm;
	 endtask

	endclass


	// to test
	class quick_reg_access_seq extends common_sequence;

	`uvm_object_utils(quick_reg_access_seq)

	function new(string name = "quick_reg_access_seq");
	  super.new(name);
	endfunction

	task body;
	  super.body();
	  rm.TDR.read(status, data, .parent(this));
	  rm.RDR.read(status, data, .parent(this));
	  rm.LCR.read(status, data, .parent(this));
	  rm.LSR.read(status, data, .parent(this));
	  rm.FCR.read(status, data, .parent(this));
	  rm.IER.read(status, data, .parent(this));
	  rm.OCR.read(status, data, .parent(this));
	  rm.HCR.read(status, data, .parent(this));
	  rm.IIR.read(status, data, .parent(this));

	  // write to all the registers
	  data = 32'haa;
	  rm.TDR.write(status, data, .parent(this));
	  rm.RDR.write(status, data, .parent(this));
	  rm.LCR.write(status, data, .parent(this));
	  rm.LSR.write(status, data, .parent(this));
	  rm.FCR.write(status, data, .parent(this));
	  rm.IER.write(status, data, .parent(this));
	  rm.OCR.write(status, data, .parent(this));
	  rm.HCR.write(status, data, .parent(this));
	  rm.IIR.write(status, data, .parent(this));

	  // read back again
	  rm.TDR.read(status, data, .parent(this));
	  rm.RDR.read(status, data, .parent(this));
	  rm.LCR.read(status, data, .parent(this));
	  rm.LSR.read(status, data, .parent(this));
	  rm.FCR.read(status, data, .parent(this));
	  rm.IER.read(status, data, .parent(this));
	  rm.OCR.read(status, data, .parent(this));
	  rm.HCR.read(status, data, .parent(this));
	  rm.IIR.read(status, data, .parent(this));

	endtask

	endclass

	class uart_config_seq extends common_sequence;

		`uvm_object_utils(uart_config_seq)

		rand bit[7:0] LCR;
		rand bit[4:0] FCR;

		function new(string name = "uart_config_seq");
		  super.new(name);
		endfunction

		task body;
		  super.body();

		  rm.LCR.write(status, {'0, LCR}, .parent(this));
		  rm.LCR.read(status, data, .parent(this));
		  rm.FCR.write(status, {'0, FCR}, .parent(this));
		

		endtask

	endclass

	class uart_host_tx_seq extends common_sequence;

		`uvm_object_utils(uart_host_tx_seq)

		rand int no_tx_chars;

		constraint char_limit_c { no_tx_chars inside {[1:20]};}

		function new(string name = "uart_host_tx_seq");
		  super.new(name);
		endfunction

		task body;
		  int i;

		  super.body();
		  i = 0;
		  while(i < no_tx_chars) begin
		    rm.LSR.read(status, data, .parent(this));
		    while(!data[4]) begin
		      rm.LSR.read(status, data, .parent(this));
		    end
		    for(int j = 0; j < 16; j++) begin
		      rm.TDR.write(status, $urandom(), .parent(this));
		      i++;
		      if(i >= no_tx_chars) begin
		        break;
		      end
		      j++;
		    end
		  end
	endtask

	endclass


	class uart_host_rx_seq extends common_sequence;

	`uvm_object_utils(uart_host_rx_seq)

	rand int no_rx_chars;

	constraint char_limit_c { no_rx_chars inside {[1:20]};}

	function new(string name = "uart_host_rx_seq");
	  super.new(name);
	endfunction

	task body;
	  super.body();
	  for(int i = 0; i < no_rx_chars; i++) begin
	    rm.LSR.read(status, data, .parent(this));
	    // Wait for data to be available
	    while(!data[0]) begin
	      rm.LSR.read(status, data, .parent(this));
	      cfg.wait_for_clock(10);
	    end
	    rm.RDR.read(status, data, .parent(this));
	  end
	endtask

	endclass

	class uart_int_enable_seq extends common_sequence;

		`uvm_object_utils(uart_int_enable_seq)

		rand bit[2:0] IER;

		function new(string name = "uart_int_enable_seq");
		  super.new(name);
		endfunction

		task body;
		  super.body();
		  rm.IER.write(status, {'0, IER}, .parent(this));
		endtask

	endclass


	class uart_int_tx_rx_seq extends common_sequence;

		`uvm_object_utils(uart_int_tx_rx_seq)

		rand int no_tx_chars;
		rand int rx_fifo_threshold;
		rand int no_rx_chars;
		rand bit[4:0] FCR;

		function new(string name = "uart_int_tx_rx_seq");
		  super.new(name);
		endfunction

		task body;
		  super.body();

		  case(FCR[4:3])
		    2'b00: rx_fifo_threshold = 1;
		    2'b01: rx_fifo_threshold = 4;
		    2'b10: rx_fifo_threshold = 8;
		    2'b11: rx_fifo_threshold = 14;
		  endcase

		  rm.IIR.read(status, data, .parent(this));
		  if(data[0] == 0) begin
		    case(data[2:0])
		      3'b110: begin
		                rm.LSR.read(status, data, .parent(this));
		              end
		      3'b100: begin
		                for(int i = 0; i < rx_fifo_threshold; i++) begin
		                  rm.RDR.read(status, data, .parent(this));
		                  no_rx_chars--;
		                  if(no_rx_chars == 0) begin
		                    break;
		                  end
		                end
		              end
		      3'b010: begin
		                for(int j = 0; j < 16; j++) begin
		                  if(no_tx_chars > 0) begin
		                    data = $urandom();
		                    rm.TDR.write(status, data, .parent(this));
		                    no_tx_chars--;
		                  end
		                  else begin
		                    break;
		                  end
		                end
		              end
		    endcase
		  end
		endtask

	endclass

	class uart_wait_empty_seq extends common_sequence;

		`uvm_object_utils(uart_wait_empty_seq)

		function new(string name = "uart_wait_empty_seq");
		  super.new(name);
		endfunction

		task body;
		  int i;

		  super.body();
		  rm.LSR.read(status, data, .parent(this));
		  while(!data[4]) begin
		    rm.LSR.read(status, data, .parent(this));
		  end
		endtask

	endclass

	class baud_rate_test_seq extends common_sequence;

		rand bit[2:0] baud_rate;

		`uvm_object_utils(baud_rate_test_seq)

		constraint baud_rate_val {
		  baud_rate inside {3'b000, 3'b001, 3'b010, 3'b011, 3'b100, 3'b101, 3'b110, 3'b111};
		}

		function new(string name = "baud_rate_test_seq");
		  super.new(name);
		endfunction

		task body;

		  super.body();
		  repeat(150) begin
		    assert(this.randomize());
		    data = {'0, baud_rate, 5'd0};
		    repeat(2) begin
		      cfg.wait_for_baud_rate();
		    end
		    cfg.wait_for_clock(10);
		  end

		endtask


	endclass

endpackage 