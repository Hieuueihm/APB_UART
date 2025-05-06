// test module

module uart_apb_test #(
    parameter SYSTEM_FREQUENCY = 100000000,
    parameter SAMPLING_RATE = 16
)(
    input clk,    
    input preset_n,  
    
    input psel,
    input penable,
    input pwrite,
    input[11:0] paddr,
    input[3:0] pstrb,
    input[31:0] pwdata,
    output pready,
    output pslverr,
    output[31:0] prdata,
    
    // UART TX output
    output fifo_tx_empty_o,
    output fifo_tx_full_o,
    // UART RX output

    output parity_err_o,
    output stop_bit_err_o,
    output fifo_rx_triggered_o,
    output fifo_rx_empty_o,
    output fifo_rx_full_o
    // output [7:0] data_o,
    // output data_o_valid
);
    logic [31:0] tdr;
    logic [31:0] rdr;
    logic [31:0] lcr;
    logic [31:0] ocr;
    logic [31:0] lsr;
    logic [31:0] fcr;
    logic [31:0] msr;
    logic [31:0] mcr;
    logic [31:0] ier;
    logic [31:0] iir;

    apb_slave inst_apb_slave
        (
            .clk      (clk),
            .preset_n (preset_n),
            .psel     (psel),
            .penable  (penable),
            .pwrite   (pwrite),
            .paddr    (paddr),
            .pstrb    (pstrb),
            .pwdata   (pwdata),
            .pready   (pready),
            .pslverr  (pslverr),
            .prdata   (prdata),
            .tdr      (tdr),
            .rdr      (rdr),
            .lcr      (lcr),
            .ocr      (ocr),
            .lsr      (lsr),
            .fcr      (fcr),
            .msr      (msr),
            .mcr      (mcr),
            .ier      (ier),
            .iir      (iir)
        );
    assign fifo_rx_pop_ready = pready & !pwrite & paddr == 12'h004;
    logic fifo_rx_pop;
    always_ff @(posedge clk or negedge preset_n) begin
        if(~preset_n) begin
            fifo_rx_pop <= 0;
        end else begin
            fifo_rx_pop <= fifo_rx_pop_ready;
        end
    end
    logic tx;
    logic tick_tx;
    logic tick_rx; 

    // Baud generator instance
    baud_generator #(
        .SYSTEM_FREQUENCY(SYSTEM_FREQUENCY),
        .SAMPLING_RATE(SAMPLING_RATE)
    ) baud_gen_inst (
        .clk(clk),
        .reset_n(preset_n),
        .baud_sl_i(lcr[8:6]),
        .tick_tx(tick_tx),
        .tick_rx(tick_rx)
    );

    // UART transmitter instance
    // wire tx;
    // wire trans_fi_o;
    wire [7:0] data_received;
    uart_tx_top inst_uart_tx_top
        (
            .clk             (clk),
            .reset_n         (preset_n),
            .fifo_en_i       (fcr[0]),
            .tx_en_i         (ocr[0]),
            .parity_type_i   (lcr[5]),
            .parity_en_i     (lcr[4]),
            .tick_i          (tick_tx),
            .stop_bit_num_i  (lcr[2]),
            .data_bit_num_i  (lcr[1:0]),
            .data_i          (tdr[7:0]),
            .write_data_i    (ocr[1]), // start tx
            .tx_o            (tx),
            .fifo_tx_empty_o (fifo_tx_empty_o),
            .fifo_tx_full_o  (fifo_tx_full_o)
        );
    wire data_o_valid;
    uart_rx_top inst_uart_rx_top
        (
            .clk                  (clk),
            .reset_n              (preset_n),
            .rx_en_i              (ocr[2]),
            .tick_i               (tick_rx),
            .parity_type_i        (lcr[5]),
            .parity_en_i          (lcr[4]),
            .tx_i                 (tx),
            .stop_bit_num_i       (lcr[2]),
            .data_bit_num_i       (lcr[1:0]),
            .fifo_en              (fcr[0]),
            .fifo_rx_trig_level_i (fcr[4:3]),
            .fifo_rx_pop_i        (fifo_rx_pop),
            .data_o               (data_received),
            .data_o_valid         (data_o_valid),
            .parity_err_o         (parity_err_o),
            .stop_bit_err_o       (stop_bit_err_o),
            .fifo_rx_triggered_o  (fifo_rx_triggered_o),
            .fifo_rx_empty_o      (fifo_rx_empty_o),
            .fifo_rx_full_o       (fifo_rx_full_o)
        );

    always_ff @(posedge clk or negedge preset_n) begin 
        if(~preset_n) begin
            rdr <= 0;
        end else if(data_o_valid) begin
            rdr <= {24'b0, data_received};
        end
    end


endmodule
