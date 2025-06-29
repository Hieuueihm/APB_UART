// test module -> main
import common_pkg::*;

module apb_uart #(
    parameter SYSTEM_FREQUENCY = 50_000_000,
    parameter SAMPLING_RATE = 16
)(
    // input clk,  
    // input reset_n,

    input pclk,  
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
    output irq,

    // for cheecking
    output logic baud_o,
    output logic tick_rx, 
    // UART INTERFACE
    input cts_n,
    input rx,
    output tx,
    output rts_n
    
    

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

    logic [31:0] pwdata_d;
    logic psel_d;
    logic penable_d;
    logic pwrite_d;
    logic [11:0] paddr_d;
    logic [3:0] pstrb_d;
    always_ff @(posedge pclk or negedge preset_n) begin
        if(~preset_n) begin
             pwdata_d<= 0;
             psel_d <= 0;
             penable_d <= 0;
             pwrite_d <= 0;
             paddr_d <= 0;
             pstrb_d <= 0;
        end else begin
            pwdata_d <= pwdata;
            psel_d <= psel;
            penable_d <= penable;
            pwrite_d <= pwrite;
            paddr_d <= paddr;
            pstrb_d <= pstrb;
        end
    end


    apb_slave apb_slave_inst
        (
            .clk      (pclk),
            .preset_n (preset_n),
            .psel     (psel_d),
            .penable  (penable_d),
            .pwrite   (pwrite_d),
            .paddr    (paddr_d),
            .pstrb    (pstrb_d),
            .pwdata   (pwdata_d),
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
    logic [31:0] prdata_prev;
    always_ff @(posedge pclk or negedge preset_n) begin 
        if(~preset_n) begin
            prdata_prev <= 0;
        end else begin
            prdata_prev <= prdata;
        end
    end


    assign lsr0_reset = cpu_read_lsr & ~prdata_prev[0] & prdata[0];
    assign lsr1_reset = (~fcr[0] & rdr_empty) | (fcr[0] & fifo_rx_empty);
    assign lsr2_reset = cpu_read_lsr & ~prdata_prev[2] & prdata[2];
    assign lsr3_reset = cpu_read_lsr & ~prdata_prev[3] & prdata[3];
    assign lsr4_reset = (~fcr[0] & ~tdr_empty) | (fcr[0] & ~fifo_tx_empty);
    assign lsr5_reset = cpu_read_lsr & ~prdata_prev[5] & prdata[5];
    assign lsr6_reset = cpu_read_lsr & ~prdata_prev[6] & prdata[6];

    logic cpu_write_tdr_d;

    always_ff @(posedge pclk or negedge preset_n) begin
        if (~preset_n) cpu_write_tdr_d <= 0;
        else cpu_write_tdr_d <= cpu_write_tdr;
    end // to fix set up violation
    always_ff @(posedge pclk or negedge preset_n) begin 
        if(~preset_n) begin
             tdr_empty<= 1;
        end else if(cpu_write_tdr_d) begin
             tdr_empty <= 0;
        end else if((~fcr[0] &~tdr_empty & ocr[1] ) | (fcr[0] & ocr[1] & fifo_tx_empty)) begin
            tdr_empty <= 1;
        end
    end
    assign fifo_rx_pop_ready = cpu_read_rdr & ~fifo_rx_empty;
    logic fifo_rx_pop;
    always_ff @(posedge pclk or negedge preset_n) begin
        if(~preset_n) begin
            fifo_rx_pop <= 0;
        end else begin
            fifo_rx_pop <= fifo_rx_pop_ready;
        end
    end
    // logic tx;
    assign tick_tx = baud_o;
    // logic rts_n; 

    // Baud generator instance
    baud_generator #(
        .SYSTEM_FREQUENCY(SYSTEM_FREQUENCY),
        .SAMPLING_RATE(SAMPLING_RATE)
    ) baud_gen_inst (
        .clk(pclk),
        .reset_n(preset_n),
        .baud_sl_i(lcr[7:5]),
        .tick_tx(baud_o),
        .tick_rx(tick_rx)
    );

    // UART transmitter instance
    // wire tx;
    // wire trans_fi_o;

    uart_tx_top uart_tx_top_inst
        (
            .clk             (pclk),
            .reset_n         (preset_n),
            .fifo_en_i       (fcr[0]),
            .tx_en_i         (ocr[0]),
            .parity_type_i   (lcr[4]),
            .parity_en_i     (lcr[3]),
            .tick_i          (tick_tx),
            .stop_bit_num_i  (lcr[2]),
            .cts_ni           (cts_n),
            .hf_en_i         (hcr[0]),
            .data_bit_num_i  (lcr[1:0]),
            .fifo_tx_reset_i(fcr[2]),
            .data_i          (tdr[7:0]),
            .write_data_i    (cpu_write_tdr_d), 
            .start_tx_i  (ocr[1]), 
            .tx_o            (tx),
            .fifo_tx_empty_o (fifo_tx_empty),
            .fifo_tx_full_o  (fifo_tx_full),
            .trans_fi_o       (lsr0_set)
        );

    uart_rx_top uart_rx_top_inst
        (
            .clk                  (pclk),
            .reset_n              (preset_n),
            .rx_en_i              (ocr[2]),
            .tick_i               (tick_rx),
            .parity_type_i        (lcr[4]),
            .parity_en_i          (lcr[3]),
            .tx_i                 (rx),
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
            .rts_no              (rts_n),
            .rdr_empty_i      (rdr_empty)
        );




    always_ff @(posedge pclk or negedge preset_n) begin 
        if(~preset_n) begin
            lsr[31:0] <= 0;
        end else begin
            if(lsr0_set) begin
                lsr[0] <= 1;
            end 
            if(lsr0_reset) begin
                lsr[0] <= 0;
            end

            if(lsr1_set) begin
                lsr[1] <= 1;
            end 
            if(lsr1_reset) begin
                lsr[1] <= 0;
            end

            if(lsr2_set) begin
                lsr[2] <= 1;
            end 
            if(lsr2_reset) begin
                lsr[2] <= 0;
            end

            if(lsr3_set) begin
                lsr[3] <= 1;
            end 
            if(lsr3_reset) begin
                lsr[3] <= 0;
            end

            if(lsr4_set) begin
                lsr[4] <= 1;
            end 
            if(lsr4_reset) begin
                lsr[4] <= 0;
            end

            if(lsr5_set) begin
                lsr[5] <= 1;
            end 
            if(lsr5_reset) begin
                lsr[5] <= 0;
            end

            if(lsr6_set) begin
                lsr[6] <= 1;
            end 
            if(lsr6_reset) begin
                lsr[6] <= 0;
            end
   


        end
    end

    // rdr set
    always_ff @(posedge pclk or negedge preset_n) begin 
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
    wire lsr_stt = (lsr[2] | lsr[3]  | lsr[5] | lsr[6]);
    // iir write
       always_ff @(posedge pclk or negedge preset_n) begin 
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
