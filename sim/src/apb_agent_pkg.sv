package apb_agent_pkg;
	import uvm_pkg::*;
	`include "uvm_macros.svh"
	import common_pkg::*;
	// config class
	class apb_agent_cfg extends uvm_object;
		// factory registration
		`uvm_object_utils(apb_agent_cfg)
		virtual apb_if APB;
		uvm_active_passive_enum active = UVM_ACTIVE; // sequencer and driver
		bit has_functional_coverage = 0;
		bit has_scorebard = 0;


		 function new(string name =  "apb_agent_cfg");
		 	super.new(name);
		 endfunction

	endclass 
	// transaction
	class apb_sequence_item extends uvm_sequence_item;
		`uvm_object_utils(apb_sequence_item)

		// attributes
		rand logic [11:0] paddr;
		rand logic [31:0] pdata;
		rand logic pwrite;

		rand int delay;
		rand delay_e delay_kind;


		constraint delay_order_c { solve delay_kind before delay; }
			constraint delay_c {
			(delay_kind == ZERO) -> delay == 0;
			(delay_kind == SHORT) -> delay inside { [1:10] };
			(delay_kind == MEDIUM) -> delay inside { [11:99] };
			(delay_kind == LARGE) -> delay inside { [100:999] };
			(delay_kind == MAX ) -> delay == 1000;
			delay >=0; delay <= 1000; }
		// methods
		function new(string name = "apb_sequence_item");
			super.new(name);
		endfunction

		function void do_copy(uvm_object rhs);
		    apb_sequence_item _pkt;
		    $cast(_pkt, rhs);
		    super.do_copy(rhs);
		    paddr  = _pkt.paddr;
		    pdata  = _pkt.pdata;
		    pwrite = _pkt.pwrite;
		    delay  = _pkt.delay;
		    `uvm_info(get_name(), "In apb_sequence_item::do_copy()", UVM_LOW)
		endfunction


		function bit do_compare(uvm_object rhs, uvm_comparer comparer);
			apb_sequence_item _pkt;
			$cast(_pkt, rhs);
			return super.do_compare(rhs, comparer) &&
		         paddr == _pkt.paddr &&
		         pdata == _pkt.pdata &&
		         pwrite   == _pkt.pwrite;
		   `uvm_info(get_name(), "In apb_sequence_item::do_compare()", UVM_LOW)
		endfunction

		function string convert2string();
		  string s;

		  $sformat(s, "%s\n", super.convert2string());
		  $sformat(s, "%s\n paddr\t%0h\n [data\t%0h\n pwrite\t%0b\n", s, paddr, pdata, pwrite);
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

		  `uvm_record_field("paddr", paddr)
		  `uvm_record_field("pdata", pdata)
		  `uvm_record_field("pwrite", pwrite)
		  `uvm_record_field("delay", delay);
		endfunction:do_record

	endclass


	// sequencer receives apb_sequence
	typedef uvm_sequencer #(apb_sequence_item) apb_sequencer;

	// driver -> convert transaction-level stimulus into pin-level stimulus
	class apb_driver extends uvm_driver #(apb_sequence_item, apb_sequence_item);

		`uvm_component_utils(apb_driver)
		virtual apb_if APB;
		apb_agent_cfg m_cfg;

		function new(string name = "apb_driver", uvm_component parent = null);
		  super.new(name, parent);
		endfunction



		task run_phase(uvm_phase phase);
		  apb_sequence_item req;
		  apb_sequence_item rsp;

		  //reset task
		  APB.psel <= 0;
		  APB.penale <= 0;
		  APB.paddr <= 0;
		  // Wait for reset to clear
		  @(negedge APB.preset_n);

		  forever
		   begin
		    APB.psel <= 0;
		    APB.penale <= 0;
		    APB.paddr <= 0;
		    seq_item_port.get_next_item(req);
		    repeat(req.delay)
		    @(posedge APB.clk);
		     APB.psel <= 1'b1;
		     APB.paddr <= req.paddr;
		     APB.pwdata <= req.pdata;
		     APB.pwrite <= req.pwrite;
		     @(posedge APB.clk);
		     APB.penale <= 1;
		     while (!APB.pready)
		      @(posedge APB.clk);
		     APB.penale <= 0;
		     APB.psel <= 1'b0;
		     if(APB.write == 0)
		        begin
		        	req.pdata = APB.prdata;
		        end
		    seq_item_port.item_done();
		   end

		endtask


		function void build_phase(uvm_phase phase);
		  if(!uvm_config_db #(apb_agent_cfg)::get(this, "", "apb_agent_cfg", m_cfg)) begin
		    `uvm_error("build_phase", "Unable to get apb_agent_cfg")
		  end
		endfunction



	endclass

	// coverage monitor
	class apb_coverage_monitor extends uvm_subscriber #(apb_sequence_item);

		`uvm_component_utils(apb_coverage_monitor);
		apb_sequence_item item;
		covergroup apb_cov;
			OPCODE: coverpoint item.pwrite {
			  bins write = {1};
			  bins read = {0};
			}
		endgroup

		function new(string name = "apb_coverage_monitor", uvm_component parent = null);
			  super.new(name, parent);
			  apb_cov = new();
		endfunction

		function void write(T t);
			  item = t;
			  apb_cov.sample();
		endfunction


	endclass


	class apb_monitor extends uvm_monitor;

		`uvm_component_utils(apb_monitor);

		virtual apb_if APB;

		uvm_analysis_port #(apb_sequence_item) ap; // producer 


		function new(string name = "apb_monitor", uvm_component parent = null);
		  super.new(name, parent);
		endfunction

		function void build_phase(uvm_phase phase);
		  ap = new("ap", this);
		endfunction

		task run_phase(uvm_phase phase);
		  apb_sequence_item item;
		  apb_sequence_item cloned_item;

		  item = apb_sequence_item::type_id::create("item");

		  forever begin
		    @(posedge APB.clk);
		    if(APB.pready && APB.psel)
		      begin
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
		        // Clone and publish the cloned item to the subscribers
		        $cast(cloned_item, item.clone());
		        ap.write(cloned_item);
		      end
		  end
		endtask




	endclass

	class apb_agent extends uvm_agent;
		// include sequencer, driver and monitor
		
		`uvm_component_utils(apb_agent)

		apb_agent_cfg m_cfg;

		uvm_analysis_port #(apb_sequence_item) ap;

		apb_monitor   m_monitor;
		apb_sequencer m_sequencer;
		apb_driver    m_driver;
		apb_coverage_monitor m_fcov_monitor;

		function new(string name = "apb_agent", uvm_component parent = null);
		  super.new(name, parent);
		endfunction

		function void build_phase(uvm_phase phase);
		  if(!uvm_config_db #(apb_agent_cfg)::get(this, "", "apb_agent_cfg", m_cfg)) begin
		    `uvm_error("build_phase", "APB agent config not found")
		  end
		  // Monitor is always present
		  m_monitor = apb_monitor::type_id::create("m_monitor", this);
		  if(m_cfg.active == UVM_ACTIVE) begin
		    m_driver = apb_driver::type_id::create("m_driver", this);
		    m_sequencer = apb_sequencer::type_id::create("m_sequencer", this);
		  end
		  if(m_cfg.has_functional_coverage) begin
		    m_fcov_monitor = apb_coverage_monitor::type_id::create("m_fcov_monitor", this);
		  end
		  ap = new("ap", this);
		endfunction

		function void connect_phase(uvm_phase phase);
		  m_monitor.APB = m_cfg.APB;
		  m_monitor.ap.connect(ap);
		  // Only connect the driver and the sequencer if active
		  if(m_cfg.active == UVM_ACTIVE) begin
		    m_driver.seq_item_port.connect(m_sequencer.seq_item_export);
		    m_driver.APB = m_cfg.APB;
		  end
		  if(m_cfg.has_functional_coverage) begin
		    m_monitor.ap.connect(m_fcov_monitor.analysis_export);
		  end

		endfunction



	endclass

	class apb_seq extends uvm_sequence #(apb_sequence_item);

	
		`uvm_object_utils(apb_seq)
		function new(string name = "apb_seq");
			  super.new(name);
		endfunction

		task body;
		  apb_sequence_item req;
		  begin
		    req = apb_sequence_item::type_id::create("req");
		    start_item(req);
		    if(!req.randomize()) begin
		      `uvm_error("body", "req randomization failure")
		    end
		    finish_item(req);
		  end

		endtask


	endclass



	class apb_read_seq extends uvm_sequence #(apb_sequence_item);

		
		`uvm_object_utils(apb_read_seq)

		rand logic [11:0] paddr;
		logic [31:0] pdata;


		function new(string name = "apb_read_seq");
		  super.new(name);
		endfunction

		task body;
		  apb_sequence_item req = apb_sequence_item::type_id::create("req");;

		  begin
		    start_item(req);
		    req.pwrite = 0;
		    req.paddr = paddr;
		    finish_item(req);
		    pdata = req.pdata;
		  end

		endtask

	endclass

	class apb_write_seq extends uvm_sequence #(apb_sequence_item);

		
		`uvm_object_utils(apb_write_seq)


		rand logic [11:0] paddr;
		rand logic [31:0] pdata;
		function new(string name = "apb_write_seq");
		  super.new(name);
		endfunction

		task body;
		  apb_sequence_item req = apb_sequence_item::type_id::create("req");;

		  begin
		    start_item(req);
		    req.pwrite = 1;
		    req.paddr = paddr;
		    req.pdata = pdata;
		    finish_item(req);
		  end

		endtask

	endclass


// copy https://www.chipverify.com/uvm/uvm-register-environment
	class reg2apb_adapter extends uvm_reg_adapter;

	  `uvm_object_utils(reg2apb_adapter)

	   function new(string name = "reg2apb_adapter");
	      super.new(name);
	   endfunction

		function uvm_sequence_item reg2bus(const ref uvm_reg_bus_op rw);
		    apb_sequence_item apb = apb_sequence_item::type_id::create("apb");
		    apb.pwrite = (rw.kind == UVM_READ) ? 0 : 1;
		    apb.paddr = rw.addr;
		    apb.pdata = rw.data;
		    return apb;
		 endfunction

	  function void bus2reg(uvm_sequence_item bus_item,
	                                ref uvm_reg_bus_op rw);
	    apb_sequence_item apb;
	    if (!$cast(apb, bus_item)) begin
	      `uvm_fatal("NOT_APB_TYPE","Provided bus_item is not of the correct type")
	      return;
	    end
	    rw.kind = apb.pwrite ? UVM_WRITE : UVM_READ;
	    rw.addr = apb.paddr;
	    rw.data = apb.pdata;
	    rw.status = UVM_IS_OK;
	  endfunction

	endclass






endpackage 