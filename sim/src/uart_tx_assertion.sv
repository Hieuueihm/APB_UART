interface uart_tx_assertion (
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
  input tx_o,
  input trans_fi_o
);


  property SIGNAL_VALID(signal);
    @(posedge clk) !$isunknown(signal);
  endproperty