import common_def::*;
interface apb_assertion(
	input clk,    
	input preset_n,  
	input psel,
	input penable,
	input pwrite,
	input[11:0] paddr,
	input[3:0] pstrb,
	input[31:0] pwdata,
	output [31:0] prdata,
	output pready,
	output pslverr
	);

	function bit is_valid_apb_addr(logic [11:0] addr);
  		case (addr)
    		ADDR_TDR,
    		ADDR_RDR,
    		ADDR_LCR,
    		ADDR_OCR,
    		ADDR_LSR,
    		ADDR_FCR,
    		ADDR_IER,
    		ADDR_IIR,
    		ADDR_HCR: return 1;
    		default : return 0;
  		endcase
	endfunction

	property SIGNAL_VALID(signal);
		@(posedge clk) !$isunknown(signal);
	endproperty;

	// check psel, penalbe, pwrite and preset_n valid
	RESET_VALID: assert property(SIGNAL_VALID(preset_n));
	PSEL_VALID : assert property(SIGNAL_VALID(psel));

	// control signal valid

	property CONTROL_SIGNAL_VALID(signal);
		@(posedge clk) psel |-> !$isunknown(signal);

	endproperty
	PADDR_VALID: assert property(CONTROL_SIGNAL_VALID(paddr));
	PWRITE_VALID: assert property(CONTROL_SIGNAL_VALID(pwrite));
	PENABLE_VALID: assert property(CONTROL_SIGNAL_VALID(penable));

	// address match with list register
	property PSLVERR_FOR_INVALID_ADDR;
  		@(posedge clk) (psel && penable && !pwrite && !is_valid_apb_addr(paddr)) |-> pslverr;
	endproperty
	PSLVERR_ON_INVALID_ADDRESS_ASSERT: assert property(PSLVERR_FOR_INVALID_ADDR);

	//Pstrb must valid
	property PSTRB_VALID;
  		@(posedge clk) (psel && pwrite) |-> !$isunknown(pstrb);
	endproperty
	PSTRB_VALID_ASSERT: assert property(PSTRB_VALID);

	// write data valid
	property PWDATA_SIGNAL_VALID;
	  @(posedge clk)
	  (psel && pwrite) |-> !$isunknown(pwdata);
	endproperty

	PWDATA_VALID: assert property(PWDATA_SIGNAL_VALID);

	property PENABLE_SIGNAL_VALID(signal);
	  @(posedge clk)
	  $rose(penable) |-> !$isunknown(signal)[*1:$] ##1 $fell(penable);
	endproperty
	PREADY_VALID: assert property(PENABLE_SIGNAL_VALID(pready));
	PSLVERR_VALID: assert property(PENABLE_SIGNAL_VALID(pslverr));

	property PRDATA_SIGNAL_VALID;
	  @(posedge clk)
	  ($rose(penable && !pwrite && pready)) |-> !$isunknown(prdata)[*1:$] ##1 $fell(penable);
	endproperty

	property PENABLE_DEASSERTED;
	  @(posedge clk)
	  $rose(penable && pready) |=> !penable;
	endproperty

	property PSEL_TO_PENABLE_ACTIVE;
	  @(posedge clk)
	  ($rose(psel)) |=> penable;
	endproperty

	property PSEL_ASSERT_SIGNAL_STABLE(signal);
	  @(posedge clk)
	  ($rose(psel)) |=> $stable(signal)[*1:$] ##1 $fell(penable);
	endproperty
	PWRITE_STABLE: assert property(PSEL_ASSERT_SIGNAL_STABLE(pwrite));
	PADDR_STABLE: assert property(PSEL_ASSERT_SIGNAL_STABLE(paddr));
	PWDATA_STABLE: assert property(PSEL_ASSERT_SIGNAL_STABLE(pwdata & pwrite));
	
endinterface 	