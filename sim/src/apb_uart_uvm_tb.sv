// `include "interrupt_if.sv"
// `include "apb_if.sv"
// `include "serial_if.sv"
// `include "apb_agent_pkg.sv"
// `include "uart_agent_pkg.sv"
// `include "apb_monitor.sv"
// `include "uart_reg_pkg.sv"
// `include "uart_env_pkg.sv"
// `include "uart_sequence_pkg.sv"
// `include "apb_sequence_pkg.sv"
// `include "uart_vsequence_pkg.sv"
// `include "uart_test_pkg.sv"

module apb_uart_uvm_tb();

import uvm_pkg::*;
import uart_test_pkg::*;
import common_pkg::*;

logic clk;
logic preset_n;

apb_if APB(.clk(clk), .preset_n(preset_n));
serial_if RX_UART();
serial_if TX_UART();
interrupt_if IRQ();
wire rts_n;

apb_uart DUT (
  .clk(clk),
  .preset_n(preset_n),
  .paddr(APB.paddr),
  .pwdata(APB.pwdata),
  .prdata(APB.prdata),
  .pwrite(APB.pwrite),
  .penable(APB.penable),
  .psel(APB.psel),
  .pready(APB.pready),
  .pslverr(APB.pslverr),
  .pstrb(4'b0001),
  .irq(IRQ.irq),

  .tx(TX_UART.sdata),
  .rx(RX_UART.sdata),
  .cts_n   (1'b0),
  .rts_n (rts_n),
  .baud_o(IRQ.baud_o)
  );
  // apb_assertion apb_assertion_inst(
  //   .clk(clk),    
  //   .preset_n(preset_n),  
  //   .psel(APB.psel),
  //   .penable(APB.penable),
  //   .pwrite(APB.pwrite),
  //   .paddr(APB.paddr),
  //   .pstrb   (APB.pstrb),
  //   .pwdata(APB.pwdata),
  //   .prdata(APB.prdata),
  //   .pready(APB.pready),
  //   .pslverr(APB.pslverr)
  // );



// UVM virtual interface handling and run_test()
initial begin
  uvm_config_db #(virtual apb_if)::set(null, "uvm_test_top", "APB", APB);
  uvm_config_db #(virtual serial_if)::set(null, "uvm_test_top", "RX_UART", RX_UART);
  uvm_config_db #(virtual serial_if)::set(null, "uvm_test_top", "TX_UART", TX_UART);
  uvm_config_db #(virtual interrupt_if)::set(null, "uvm_test_top", "IRQ", IRQ);
  run_test("word_format_poll_test");
end


initial begin
  clk = 0;
  preset_n = 0;
  repeat(10) begin
    #1ns clk = ~clk;
  end
  preset_n = 1;
  forever begin
    #1ns clk = ~clk;
  end


end

assign IRQ.clk = clk;
assign RX_UART.tick_rx = IRQ.baud_o;
assign TX_UART.tick_rx = IRQ.baud_o;

initial begin
          $dumpfile("dump_uvm.vcd");
          $dumpvars;
          #10000us
          $finish;
end 

endmodule