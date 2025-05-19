package apb_agent_pkg;

  import uvm_pkg::*;
  `include "uvm_macros.svh"
  `include "common_defines.sv"
  import common_pkg::*;

  class apb_agent_cfg extends uvm_object;
    `uvm_object_utils(apb_agent_cfg)

    virtual apb_if APB;


    function new(string name = "APB_AGENT_CFG");
      super.new(name);
    endfunction
  endclass


  class apb_transaction extends uvm_sequence_item;

    rand logic [11:0] paddr;
    rand logic [31:0] pdata;
    rand logic pwrite;
    rand logic [3:0] pstrb;

    constraint pstrb_c { pstrb == 4'b0001; }


    `uvm_object_utils_begin(apb_transaction)
      `uvm_field_int(pwrite, UVM_ALL_ON)
      `uvm_field_int(pdata, UVM_ALL_ON)
      `uvm_field_int(paddr, UVM_ALL_ON)
      `uvm_field_int(pstrb, UVM_ALL_ON)
    `uvm_object_utils_end




    function void do_copy(uvm_object rhs);
      apb_transaction _pkt;
      $cast(_pkt, rhs);
      super.do_copy(rhs);
      paddr   = _pkt.paddr;
      pdata  = _pkt.pdata;
      pwrite  = _pkt.pwrite;
      pstrb  = _pkt.pstrb;


    endfunction

  endclass

typedef uvm_sequencer #(apb_transaction) apb_sequencer;

  class apb_driver extends uvm_driver #(apb_transaction);
    `uvm_component_utils(apb_driver)
    virtual apb_if APB;
    apb_agent_cfg  m_cfg;

    function new(string name, uvm_component parent = null);
      super.new(name, parent);
      `LOG(`APB_DRIVER, "APB DRIVER NEW")
    endfunction

    // build phase
    function void build_phase(uvm_phase phase);
      super.build_phase(phase);
      `LOG(`APB_DRIVER, "APB DRIVER BUILD PHASE")
      if (!uvm_config_db#(apb_agent_cfg)::get(this, "", `APB_AGENT_CFG, m_cfg)) begin
        `uvm_fatal("No apb_cfg", {
                   "Configuration must be set for: ", get_full_name(), ".APB_AGENT_CFG"});
      end
    endfunction

    // connect phase

    function void connect_phase(uvm_phase phase);
      super.connect_phase(phase);
      `LOG(`APB_DRIVER, "APB DRIVER CONNECT PHASE")
    
    endfunction



    

    task apb_transfer(apb_transaction req);
      @(posedge APB.clk);
      APB.psel   <= 1'b1;
      APB.paddr  <= req.paddr;
      APB.pwdata <= req.pdata;
      APB.pstrb  <= req.pstrb;
      APB.pwrite <= req.pwrite;
      @(posedge APB.clk);
      APB.penable <= 1'b1;
      wait (APB.pready);
      APB.psel <= 1'b1;
      APB.penable <= 1'b1;

    endtask
    // run phase

    task run_phase(uvm_phase phase);
      apb_transaction req;

      APB.psel <= 0;
      APB.penable <= 0;
      APB.paddr <= 0;
      APB.pwdata <= 0;
      APB.pstrb <= 0;
      @(posedge APB.preset_n);


      forever begin
        seq_item_port.get_next_item(req);
        apb_transfer(req);
        `LOG(`APB_DRIVER, "APB DRIVER finished driving")
        seq_item_port.item_done();
      end


    endtask

  endclass

  class apb_monitor extends uvm_monitor;

    `uvm_component_utils(apb_monitor)
    virtual apb_if APB;
    uvm_analysis_port #(apb_transaction) ap;
    function new(string name, uvm_component parent = null);
      super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
      super.build_phase(phase);
      `LOG(`APB_MONITOR, "UVM MONITOR BUILD PHASE")
      ap = new("ap", this);
    endfunction


    // run phase

    task run_phase(uvm_phase phase);
      apb_transaction item;
      apb_transaction cloned_item;
      item = apb_transaction::type_id::create("item");

      forever begin
        wait (APB.psel && APB.penable);
        ;
        wait (APB.pready);
            item.paddr = APB.paddr;
		        item.pwrite = APB.pwrite;
		        if(APB.pwrite)
		          begin
		            item.pdata = APB.pwdata;
		          end
		        else
		          begin
		            item.pdata = APB.prdata;
		         end
        wait (!APB.pready);
        `LOG(`APB_MONITOR, "APB MONITOR captured")
        $cast(cloned_item, item.clone());
        ap.write(cloned_item);
      end


    endtask


  endclass

  class apb_agent extends uvm_agent;

    `uvm_component_utils(apb_agent)
    apb_driver    driver;
    apb_sequencer sequencer;
    apb_monitor   monitor;
    apb_agent_cfg    apb_cfg;

    uvm_analysis_port #(apb_transaction) ap;

    function new(string name, uvm_component parent = null);
      super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
      `LOG(`APB_AGENT, "APB AGENT BUILD PHASE")
      if (!uvm_config_db#(apb_agent_cfg)::get(this, "", `APB_AGENT_CFG, apb_cfg))
        `uvm_fatal("NO_CFG", {"Configuration must be set for: ", get_full_name(), `APB_AGENT_CFG});
      monitor = apb_monitor::type_id::create("monitor", this);
        driver    = apb_driver::type_id::create("driver", this);
        sequencer = apb_sequencer::type_id::create("sequencer", this);
    

	  ap = new("ap", this);
    endfunction



    function void connect_phase(uvm_phase phase);
      super.connect_phase(phase);
      monitor.APB = apb_cfg.APB;
      monitor.ap.connect(ap);
      driver.APB = apb_cfg.APB;
      driver.seq_item_port.connect(sequencer.seq_item_export);
    endfunction
  endclass



