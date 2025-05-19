package uart_agent_pkg;
  import uvm_pkg::*;
  `include "uvm_macros.svh"
  `include "common_defines.sv"

  function bit calParity(input logic [7:0] lcr, input logic [7:0] data);

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

  class uart_agent_cfg extends uvm_object;

    `uvm_object_utils(uart_agent_cfg)
    virtual serial_if sline;
    rand logic [7:0] lcr;
    rand logic [2:0] ocr;
    rand logic [4:0] fcr;
    rand logic [2:0] ier;

    function new(string name = "UART_AGENT_CFG");
      super.new(name);
    endfunction
  endclass

  class uart_transaction extends uvm_sequence_item;

    `uvm_object_utils(uart_transaction)

    // data send to RX // 1 + 8 + 1 + 2
    rand logic [7:0] data;
    rand logic [7:0] lcr;
    rand logic fe;

    rand logic pe;

   	function new(string name = "uart_transaction");
	  super.new(name);
	endfunction



    function void do_copy(uvm_object rhs);

      uart_transaction _pkt;

      $cast(_pkt, rhs);
      super.do_copy(rhs);
      data = _pkt.data;
      fe = _pkt.fe;
      pe = _pkt.pe;

    endfunction



  endclass



  class uart_sequencer extends uvm_sequencer #(uart_transaction);

    `uvm_component_utils(uart_sequencer)
    function new(string name, uvm_component parent);


      super.new(name, parent);

    endfunction


  endclass





  class uart_driver extends uvm_driver #(uart_transaction);

    `uvm_component_utils(uart_driver)

    // Declare variables first
    virtual serial_if sline;
    uart_transaction pkt;

    // Constructor
    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        pkt = new("UART_PKT");
        `LOG(`UART_DRIVER, "UART DRIVER BUILD PHASE")
        
        
    endfunction
        integer bitPtr = 0;

    task run_phase(uvm_phase phase);
      if (sline == null)
            `uvm_fatal("NULL_IF", "serial_if interface (cfg.sline) is NULL. Make sure it was set properly using uvm_config_db::set.")
        else
            `uvm_info("IF_CHECK", "serial_if interface connected successfully.", UVM_LOW)
      begin
        sline.sdata = 1; 
        forever begin

            seq_item_port.get_next_item(pkt);

            `LOG(`UART_DRIVER, "UART DRIVER starts driving")
            @(posedge sline.tick_tx); 

            sline.sdata = 0;
            wait(sline.tick_tx);

            bitPtr = 0;

            while (bitPtr < (pkt.lcr[1:0] + 5)) begin
                sline.sdata = pkt.data[bitPtr];
                wait(sline.tick_tx);
                bitPtr++;
            end

            if (pkt.lcr[3]) begin 
                sline.sdata = logic'(calParity(pkt.lcr, pkt.data));
                wait(sline.tick_tx);
            end

            sline.sdata = 1;
            wait(sline.tick_tx);

            if (pkt.lcr[2]) begin 
                sline.sdata = 1;
                wait(sline.tick_tx);
            end

            seq_item_port.item_done();
            `LOG(`UART_DRIVER, "UART DRIVER finished driving")
        end
      end
    endtask

