module uart_transmitter_tb;

    
    parameter CLK_FREQ = 50_000_000;
    parameter BAUD_RATE = 9600;
    parameter integer TICKS_PER_BAUD = CLK_FREQ / BAUD_RATE; // 5208

   
    logic clk;
    logic reset_n;
    logic start_tx_i;
    logic tx_en_i;
    logic parity_type;
    logic parity_en_i;
    logic [7:0] data_i;
    logic tick_tx_i;
    logic [1:0] stop_bit_num;
    logic [1:0] data_bit_num;

   
    logic tx_o;

   
    uart_transmitter dut (
        .clk(clk),
        .reset_n(reset_n),
        .start_tx_i(start_tx_i),
        .tx_en_i(tx_en_i),
        .parity_type(parity_type),
        .parity_en_i(parity_en_i),
        .data_i(data_i),
        .tick_tx_i(tick_tx_i),
        .stop_bit_num(stop_bit_num),
        .data_bit_num(data_bit_num),
        .tx_o(tx_o)
    );

    
    always #10 clk = ~clk;  

   
    integer tick_cnt = 0;
    always_ff @(posedge clk) begin
        if (!reset_n) begin
            tick_cnt <= 0;
            tick_tx_i <= 0;
        end else begin
            if (tick_cnt == TICKS_PER_BAUD - 1) begin
                tick_tx_i <= 1;
                tick_cnt <= 0;
            end else begin
                tick_tx_i <= 0;
                tick_cnt <= tick_cnt + 1;
            end
        end
    end

    // Stimulus
    initial begin
        // Init
        clk = 0;
        reset_n = 0;
        start_tx_i = 0;
        tx_en_i = 0;
        parity_type = 0;      // Odd
        parity_en_i = 1;      // Enable parity
        stop_bit_num = 2'b00; // 1 stop bit
        data_bit_num = 2'b11; // 8 data bits
        data_i = 8'hA5;

        // Reset
        #100;
        reset_n = 1;

        // Enable transmission
        @(posedge tick_tx_i);
        tx_en_i = 1;
        @(posedge tick_tx_i);
        start_tx_i = 1;
        @(posedge tick_tx_i);
        start_tx_i = 0; // pulse only

        // Wait for entire transmission (start + 8 + parity + stop) = 1+8+1+1 = 11 ticks
        repeat (15) @(posedge tick_tx_i);

        
        data_i = 8'h3C;
        parity_type = 1;      // even parity
        parity_en_i = 0;      // Disable parity
        stop_bit_num = 2'b01; // 2 stop bits
        data_bit_num = 2'b10; // 7 bits

        @(posedge tick_tx_i);
        start_tx_i = 1;
        @(posedge tick_tx_i);
        start_tx_i = 0;

        repeat (15) @(posedge tick_tx_i);

        $finish;
    end

endmodule
