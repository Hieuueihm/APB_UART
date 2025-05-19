package apb_sequence_pkg;
	import uvm_pkg::*;
`include "uvm_macros.svh"
`include "common_defines.sv"

	import common_pkg::*;

import apb_agent_pkg::*;
import uart_reg_pkg::*;
import uart_env_pkg::*;


	class common_sequence extends uvm_sequence #(apb_transaction);
		`uvm_object_utils(common_sequence);
		uart_env_cfg cfg;
		uart_reg_block rm;


		uvm_status_e status;
		rand uvm_reg_data_t data;

        function new(string name = "common_sequence");
        super.new(name);
        endfunction

	task body;
        if(!uvm_config_db #(uart_env_cfg)::get(m_sequencer, "", `UART_ENV_CFG, cfg)) begin
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
	  `uvm_info("build phase", "create quick_reg_access_seq", UVM_LOW);
	endfunction

	task body;
	  super.body();
	 	`uvm_info("run phase", "quick_reg_access_seq running", UVM_LOW);

	  rm.TDR.read(status, data, .parent(this));

	  rm.RDR.read(status, data, .parent(this));
	  rm.LCR.read(status, data, .parent(this));
	  rm.OCR.read(status, data, .parent(this));
	  rm.LSR.read(status, data, .parent(this));
	  rm.FCR.read(status, data, .parent(this));
	  rm.IIR.read(status, data, .parent(this));
	  rm.IER.read(status, data, .parent(this));
	  rm.HCR.read(status, data, .parent(this));

	  // // write to all the registers
	  data = 32'haa;
	  rm.TDR.write(status, data, .parent(this));
	    `uvm_info("WRITE", $sformatf("TDR write: status=%0d, data=0x%0h", status, data), UVM_LOW);

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
		rand bit[2:0] OCR;

		function new(string name = "uart_config_seq");
		  super.new(name);
		endfunction

		task body;
		  super.body();
		  rm.LCR.write(status, {'0, LCR}, .parent(this));
		//   rm.LCR.read(status, data, .parent(this));
		  rm.FCR.write(status, {'0, FCR}, .parent(this));
		  rm.OCR.write(status, {'0, OCR}, .parent(this));
		

		endtask

	endclass

	class uart_host_tx_seq extends common_sequence;

		`uvm_object_utils(uart_host_tx_seq)

		rand int no_tx_chars;

		constraint char_limit_c { no_tx_chars inside {[1:20]};}
		uart_config_seq cfg;

		function new(string name = "uart_host_tx_seq");
		  super.new(name);
		endfunction

		task body;
		  int i;
			bit[7:0] data;
		  super.body();
		  i = 0;
		  `LOG("TEST", "RUN TEST")
		  while(i < no_tx_chars) begin
		    rm.LSR.read(status, data, .parent(this));

		    while(!data[4]) begin
	    		rm.LSR.read(status, data, .parent(this));
					
				end

		    // for(int j = 0; j < 16; j++) begin
		      rm.TDR.write(status, $urandom(), .parent(this));
			// `uvm_info("TEST", $sformatf("cfg.OCR[2] = %0b", cfg.OCR[2]), UVM_MEDIUM);
			// `uvm_info("TEST", $sformatf("cfg.OCR = %03b", cfg.OCR), UVM_MEDIUM);

		      rm.OCR.write(status, {29'b0, cfg.OCR[2], 1'b1, cfg.OCR[0]}, .parent(this));
		      i++;
		      if(i >= no_tx_chars) begin
		        break;
		      end
		    //   j++;
		    // end
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
	    while(!data[1]) begin
	      rm.LSR.read(status, data, .parent(this));
	      cfg.wait_for_clock(10);
	    end
	    rm.RDR.read(status, data, .parent(this));
	  end
	endtask

	endclass

endpackage 