endclass



  class uart_monitor extends uvm_monitor;
  
    `uvm_component_utils(uart_monitor)

    virtual serial_if sline;

    uvm_analysis_port #(uart_transaction) ap;

    function new(string name, uvm_component parent = null);

      super.new(name, parent);

    endfunction
    uart_agent_cfg cfg;
    uart_transaction s_char;




  	function void build_phase(uvm_phase phase);
        super.build_phase(phase);
	  if (!uvm_config_db #(uart_agent_cfg)::get(this, "", `UART_AGENT_CFG, cfg) )
	     `uvm_fatal("CONFIG_LOAD", "Cannot get() configuration uart_agent_config from uvm_config_db. Have you set() it?")
	    s_char = new("Serial_character");
      	  ap = new("ap", this);

      `LOG(`UART_MONITOR, "UART MONITOR BUILD PHASE")
      

	endfunction


    bit pe;
    bit fe;
    logic [7:0] data;
    logic parity;
    logic stop_bit;


    task receive_pkt();
        fe = 0;
        data = 0;
        @(posedge sline.tick_rx);
        while(sline.sdata == 1 || sline.sdata == 1'bx || sline.sdata == 1'bz) begin
          @(posedge sline.tick_rx);
        end
        // start bit detected
        wait(sline.tick_tx);
        repeat(7) @(posedge sline.tick_rx);
        data[0] = sline.sdata;
        wait(sline.tick_tx);
        data[1] = sline.sdata;
        wait(sline.tick_tx);
        data[2] = sline.sdata;
        wait(sline.tick_tx);
        data[3] = sline.sdata;
        wait(sline.tick_tx);
        data[4] = sline.sdata;
        wait(sline.tick_tx);
        if(cfg.lcr[1:0] > 2'b00) begin
	 				begin
		          data[5] = sline.sdata;
                    wait(sline.tick_tx);
		        end
	end else if(cfg.lcr[3]) begin
		      	begin
		          parity = sline.sdata;
                    wait(sline.tick_tx); 
		 end
		      end  
		      if (cfg.lcr[1:0] > 2'b00)
		        begin
		          if (cfg.lcr[1:0] > 2'b01)
		            begin
		              data[6] = sline.sdata;
                        wait(sline.tick_tx);
		            end
		          else if (cfg.lcr[3])
		            begin
		              parity = sline.sdata;
                    wait(sline.tick_tx); 
		            end
		        end
		      if (cfg.lcr[1:0] > 2'b01)
		        begin
		          if (cfg.lcr[1:0] > 2'b10)
		            begin
                        data[7] = sline.sdata;
                            wait(sline.tick_tx);
		            end
		          else if (cfg.lcr[3])
		            begin
		              parity = sline.sdata;
                    wait(sline.tick_tx); 
		            end
		        end
		      if (cfg.lcr[3] && (cfg.lcr[1:0] > 2'b10) )
		        begin
		           parity = sline.sdata;
                    wait(sline.tick_tx); 
		        end
		      if (cfg.lcr[3])
		        begin
		          pe = logic'(calParity (cfg.lcr, data));
		          if (pe != parity)
		            pe = 1;
		          else
		            pe = 0;
		        end
		       stop_bit = sline.sdata;
				if(stop_bit == 1'b0) fe =1;
                wait(sline.tick_tx);

		       if(cfg.lcr[2]) begin
		            stop_bit = sline.sdata;
		            if(stop_bit == 1'b0) fe =1;
		       end


    endtask


    task run_phase(uvm_phase phase);
        `LOG(`UART_MONITOR, "UART MONITOR RUN PHASE")
    
        forever begin
    
            receive_pkt();
            s_char.data = data;
            s_char.fe = fe;
            s_char.pe = pe;
            ap.write(s_char);
            `LOG(`UART_MONITOR, "UART MONITOR captured")
    
        end

    endtask



  endclass

    class uart_agent extends uvm_agent;
    
        `uvm_component_utils(uart_agent)
    
        uart_driver    driver;
        uart_sequencer sequencer;
        uart_monitor   monitor;
        uart_agent_cfg    cfg;

        uvm_analysis_port #(uart_transaction) ap;
    
        function new(string name, uvm_component parent);
    
        super.new(name, parent);
    
        endfunction
    
        function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            ap = new("ap", this);
            `LOG(`UART_AGENT, "UART AGENT BUILD PHASE")
            if (!uvm_config_db #(uart_agent_cfg)::get(this, "", `UART_AGENT_CFG, cfg) )
            `uvm_fatal("CONFIG_LOAD", "Cannot get() configuration uart_agent_config from uvm_config_db. Have you set() it?")
                
        if (cfg.sline == null)
            `uvm_fatal("NULL_IF", "serial_if interface (cfg.sline) is NULL. Make sure it was set properly using uvm_config_db::set.")
        else
            `uvm_info("IF_CHECK", "serial_if interface connected successfully.", UVM_LOW)
            driver = uart_driver::type_id::create("driver", this);
            sequencer = uart_sequencer::type_id::create("sequencer", this);
            monitor = uart_monitor::type_id::create("monitor", this);
         
        endfunction

        function void connect_phase(uvm_phase phase);
            super.connect_phase(phase);
            `LOG(`UART_AGENT, "UART AGENT CONNECT PHASE")
            monitor.sline = cfg.sline;
            driver.sline = cfg.sline;
            driver.seq_item_port.connect(sequencer.seq_item_export);

  
            monitor.ap.connect(ap);
        endfunction



    endclass    





endpackage































