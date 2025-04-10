module uart_transmitter(
    input clk,
    input reset_n,
    input start_tx_i,
    input tx_en_i,
    input parity_type,
    input parity_en_i,
    input [7:0] data_i,
    input tick_tx_i,
    input [1:0] stop_bit_num,
    input [1:0] data_bit_num,
    output logic tx_o
);

    typedef enum logic [2:0] {
        IDLE,
        WAIT,
        TRANS_START,
        TRANS_DATA,
        TRANS_PARITY,
        TRANS_STOP
    } state_t;

    state_t state, next_state;

    logic [1:0] stop_bit_size;
    logic [3:0] data_size;
    logic [3:0] bit_cnt;
    logic [7:0] shift_reg;
    logic parity_values;
    logic parity_calculated;
    logic [1:0] stop_cnt;

    // Determine data and stop sizes
    always_comb begin
        case (data_bit_num)
            2'b00: data_size = 4'd5 + parity_en_i;
            2'b01: data_size = 4'd6 + parity_en_i;
            2'b10: data_size = 4'd7 + parity_en_i;
            2'b11: data_size = 4'd8 + parity_en_i;
            default: data_size = 4'd8 + parity_en_i;
        endcase

        case (stop_bit_num)
            2'b00: stop_bit_size = 2'd1;
            2'b01: stop_bit_size = 2'd2;
            2'b10: stop_bit_size = 2'd2;
            2'b11: stop_bit_size = 2'd3;
            default: stop_bit_size = 2'd1;
        endcase
    end

    // Parity calculation
    always_comb begin
        parity_calculated = ^data_i;
        if(parity_en_i)
            parity_values = (parity_type == 1) ? parity_calculated : ~parity_calculated;
        else
            parity_values = 1'b0;
    end

    // FSM state register
    always_ff @(posedge clk or negedge reset_n) begin
        if (!reset_n)
            state <= IDLE;
        else if (tick_tx_i)
            state <= next_state;
    end

    // FSM next state logic
    always_comb begin
        next_state = state;
        case (state)
            IDLE: begin
                if (tx_en_i)
                    next_state = WAIT;
            end
            WAIT: begin
                if (start_tx_i)
                    next_state = TRANS_START;
            end
            TRANS_START: begin
                next_state = TRANS_DATA;
            end
            TRANS_DATA: begin
                if (bit_cnt == data_size - 1 - parity_en_i)
                    next_state = (parity_en_i) ? TRANS_PARITY : TRANS_STOP;
            end
            TRANS_PARITY: begin
                next_state = TRANS_STOP;
            end
            TRANS_STOP: begin
                if (stop_cnt == stop_bit_size - 1)
                    next_state = IDLE;
            end
        endcase
    end

    // Output and control logic
    always_ff @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            tx_o <= 1'b1;
            shift_reg <= 8'd0;
            bit_cnt <= 0;
            stop_cnt <= 0;
        end else if (tick_tx_i) begin
            case (state)
                IDLE: begin
                    tx_o <= 1'b1;
                    bit_cnt <= 0;
                    stop_cnt <= 0;
                end
                WAIT: begin
                    // Wait for start_tx_i
                end
                TRANS_START: begin
                    tx_o <= 1'b0;           // Start bit
                    shift_reg <= data_i;    // Load data to shift
                    bit_cnt <= 0;
                end
                TRANS_DATA: begin
                    tx_o <= shift_reg[0];
                    shift_reg <= shift_reg >> 1;
                    bit_cnt <= bit_cnt + 1;
                end
                TRANS_PARITY: begin
                    tx_o <= parity_values;
                end
                TRANS_STOP: begin
                    tx_o <= 1'b1;           // Stop bit
                    stop_cnt <= stop_cnt + 1;
                end
            endcase
        end
    end

endmodule
