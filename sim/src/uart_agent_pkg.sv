

package uart_agent_pkg;

import uvm_pkg::*;
`include "uvm_macros.svh"
import common_def::*;

class uart_agent_cfg extends uvm_object;

	`uvm_object_utils(uart_agent_cfg)

	bit ACTIVE = 1;
	logic[7:0] lcr = 8'h23;

	virtual serial_if sline;

	function new(string name = "uart_agent_cfg");
	  super.new(name);
	endfunction

	endclass


class uart_sequence_item extends uvm_sequence_item;

`uvm_object_utils(uart_sequence_item)

rand int delay;
rand bit[7:0] data;
rand bit fe;
rand bit[7:0] lcr;
rand bit pe;
rand delay_e delay_kind;



constraint error_dists {fe dist {1:= 1, 0:=99};
                        pe dist {1:= 1, 0:=99};
                        }



	constraint delay_order_c { solve delay_kind before delay; }
	constraint delay_c {
			(delay_kind == ZERO) -> delay == 0;
			(delay_kind == SHORT) -> delay inside { [1:10] };
			(delay_kind == MEDIUM) -> delay inside { [11:99] };
			(delay_kind == LARGE) -> delay inside { [100:999] };
			(delay_kind == MAX ) -> delay == 1000;
			delay >=0; delay <= 1000; }

	constraint lcr_setup {lcr == 8'h23;}

	function new(string name = "uart_sequence_item");
	  super.new(name);
	endfunction

	function void do_copy(uvm_object rhs);
		  uart_sequence_item rhs_;
		 	$cast(rhs_, rhs);
		  super.do_copy(rhs);
		  delay = rhs_.delay;
		  data = rhs_.data;
		  fe = rhs_.fe;
		  lcr = rhs_.lcr;
		  pe = rhs_.pe;

	endfunction

	function bit do_compare(uvm_object rhs, uvm_comparer comparer);
	  uart_sequence_item rhs_;

	 $cast(rhs_, rhs);
	  return super.do_compare(rhs, comparer) &&
	         delay == rhs_.delay &&
	         data == rhs_.data &&
	         fe == rhs_.fe &&
	         lcr == rhs_.lcr &&
	         pe == rhs_.pe;
	endfunction

	function string convert2string();
	  string s;

	  $sformat(s, "%s\n", super.convert2string());
	  // Convert to string function reusing s:
	  $sformat(s, "%s\n delay\t%0d\n  data\t%0h\n", s, delay, data);
	  $sformat(s, "%s\n fe\t%0b\n lcr\t%0h\n pe\t%0b\n", s, fe, lcr, pe);
	  return s;

	endfunction



	function void do_print(uvm_printer printer);
	  if(printer.knobs.sprint == 0) begin
	    $display(convert2string());
	  end
	  else begin
	    printer.m_string = convert2string();
	  end
	endfunction

	function void  do_record(uvm_recorder recorder);
	  super.do_record(recorder);

	  `uvm_record_field("delay", delay)
	  `uvm_record_field("data", data)
	  `uvm_record_field("fe", fe)
	  `uvm_record_field("lcr", lcr)
	  `uvm_record_field("pe", pe)

	endfunction

endclass



	
function bit calParity (input logic [7:0] lcr, input logic[7:0] data);
  bit retParity;
    case (lcr[1:0])
        2'b00: retParity = ^data[4:0];
        2'b01: retParity = ^data[5:0];
        2'b10: retParity = ^data[6:0];
        2'b11: retParity = ^data[7:0];
    endcase
      if (!lcr[4]) begin
        retParity = ~retParity;
    	end
  return retParity;
endfunction

