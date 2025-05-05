module uart_rx_top (
    input        clk,
    input        reset_n,
    input        rx_en_i,
    input        tick_i,
    input        parity_type_i,
    input        parity_en_i,
    input        tx_i,
    input        stop_bit_num_i,
    input [1:0]  data_bit_num_i,
    input        fifo_en,                    
    input [1:0]  fifo_rx_trig_level_i,
    input        fifo_rx_pop_i,

    output logic [7:0]  data_o,
    output logic        data_o_valid,
    output logic        parity_err_o,
    output logic        stop_bit_err_o,
    output logic        fifo_rx_triggered_o,
    output logic        fifo_rx_empty_o,
    output logic        fifo_rx_full_o
);

    // UART Receiver 
    logic [7:0] receiver_data;
    logic       receiver_data_valid;

    uart_receiver uart_rx_inst (
        .clk(clk),
        .reset_n(reset_n),
        .rx_en_i(rx_en_i),
        .tick_i(tick_i),
        .parity_type_i(parity_type_i),
        .parity_en_i(parity_en_i),
        .tx_i(tx_i),
        .stop_bit_num_i(stop_bit_num_i),
        .data_bit_num_i(data_bit_num_i),
        .data_o(receiver_data),
        .data_o_valid(receiver_data_valid),
        .parity_err_o(parity_err_o),
        .stop_bit_err_o(stop_bit_err_o)
    );

    //  FIFO 
    logic [7:0] fifo_out;
    logic       fifo_push;

    assign fifo_push = fifo_en && receiver_data_valid;

    receiver_fifo fifo_inst (
        .clk(clk),
        .reset_n(reset_n),
        .fifo_rx_i(receiver_data),
        .fifo_rx_push_i(fifo_push),
        .fifo_rx_pop_i(fifo_rx_pop_i),
        .fifo_rx_reset_i(~reset_n),  
        .fifo_rx_trig_level_i(fifo_rx_trig_level_i),
        .fifo_rx_o(fifo_out),
        .fifo_rx_empty_o(fifo_rx_empty_o),
        .fifo_rx_full_o(fifo_rx_full_o),
        .fifo_rx_triggered_o(fifo_rx_triggered_o)
    );

    //Output Multiplexer
    always_comb begin
        if (fifo_en) begin
            data_o       = fifo_out;
            data_o_valid = ~fifo_rx_empty_o;
        end else begin
            data_o       = receiver_data;
            data_o_valid = receiver_data_valid;
        end
    end

endmodule
