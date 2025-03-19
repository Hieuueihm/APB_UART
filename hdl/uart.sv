/* 
definition of ports:
- BUS2IP signals:
-- pclk: apb clk
-- preset_n: apb reset signal
-- paddr: apb address
-- psel: apb select
-- penable:
*/



module uart #(
    parameter SYSTEM_FREQUENCY = 100000000,
    parameter IS_UART_16550 = 1  // 1 for uart 16550, 0  otherwise(16450)
) (
    // APB to UART 
    input logic pclk,
    input logic preset_n,
    input logic psel,
    input logic penable,
    input logic pwrite,
    input logic [11:0] paddr,
    input logic [3:0] pstrb,
    input logic [31:0] pwdata,
    output logic pslverr,
    output logic pready,
    output logic prdata[31:0],
    // uart signal
    input logic rx,
    input logic ri_n,
    input logic dcd_n,
    input logic dsr_n,
    input logic cts_n,

    output logic dtr_n,
    output logic rts_n,
    output logic tx,

    //intr
    output logic irq_n



);

endmodule : uart