class uart_monitor extends uvm_component;

	`uvm_component_utils(uart_monitor)

	uvm_analysis_port #(uart_sequence_item) ap;

	virtual serial_if sline;

	uart_agent_cfg cfg;


	uart_sequence_item s_char;

	bit pe;
	bit fe;
	logic clk;
	logic parity;
	logic stop_bit;

	logic[7:0] rxData;

	function new(string name = "uart_monitor", uvm_component parent = null);
	  super.new(name, parent);
	endfunction

	function void build_phase(uvm_phase phase);
	  ap = new("ap", this);
	  if (!uvm_config_db #(uart_agent_cfg)::get(this, "", "uart_agent_cfg", cfg) )
	     `uvm_fatal("CONFIG_LOAD", "Cannot get() configuration uart_agent_config from uvm_config_db. Have you set() it?")
	  s_char = new("Serial_character");
	endfunction


	task run_phase(uvm_phase phase);
	  begin
	    repeat(3)
	    @(posedge sline.tick_rx);
	    forever
	      begin
	        fork
	          rxChar;
	        join_any
	         begin
	            s_char.data = rxData;
	            s_char.pe = pe;
	            s_char.fe = fe;
	            ap.write(s_char);
	            rxData = 0;
	          end
	       end
	  end
	endtask 



	task rxChar;
	  begin
	    fe = 0;
	    rxData = 0;
	     while((sline.sdata == 1'b1) || (sline.sdata == 1'bx))
	       @(posedge sline.tick_rx);
	     begin : rxCharDetect
	      repeat(23) // Sample on mid point of data field // 16 + 7 (16 of start_bit, 7 is middle of data)
	        @(posedge sline.tick_rx);
	      rxData[0] = sline.sdata;
	      bitPeriod;
	      rxData[1] = sline.sdata;
	      bitPeriod;
	      rxData[2] = sline.sdata;
	      bitPeriod;
	      rxData[3] = sline.sdata;
	      bitPeriod;
	      rxData[4] = sline.sdata;
	      if(cfg.lcr[1:0] > 2'b00) begin
 			begin
	          bitPeriod;
	          rxData[5] = sline.sdata;
	        end

	      end else if(cfg.lcr[3]) begin
	      	begin
	          bitPeriod;
	          parity = sline.sdata; 
	        end
	      end  
	      if (cfg.lcr[1:0] > 2'b00)
	        begin
	          if (cfg.lcr[1:0] > 2'b01)
	            begin
	              bitPeriod;
	              rxData[6] = sline.sdata;
	            end
	          else if (cfg.lcr[3])
	            begin
	              bitPeriod;
	              parity = sline.sdata;
	            end
	        end
	      if (cfg.lcr[1:0] > 2'b01)
	        begin
	          if (cfg.lcr[1:0] > 2'b10)
	            begin
	              bitPeriod;
	              rxData[7] = sline.sdata;
	            end
	          else if (cfg.lcr[3])
	            begin
	              bitPeriod;
	              parity = sline.sdata;
	            end
	        end
	      if (cfg.lcr[3] && (cfg.lcr[1:0] > 2'b10) )
	        begin
	          bitPeriod;
	          parity = sline.sdata;
	        end
	      if (cfg.lcr[3])
	        begin
	          pe = logic'(calParity (cfg.lcr, rxData));
	          if (pe != parity)
	            pe = 1;
	          else
	            pe = 0;
	        end
	       bitPeriod;
	       stop_bit = sline.sdata;
			if(stop_bit == 1'b0) fe =1;

	       if(cfg.lcr[2]) begin
	            bitPeriod;
	            stop_bit = sline.sdata;
	            if(stop_bit == 1'b0) fe =1;

	       end
	      
	    end 
	  end
	endtask

	task bitPeriod;
	  begin
	    repeat(16)
	      @(posedge sline.tick_rx);
	  end
	endtask

endclass
typedef uvm_sequencer #(uart_sequence_item) uart_sequencer;




class uart_driver extends uvm_driver #(uart_sequence_item, uart_sequence_item);

`uvm_component_utils(uart_driver)

function new(string name = "uart_driver", uvm_component parent = null);
  super.new(name, parent);
endfunction

virtual serial_if sline;

uart_sequence_item pkt;

bit tick_rx;

task send_pkts;
// Receives a character according to the appropriate word format
  integer bitPtr = 0;
  begin
    sline.sdata = 1;
    forever
      begin
        seq_item_port.get_next_item(pkt);
        // Variable delay
        repeat(pkt.delay)
          @(posedge sline.tick_rx);
        sline.sdata = 0;
        bitPtr = 0;
        bitPeriod;
        // Data bits 0 to 4
        while(bitPtr < 5)
          begin
            sline.sdata = pkt.data[bitPtr];
            bitPeriod;
            bitPtr++;
          end
        // Data bits 5 to 7
        if (pkt.lcr[1:0] > 2'b00)
          begin
            sline.sdata = pkt.data[5];
            bitPeriod;
          end
        if (pkt.lcr[1:0] > 2'b01)
          begin
            sline.sdata = pkt.data[6];
            bitPeriod;
          end
        if (pkt.lcr[1:0] > 2'b10)
          begin
            sline.sdata = pkt.data[7];
            bitPeriod;
          end
        // Parity
        if (pkt.lcr[3])
          begin
            sline.sdata = logic'(calParity(pkt.lcr, pkt.data));
            bitPeriod;
          end
        sline.sdata = 1;
        bitPeriod;

        if(pkt.lcr[2]) begin
        	sline.sdata = 1;
        	bitPeriod;

        end
       
     
        seq_item_port.item_done();
      end
  end
endtask

task bitPeriod;
  begin
    repeat(16)
      @(posedge sline.tick_rx);
  end
endtask

task run_phase(uvm_phase phase);
    send_pkts;
endtask


endclass




class uart_agent extends uvm_agent;

`uvm_component_utils(uart_agent)

uvm_analysis_port #(uart_sequence_item) ap;

uart_driver m_uart_driver;
uart_sequencer m_uart_sequencer;
uart_monitor m_uart_monitor;

uart_agent_cfg cfg;


function new(string name = "uart_agent", uvm_component parent = null);
  super.new(name, parent);
endfunction

function void build_phase(uvm_phase phase);
  ap = new("ap", this);
  m_uart_monitor = uart_monitor::type_id::create("m_uart_monitor", this);
  if (!uvm_config_db #(uart_agent_cfg)::get(this, "", "uart_agent_cfg", cfg) )
     `uvm_fatal("CONFIG_LOAD", "Cannot get() configuration uart_agent_cfg from uvm_config_db. Have you set() it?")
  if(cfg.ACTIVE)
    begin
      m_uart_driver = uart_driver::type_id::create("m_uart_driver", this);
      m_uart_sequencer = uart_sequencer::type_id::create("m_uart_sequencer", this);
    end
endfunction

function void connect_phase(uvm_phase phase);
  m_uart_monitor.sline = cfg.sline;
  if(cfg.ACTIVE)
    begin
      m_uart_driver.seq_item_port.connect(m_uart_sequencer.seq_item_export);
      m_uart_driver.sline = cfg.sline;
    end
  m_uart_monitor.ap.connect(ap);
endfunction

endclass
endpackage
