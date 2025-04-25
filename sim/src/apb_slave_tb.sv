`timescale 1ns/1ps

module apb_slave_tb;

  logic clk;
  logic preset_n;
  logic psel;
  logic penable;
  logic pwrite;
  logic [11:0] paddr;
  logic [3:0] pstrb;
  logic [31:0] pwdata;
  logic pready;
  logic pslverr;
  logic [31:0] prdata;

  // Instantiate the DUT
  apb_slave dut (
    .clk(clk),
    .preset_n(preset_n),
    .psel(psel),
    .penable(penable),
    .pwrite(pwrite),
    .paddr(paddr),
    .pstrb(pstrb),
    .pwdata(pwdata),
    .pready(pready),
    .pslverr(pslverr),
    .prdata(prdata)
  );

  // Clock generation
  always #5 clk = ~clk;

  // APB write task
  task automatic apb_write(input [11:0] addr, input [31:0] data, input [3:0] strobe);
    begin
      @(posedge  clk);

      psel   = 1;
      penable= 0;
      pwrite = 1;
      paddr  = addr;
      pwdata = data;
      pstrb  = strobe;

      @(posedge  clk);
      penable = 1;

      // Wait for pready
      wait (pready == 1);

      @(posedge clk);
      psel = 0;
      penable = 0;
    end
  endtask

  // APB read task
  task automatic apb_read(input [11:0] addr, output [31:0] data_out);
    begin
      @(posedge  clk);
      psel   = 1;
      penable= 0;
      pwrite = 0;
      paddr  = addr;
      pstrb  = 4'b1111;

      @(posedge  clk);
      penable = 1;

      // Wait for pready
      wait (pready == 1);
      @(posedge  clk);
      data_out = prdata;
      psel = 0;
      penable = 0;
    end
  endtask
    logic [31:0] read_data;

  // Test sequence
  initial begin
    // Initial values
    clk = 0;
    preset_n = 0;
    psel = 0;
    penable = 0;
    pwrite = 0;
    paddr = 0;
    pwdata = 0;
    pstrb = 4'b1111;

    @(posedge clk);
    preset_n = 1;

    @(posedge clk)

    // Write to TDR (0x000)
    $display("[TB] Writing 0xA5A5_F00D to TDR...");
    apb_write(12'h000, 32'hA5A5_F00D, 4'b1111);

    // Read from TDR
    $display("[TB] Reading back from TDR...");
    apb_read(12'h000, read_data);
    $display("[TB] Read data = 0x%08X", read_data);

    #50;
    $finish;
  end

endmodule
