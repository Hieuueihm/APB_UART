module uart_transmitter(
    input clk,
    input reset_n,
    input start_tx_i,
    input tx_en_i,
    input parity_type_i,
    input parity_en_i,
    input [7:0] data_i,
    input tick_i,
    input [1:0] stop_bit_num_i,
    input [1:0] data_bit_num_i,
    output logic tx_o,
    output logic trans_fi_o
);
    logic [3:0] data_size;
    logic [3:0] cnt_data_trans;
    logic [1:0] stop_bit_size;
    logic [3:0] total_data;
    logic [1:0] stop_bit_data;
      always_comb begin
        case (data_bit_num_i)
            2'b00: data_size = 4'd5;
            2'b01: data_size = 4'd6;
            2'b10: data_size = 4'd7;
            2'b11: data_size = 4'd8;
            default: data_size = 4'd8;
        endcase

        case (stop_bit_num_i)
            2'b00: begin
                stop_bit_size = 2'd1;
                stop_bit_data = 2'b11;
         end
            2'b01: begin
            stop_bit_size = 2'd2;
            stop_bit_data = 2'b11;

        end
            2'b10: begin

                stop_bit_size = 2'd2;
                stop_bit_data = 2'b11;

            end
            2'b11: begin
                 stop_bit_size = 2'd2;
                stop_bit_data = 2'b11;

         end
            default: begin
             stop_bit_size = 2'd1;
                stop_bit_data = 2'b11;

         end
        endcase
        total_data = data_size + parity_en_i + stop_bit_size + 1;
    end

    wire tran_process;

    always_ff @(posedge clk) begin : proc_
            if(~reset_n) begin
                 cnt_data_trans <= 0;
            end else if(tick_i & tran_process) begin
                 cnt_data_trans <=  cnt_data_trans + 1;
            end else if(~tran_process)  begin
                cnt_data_trans <= 0;
            end
        end 


    assign trans_start_fi_i = (cnt_data_trans == 1);
    assign trans_data_fi_i = (cnt_data_trans == (data_size + 1)) ? 1'b1 : 1'b0;
    assign trans_parity_fi_i = (parity_en_i &  (cnt_data_trans == ( data_size + 2) ));
    assign trans_stop_fi_i = (cnt_data_trans == (total_data));  


    wire load_data, load_d1, load_d2, shift_en, load_d0;
    wire parity_bit_o;

        transmitter_controller transmitter_controller_inst
        (
            .clk               (clk),
            .reset_n           (reset_n),
            .tx_en_i           (tx_en_i),
            .start_tx_i        (start_tx_i),
            .parity_en_i       (parity_en_i),
            .trans_data_fi_i   (trans_data_fi_i),
            .trans_parity_fi_i (trans_parity_fi_i),
            .trans_stop_fi_i   (trans_stop_fi_i),
            .trans_start_fi_i (trans_start_fi_i),
            .tick_i            (tick_i),
            .load_data         (load_data),
            .load_d1           (load_d1),
            .load_d2           (load_d2),
            .load_d0          (load_d0),
            .shift_en          (shift_en),
            .trans_fi (trans_fi_o),
            .trans_process(tran_process)
        );

            piso piso_inst
        (
            .clk         (clk),
            .reset_n     (reset_n),
            .load_data_i (load_data),
            .load_d1_i   (load_d1),
            .load_d2_i   (load_d2),
            .load_d0_i  (load_d0),
            .data_i      (data_i),
            .parity_i(parity_bit_o),
            .stop_bit_i(stop_bit_data),
            .shift_en_i  (shift_en),
            .tx_o        (tx_o)
        );

    parity parity_inst
        (
            .clk           (clk),
            .reset_n       (reset_n),
            .parity_type_i (parity_type_i),
            .data_i        (data_i),
            .parity_bit_o  (parity_bit_o)
        );




endmodule 