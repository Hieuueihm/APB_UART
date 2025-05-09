`timescale 1ns / 1ps

module apb_uart_tb;
 typedef enum logic [11:0] {
    ADDR_TDR = 12'h000,
    ADDR_RDR = 12'h004,
    ADDR_LCR = 12'h008,
    ADDR_OCR = 12'h00C,
    ADDR_LSR = 12'h010,
    ADDR_FCR = 12'h014,
    ADDR_MSR = 12'h018,
    ADDR_MCR = 12'h01C,
    ADDR_IER = 12'h020,
    ADDR_IIR = 12'h024
  } apb_addr_e;
  logic clk;
  logic preset_n;
  logic psel;
  logic penable;
  logic pwrite;
  logic [11:0] paddr;
  logic [3:0] pstrb;
  logic [31:0] pwdata;
  wire pready;
  wire pslverr;
  wire [31:0] prdata;
  wire irq;
  logic [31:0] read_data;
  apb_uart  inst_uart_apb_test (
      .clk                 (clk),
      .preset_n            (preset_n),
      .psel                (psel),
      .penable             (penable),
      .pwrite              (pwrite),
      .paddr               (paddr),
      .pstrb               (pstrb),
      .pwdata              (pwdata),
      .pready              (pready),
      .pslverr             (pslverr),
      .prdata              (prdata),
      .irq             (irq)
         );

  task apb_write(input logic [11:0] addr, input logic [31:0] data, input [3:0] strb);
    paddr   = addr;
    pwrite  = 1'b1;
    pwdata  = data;
    penable = 1'b0;
    psel            = 1'b1;
    pstrb   = strb;
    #10;
    penable = 1'b1;
    @(negedge pready);
    psel     = 1'b0;
    penable = 1'b0;
  endtask

  task apb_read(input logic [11:0] addr, output logic [31:0] data);
    paddr   = addr;
    pwrite  = 1'b0;
    penable = 1'b0;
    psel    = 1'b1;
    pstrb   = 4'd1;
    #10;
    penable = 1'b1;
    @(negedge pready);
    data     = prdata;
    psel     = 1'b0;
    penable = 1'b0;
  endtask

  always #5 clk = ~clk;

  initial begin
    clk     = 0;
    preset_n = 0;
    psel     = 0;
    #20;
    preset_n = 1;
  end

  initial begin
     #50;

    $display("Configuring UART...");

    // Set LCR[1:0] = 2'b11 (8-bit data length)
    // 101000011
    apb_write(ADDR_LCR, 32'h00000173, 4'h3);  // LCR = 0x03 // 11
    apb_write(ADDR_FCR, 32'h00000001, 4'h1);  // FCR = 0x01 // enable fifo
    apb_write(ADDR_HCR, 32'h00000001, 4'h1);  // FCR = 0x01 // enable fifo

    // apb_write(ADDR_IER, 32'h00000001, 4'h1);  // FCR = 0x01 // enable fifo

    // Set OCR[2] = 1 (rx_en), OCR[0] = 1 (tx_en)
    apb_write(ADDR_OCR, 32'h00000005, 4'h1);  // OCR = 0b000...0101 (rx_en + tx_en)

    $display("Writing to TDR...");
    // apb_write(ADDR_TDR, 32'h000000A5, 4'h1);  // Write data to TDR // 00000005

    for (int i = 1; i <= 2; i++) begin
        apb_write(ADDR_TDR, i, 4'h1);  
        #10; 
    end
    apb_write(ADDR_OCR, 32'h00000007, 4'h1);  // OCR = 0b000...0111 (rx_en + start_tx + tx_en)
 

    #20000000;
    apb_read(ADDR_RDR, read_data);
    
    apb_write(ADDR_OCR, 32'h00000007, 4'h1);  // OCR = 0b000...0111 (rx_en + start_tx + tx_en)

    //  for (int i = 1; i <= 17; i++) begin
    //     apb_write(ADDR_TDR, i, 4'h1);  
    //     #10; 
    // end
        // apb_write(ADDR_OCR, 32'h00000007, 4'h1);  // OCR = 0b000...0111 (rx_en + start_tx + tx_en)



    // apb_write(ADDR_OCR, 32'h00000005, 4'h1);  // OCR = 0b000...0111 (rx_en + start_tx + tx_en)

    // Optional: Read RDR back after some delay
    #50000000;
    // $display("Reading from RDR...");
    // apb_read(ADDR_RDR, read_data);
    // $display("RDR Data Read: %h", read_data);

    #200;

    $stop;
  end
endmodule
