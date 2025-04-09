`timescale 1ns / 1ps
`define clk_period 10
module baud_generator_tb ();
  logic clk;
  logic reset_n;
  logic [2:0] baud_sl;
  logic start;
  logic isTx;
  wire tick;
  wire ready;
  wire finish;

  baud_generator inst_baud_generator (
      .clk    (clk),
      .reset_n(reset_n),
      .baud_sl(baud_sl),
      .start  (start),
      .isTx   (isTx),
      .tick   (tick),
      .ready  (ready),
      .finish (finish)
  );


  initial begin
    clk <= 0;
  end
  always #(`clk_period / 2) clk <= ~clk;



  initial begin
    // reset
    reset_n <= 1'b0;
    baud_sl <= 3'b110;
    start   <= 1'b0;
    isTx <= 1'b1;

    #(`clk_period * 3);

    reset_n <= 1'b1;

    #(`clk_period * 5);

    start <= 1'b1;
    #(`clk_period);



    wait (finish);
    #100;
    wait (finish);
    #100;
    $stop;


  end

endmodule