// copy https://www.chipverify.com/uvm/uvm-register-environment
	class reg2apb_adapter extends uvm_reg_adapter;

	  `uvm_object_utils(reg2apb_adapter)

	   function new(string name = "reg2apb_adapter");
	      super.new(name);
	   endfunction

		function uvm_sequence_item reg2bus(const ref uvm_reg_bus_op rw);
		    apb_transaction apb = apb_transaction::type_id::create("apb");
		    			// `uvm_info("FUNCTION", "REG2BUS", UVM_LOW);
		    // 		if(rw.addr == ADDR_OCR) begin
			  //      `uvm_info("REG2BUS", $sformatf("Calling reg2bus: addr=0x%0h, kind=%s, data=0x%0h",
			  //                              rw.addr, (rw.kind == UVM_READ ? "READ" : "WRITE"), rw.data), UVM_LOW);
			  //  end
		    apb.pwrite = (rw.kind == UVM_READ) ? 0 : 1;
		    apb.paddr = rw.addr;
		    apb.pdata = rw.data;

		    return apb;
		 endfunction

	  function void bus2reg(uvm_sequence_item bus_item,
	                                ref uvm_reg_bus_op rw);
	    apb_transaction apb;
	    			// `uvm_info("FUNCTION", "bus2reg", UVM_LOW);

	    if (!$cast(apb, bus_item)) begin
	      `uvm_fatal("NOT_APB_TYPE","Provided bus_item is not of the correct type")
	      return;
	    end
	    rw.kind = apb.pwrite ? UVM_WRITE : UVM_READ;
	    rw.addr = apb.paddr;
	    rw.data = apb.pdata;
	    rw.status = UVM_IS_OK;
	    //  `uvm_info("BUS2REG", $sformatf("Converted bus item: kind=%s, addr=0x%0h, data=0x%0h",
      //         (rw.kind == UVM_WRITE) ? "WRITE" : "READ",
      //         rw.addr, rw.data), UVM_LOW)
	  endfunction

	endclass






endpackage
