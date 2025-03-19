`timescale 1ns / 1ps

module apb_uart_tb;
  import apb_package::*;


  apb_interface apb_if ();

  apb_uart dut (.apb_if(apb_if.slave));

  logic [31:0] read_data;

  task apb_write(input logic [11:0] addr, input logic [31:0] data);
    apb_if.apb_slv.paddr   = addr;
    apb_if.apb_slv.pwrite  = 1'b1;
    apb_if.apb_slv.pwdata  = data;
    apb_if.apb_slv.penable = 1'b0;
    apb_if.psel            = 1'b1;
    apb_if.apb_slv.pstrb   = 4'd1;
    #10;
    apb_if.apb_slv.penable = 1'b1;
    #10;
    apb_if.psel            = 1'b0;
    apb_if.apb_slv.penable = 1'b0;
  endtask

  task apb_read(input logic [11:0] addr, output logic [31:0] data);
    apb_if.apb_slv.paddr   = addr;
    apb_if.apb_slv.pwrite  = 1'b0;
    apb_if.apb_slv.penable = 1'b0;
    apb_if.psel            = 1'b1;
    apb_if.apb_slv.pstrb   = 4'd1;
    #10;
    apb_if.apb_slv.penable = 1'b1;
    #10;
    data                   = apb_if.apb_mas.prdata;
    apb_if.psel            = 1'b0;
    apb_if.apb_slv.penable = 1'b0;
  endtask

  always #5 apb_if.pclk = ~apb_if.pclk;

  initial begin
    apb_if.pclk     = 0;
    apb_if.preset_n = 0;
    apb_if.psel     = 0;
    #20;
    apb_if.preset_n = 1;
  end

  initial begin
    #50;

    $display("Writing to TDR...");
    apb_write(ADDR_TDR, 32'hA5A5A5A5);
    #20;

    $display("Reading from TDR...");
    apb_read(ADDR_TDR, read_data);
    $display("TDR Data Read: %h", read_data);

    if (read_data == 32'h000000a5) $display("Write/Read Test Passed!");
    else $display("Write/Read Test Failed!");

    $stop;
  end
endmodule
