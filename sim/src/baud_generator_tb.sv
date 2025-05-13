// `timescale 1ns/1ps

// module baud_generator_tb;

//   // Parameters
//   parameter SYSTEM_FREQUENCY = 100000000; 
//   parameter SAMPLING_RATE = 16;

//   // Inputs
//   logic clk;
//   logic reset_n;
//   logic [2:0] baud_sl_i;

//   // Outputs
//   logic tick_tx;
//   logic tick_rx;

//   initial clk = 0;
//   always #5 clk = ~clk;  

//   // Instantiate DUT
//   baud_generator #(
//     .SYSTEM_FREQUENCY(SYSTEM_FREQUENCY),
//     .SAMPLING_RATE(SAMPLING_RATE)
//   ) dut (
//     .clk(clk),
//     .reset_n(reset_n),
//     .baud_sl_i(baud_sl_i),
//     .tick_tx(tick_tx),
//     .tick_rx(tick_rx)
//   );

//   // Test sequence
//   initial begin
//     $display("Starting testbench...");
//     $display("Dumping to VCD...");
//     $dumpfile("dump_baud.vcd");      
//     $dumpvars(0, baud_generator_tb);   
//     reset_n = 0;
//     baud_sl_i = 3'b001;
//     #100;

//     reset_n = 1;
//     #2000000;  

//     $finish;
//   end

//   // Monitor ticks
//   always_ff @(posedge clk) begin
//     if (tick_tx)
//       $display("TX Tick at time %t", $time);
//     if (tick_rx)
//       $display("RX Tick at time %t", $time);
//   end

// endmodule
