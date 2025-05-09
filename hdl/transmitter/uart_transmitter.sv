module uart_transmitter(
    input clk,
    input reset_n,
    input start_tx_i,
    input tx_en_i,
    input parity_type_i,
    input parity_en_i,
    input [7:0] data_i,
    input tick_i,
    input stop_bit_num_i,
    input cts_ni,
    input [1:0] data_bit_num_i,
    output logic tx_o,
    output logic trans_fi_o
);
    logic [3:0] data_size;
    logic [3:0] cnt_data_trans;
    logic [1:0] stop_bit_size;
    logic [3:0] total_data;
    logic [7:0] data;
    wire shift_en; 
    assign shift_en = trans_en ? tick_i : 1'b0;
    assign stop_bit_size = (stop_bit_num_i) ? 2: 1;
      always_comb begin
        
        case (data_bit_num_i)
            2'b00: begin
                data_size = 4'd5;
                data = {3'b111, data_i[4:0]};
            end
            2'b01: begin
                data_size = 4'd6;
                data = {2'b11, data_i[5:0]};
            end
            2'b10: begin
                data_size = 4'd7;
                data = {1'b1, data_i[6:0]};
            end
            2'b11: begin
                data_size = 4'd8;
                data = data_i;
            end
        endcase
        total_data = data_size + parity_en_i + stop_bit_size + 1;
    end
    logic tick_d;
    always_ff @(posedge clk or negedge reset_n) begin
        if(~reset_n) begin
            tick_d <= 0;
        end else begin
            tick_d <= tick_i;
        end
    end
    wire trans_en;

    always_ff @(posedge clk or negedge reset_n) begin 
            if(~reset_n) begin
                 cnt_data_trans <= 0;
            end else if(shift_en) begin
                 cnt_data_trans <=  cnt_data_trans + 1;
            end else if(~trans_en)  begin
                cnt_data_trans <= 0;
            end
        end 




    wire parity_bit_o;
    parity parity_inst
        (
            .parity_type_i (parity_type_i),
            .data_i        (data_i),
            .parity_bit_o  (parity_bit_o)
        );
    wire trans_data_fi, trans_stop_fi;
    assign trans_data_fi = (cnt_data_trans == (1+ data_size));
    assign trans_stop_fi = (cnt_data_trans == total_data);

    wire load_d0;
    assign load_d0 = (~|cnt_data_trans) | (parity_en_i & ~parity_bit_o & trans_data_fi);


    wire load_en;
    assign load_en = cnt_data_trans == 1;


    transmitter_controller transmitter_controller_inst
        (
            .clk             (clk),
            .reset_n         (reset_n),
            .tx_en_i         (tx_en_i),
            .start_tx_i      (start_tx_i),
            .trans_data_fi_i (trans_data_fi),
            .trans_stop_fi_i (trans_stop_fi),
            .tick_d_i        (tick_d),
            .cts_ni         (cts_ni),
            .parity_en_i     (parity_en_i),
            .trans_en_o      (trans_en),
            .tx_finish_o     (trans_fi_o)
        );

    piso piso_inst
        (
            .clk        (clk),
            .reset_n    (reset_n),
            .shift_en_i (shift_en),
            .load_en_i  (load_en),
            .load_d0_i (load_d0),
            .data_i     (data),
            .tx_o       (tx_o)
        );






endmodule 