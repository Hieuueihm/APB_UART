module uart_tx_top (
    input        clk,
    input        reset_n,
    input        fifo_en_i,              
    input        tx_en_i,
    input        parity_type_i,
    input        parity_en_i,
    input        tick_i,
    input        stop_bit_num_i,
    input [1:0]  data_bit_num_i,
    input [7:0]  data_i,                
    input        write_data_i,          

    output         tx_o,
    output         fifo_tx_empty_o,
    output         fifo_tx_full_o
);
    logic tx_busy;
    wire trans_fi_o;
    assign fifo_tx_pop = fifo_en_i & trans_fi_o & ~fifo_tx_empty_o;

    // FIFO output
    logic [7:0] fifo_data_out;
    logic       fifo_push;

    assign fifo_push = fifo_en_i & write_data_i;

    // FIFO instance
    transmitter_fifo tx_fifo (
        .clk(clk),
        .reset_n(reset_n),
        .fifo_tx_i(data_i),
        .fifo_tx_push_i(fifo_push),
        .fifo_tx_pop_i(fifo_tx_pop),
        .fifo_tx_reset_i(~reset_n), 
        .fifo_tx_o(fifo_data_out),
        .fifo_tx_empty_o(fifo_tx_empty_o),
        .fifo_tx_full_o(fifo_tx_full_o)
    );

    // Transmitter input selection
    logic [7:0] tx_data_mux;
    logic       start_tx;

    always_comb begin
        if (fifo_en_i) begin
            tx_data_mux = fifo_data_out;
            start_tx = (~fifo_tx_empty_o) & (~tx_busy);
        end else begin
            tx_data_mux = data_i;
            start_tx    = write_data_i; 
        end
    end
     always_ff @(posedge clk or negedge reset_n) begin
        if (~reset_n) begin
            tx_busy <= 1'b0;
        end else if (start_tx & tx_en_i) begin
            tx_busy <= 1'b1;
        end else if (trans_fi_o) begin
            tx_busy <= 1'b0;  
        end
    end

    // UART transmitter instance
    uart_transmitter uart_tx (
        .clk(clk),
        .reset_n(reset_n),
        .start_tx_i(start_tx),
        .tx_en_i(tx_en_i),
        .parity_type_i(parity_type_i),
        .parity_en_i(parity_en_i),
        .data_i(tx_data_mux),
        .tick_i(tick_i),
        .stop_bit_num_i(stop_bit_num_i),
        .data_bit_num_i(data_bit_num_i),
        .tx_o(tx_o),
        .trans_fi_o(trans_fi_o)
    );

endmodule
