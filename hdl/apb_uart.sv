// test module -> main
import common_def::*;

module apb_uart #(
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
    // irq
    output irq
    // flow control
    // input cts_n,
    // output rts_n
    
    

);
    logic [31:0] tdr;
    logic [31:0] rdr;
    logic [31:0] lcr;
    logic [31:0] ocr;
    logic [31:0] lsr;
    logic [31:0] fcr;
    logic [31:0] ier;
    logic [31:0] iir;
    logic [31:0] hcr;

    apb_slave apb_slave_inst
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
            .ier      (ier),
            .iir      (iir),
            .hcr     (hcr)
        );
    assign cpu_read_rdr = pready & !pwrite & paddr == ADDR_RDR;
    assign cpu_write_tdr = pready & pwrite & paddr == ADDR_TDR;
    assign cpu_read_lsr = pready & !pwrite & paddr == ADDR_LSR;
    assign cpu_read_iir = pready & !pwrite & paddr == ADDR_IIR;
    logic tdr_empty;
        wire data_o_valid;
    wire fifo_rx_empty;
    wire fifo_rx_overrun;
    wire parity_err;
    wire stop_bit_err;
        logic rdr_empty;
    wire [7:0] data_received;
    wire fifo_tx_empty;
    wire fifo_tx_full;
    wire lsr0_set;
    assign lsr1_set = (~fcr[0] & ~rdr_empty) | (fcr[0] & ~fifo_rx_empty);
    assign lsr2_set = parity_err;
    assign lsr3_set = stop_bit_err;
    assign lsr4_set = (~fcr[0] & tdr_empty) | (fcr[0] & fifo_tx_empty);
    assign lsr5_set = (fcr[0] & parity_err & stop_bit_err);
    assign lsr6_set = (~fcr[0] & ~rdr_empty & data_o_valid) | fifo_rx_overrun;


    assign lsr0_reset = cpu_read_lsr;
    assign lsr1_reset = (~fcr[0] & rdr_empty) | (fcr[0] & fifo_rx_empty);
    assign lsr2_reset = cpu_read_lsr;
    assign lsr3_reset = cpu_read_lsr;
    assign lsr4_reset = (~fcr[0] & ~tdr_empty) | (fcr[0] & ~fifo_tx_empty);
    assign lsr5_reset = cpu_read_lsr;
    assign lsr6_reset = cpu_read_lsr;

    always_ff @(posedge clk or negedge preset_n) begin 
        if(~preset_n) begin
             tdr_empty<= 1;
        end else if(cpu_write_tdr) begin
             tdr_empty <= 0;
        end else if((~fcr[0] &~tdr_empty & ocr[1] ) | (fcr[0] & ocr[1] & fifo_tx_empty)) begin
            tdr_empty <= 1;
        end
    end
    assign fifo_rx_pop_ready = cpu_read_rdr & ~fifo_rx_empty;
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
    logic rts_n; 

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

    uart_tx_top uart_tx_top_inst
        (
            .clk             (clk),
            .reset_n         (preset_n),
            .fifo_en_i       (fcr[0]),
            .tx_en_i         (ocr[0]),
            .parity_type_i   (lcr[5]),
            .parity_en_i     (lcr[4]),
            .tick_i          (tick_tx),
            .stop_bit_num_i  (lcr[2]),
            .cts_ni           (rts_n),
            .hf_en_i         (hcr[0]),
            .data_bit_num_i  (lcr[1:0]),
            .fifo_tx_reset_i(fcr[2]),
            .data_i          (tdr[7:0]),
            .write_data_i    (cpu_write_tdr), 
            .start_tx_i  (ocr[1]), 
            .tx_o            (tx),
            .fifo_tx_empty_o (fifo_tx_empty),
            .fifo_tx_full_o  (fifo_tx_full),
            .trans_fi_o       (lsr0_set)
        );

    uart_rx_top uart_rx_top_inst
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
            .fifo_en_i              (fcr[0]),
            .fifo_rx_reset_i     (fcr[1]),
            .fifo_rx_trig_level_i(fcr[4:3]),
            .hf_en_i             (hcr[0]),
            .force_rts_i          (hcr[1]),
            .fifo_rx_pop_i        (fifo_rx_pop),
            .data_o               (data_received),
            .data_o_valid         (data_o_valid),
            .parity_err_o         (parity_err),
            .stop_bit_err_o       (stop_bit_err),
            .fifo_rx_empty_o      (fifo_rx_empty),
            .fifo_rx_overrun     (fifo_rx_overrun),
            .rts_no              (rts_n)
        );




    always_ff @(posedge clk or negedge preset_n) begin 
        if(~preset_n) begin
            lsr <= 0;
        end else begin
            `SET_BIT_REGISTER(lsr[0], lsr0_set, `SET);
            `SET_BIT_REGISTER(lsr[0], lsr0_reset, `RST);


            `SET_BIT_REGISTER(lsr[1], lsr1_set, `SET);
            `SET_BIT_REGISTER(lsr[1], lsr1_reset, `RST);


            `SET_BIT_REGISTER(lsr[2], lsr2_set, `SET);
            `SET_BIT_REGISTER(lsr[2], lsr2_reset, `RST);

            `SET_BIT_REGISTER(lsr[3], lsr3_set, `SET);
            `SET_BIT_REGISTER(lsr[3], lsr3_reset, `RST);

            `SET_BIT_REGISTER(lsr[4], lsr4_set, `SET);
            `SET_BIT_REGISTER(lsr[4], lsr4_reset, `RST);

            `SET_BIT_REGISTER(lsr[5], lsr5_set, `SET);
            `SET_BIT_REGISTER(lsr[5], lsr5_reset, `RST);

            `SET_BIT_REGISTER(lsr[6], lsr6_set, `SET);
            `SET_BIT_REGISTER(lsr[6], lsr6_reset, `RST);


        end
    end

    // rdr set
    always_ff @(posedge clk or negedge preset_n) begin 
        if(~preset_n) begin
            rdr <= 0;
            rdr_empty <= 1;
        end else if(data_o_valid) begin
            rdr <= {24'b0, data_received};
            rdr_empty <= 1'b0;
        end else if(cpu_read_rdr) begin
            rdr_empty <= 1'b1;
        end
    end


    // interrupt handler
    wire data_rdy_intr = ier[0];
    wire tdr_empty_intr = ier[1];
    wire received_lsr_intr = ier[2];
    wire lsr_stt = (lsr[2] | lsr[3] | lsr[4] | lsr[5] | lsr[6]);
    // iir write
       always_ff @(posedge clk or negedge preset_n) begin 
        if(~preset_n) begin
            iir <= 32'h00000001; 
        end else begin
            if(cpu_read_iir) begin
                iir[2:0] <=  3'b001; 
            end else begin
                if(ier[2] & lsr_stt) begin
                    iir[2:0] <=  3'b110; 
                end else if(ier[0] & ~rdr_empty) begin
                    iir[2:0] <=  3'b100; 
                end else if(ier[1] & tdr_empty & ocr[1]) begin
                    iir[2:0] <=  3'b010; 
                end 
            end
        end
    end

    assign irq = ~iir[0];



endmodule
