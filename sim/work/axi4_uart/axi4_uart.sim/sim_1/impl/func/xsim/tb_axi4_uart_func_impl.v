// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sun Jun 22 11:53:42 2025
// Host        : hieu-virtual-machine running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/hieu/Workspace/APB_UART/sim/work/axi4_uart/axi4_uart.sim/sim_1/impl/func/xsim/tb_axi4_uart_func_impl.v
// Design      : axi4_uart
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module axi4_lite
   (\iir_reg[2]_0 ,
    \iir_reg[1]_0 ,
    \iir_reg[0]_0 ,
    \tdr_d_reg[7]_0 ,
    Q,
    \tdr_d_reg[7]_1 ,
    \lcr_d_reg[7]_0 ,
    rts_no_reg,
    \hcr_d_reg[0]_0 ,
    \lsr_reg[0]_0 ,
    s_axi_rdata_OBUF,
    \fcr_d_reg[1]_0 ,
    parity_err_o_reg,
    stop_bit_err_o_reg,
    \lsr_reg[5]_0 ,
    lsr6_reset,
    \FSM_onehot_rd_state_reg[2]_0 ,
    p_38_in,
    SR,
    ocr,
    \lcr_d_reg[2]_0 ,
    \lcr_d_reg[2]_1 ,
    \shift_regs_reg[7] ,
    \lcr_d_reg[0]_0 ,
    BIT_PERIOD_TX,
    \FSM_onehot_wr_state_reg[3]_0 ,
    \fcr_d_reg[2]_0 ,
    p_2_in,
    cpu_write_tdr,
    \fcr_d_reg[0]_0 ,
    rdr_empty_reg,
    data_o_valid_reg,
    tdr_empty_reg,
    rst_n_IBUF,
    D,
    fifo_tx_o,
    rts_n_OBUF,
    \lsr_reg[6]_0 ,
    lsr0_set,
    \lsr_reg[6]_1 ,
    rdr_empty_reg_0,
    fifo_rx_triggered,
    parity_err,
    stop_bit_err,
    \lsr_reg[5]_1 ,
    s_axi_araddr_IBUF,
    s_axi_arvalid_IBUF,
    s_axi_rready_IBUF,
    tdr_empty_reg_0,
    \data_o_reg[7] ,
    s_axi_bready_IBUF,
    s_axi_awvalid_IBUF,
    cts_sync,
    \w_offset_r_reg[11]_0 ,
    s_axi_wstrb_IBUF,
    s_axi_wvalid_IBUF,
    fifo_tx_empty,
    fifo_rx_empty,
    E,
    cpu_write_tdr_d,
    clk_IBUF_BUFG,
    \tdr_d_reg[31]_0 ,
    \rdr_reg[7]_0 ,
    lopt,
    lopt_1,
    lopt_2);
  output \iir_reg[2]_0 ;
  output \iir_reg[1]_0 ;
  output \iir_reg[0]_0 ;
  output [7:0]\tdr_d_reg[7]_0 ;
  output [4:0]Q;
  output [7:0]\tdr_d_reg[7]_1 ;
  output [7:0]\lcr_d_reg[7]_0 ;
  output rts_no_reg;
  output [0:0]\hcr_d_reg[0]_0 ;
  output \lsr_reg[0]_0 ;
  output [31:0]s_axi_rdata_OBUF;
  output \fcr_d_reg[1]_0 ;
  output parity_err_o_reg;
  output stop_bit_err_o_reg;
  output \lsr_reg[5]_0 ;
  output lsr6_reset;
  output [1:0]\FSM_onehot_rd_state_reg[2]_0 ;
  output p_38_in;
  output [0:0]SR;
  output [2:0]ocr;
  output [3:0]\lcr_d_reg[2]_0 ;
  output [3:0]\lcr_d_reg[2]_1 ;
  output [0:0]\shift_regs_reg[7] ;
  output [3:0]\lcr_d_reg[0]_0 ;
  output [13:0]BIT_PERIOD_TX;
  output [2:0]\FSM_onehot_wr_state_reg[3]_0 ;
  output [0:0]\fcr_d_reg[2]_0 ;
  output p_2_in;
  output cpu_write_tdr;
  output \fcr_d_reg[0]_0 ;
  output rdr_empty_reg;
  output data_o_valid_reg;
  output tdr_empty_reg;
  input rst_n_IBUF;
  input [2:0]D;
  input [7:0]fifo_tx_o;
  input rts_n_OBUF;
  input [6:0]\lsr_reg[6]_0 ;
  input lsr0_set;
  input [4:0]\lsr_reg[6]_1 ;
  input rdr_empty_reg_0;
  input fifo_rx_triggered;
  input parity_err;
  input stop_bit_err;
  input \lsr_reg[5]_1 ;
  input [11:0]s_axi_araddr_IBUF;
  input s_axi_arvalid_IBUF;
  input s_axi_rready_IBUF;
  input tdr_empty_reg_0;
  input [0:0]\data_o_reg[7] ;
  input s_axi_bready_IBUF;
  input s_axi_awvalid_IBUF;
  input cts_sync;
  input [11:0]\w_offset_r_reg[11]_0 ;
  input [3:0]s_axi_wstrb_IBUF;
  input s_axi_wvalid_IBUF;
  input fifo_tx_empty;
  input fifo_rx_empty;
  input [0:0]E;
  input cpu_write_tdr_d;
  input clk_IBUF_BUFG;
  input [31:0]\tdr_d_reg[31]_0 ;
  input [7:0]\rdr_reg[7]_0 ;
  output lopt;
  output lopt_1;
  output lopt_2;

  wire [13:0]BIT_PERIOD_TX;
  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_rd_state[0]_i_1_n_0 ;
  wire \FSM_onehot_rd_state[1]_i_1_n_0 ;
  wire \FSM_onehot_rd_state[2]_i_1_n_0 ;
  wire [1:0]\FSM_onehot_rd_state_reg[2]_0 ;
  wire \FSM_onehot_rd_state_reg[2]_lopt_replica_1 ;
  wire \FSM_onehot_rd_state_reg_n_0_[0] ;
  wire \FSM_onehot_wr_state[0]_i_1_n_0 ;
  wire \FSM_onehot_wr_state[1]_i_1_n_0 ;
  wire \FSM_onehot_wr_state[2]_i_1_n_0 ;
  wire \FSM_onehot_wr_state[3]_i_2_n_0 ;
  wire \FSM_onehot_wr_state_reg[1]_lopt_replica_1 ;
  wire [2:0]\FSM_onehot_wr_state_reg[3]_0 ;
  wire \FSM_onehot_wr_state_reg[3]_lopt_replica_1 ;
  wire \FSM_onehot_wr_state_reg_n_0_[0] ;
  wire [4:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire cpu_read_iir;
  wire cpu_write_tdr;
  wire cpu_write_tdr_d;
  wire cpu_write_tdr_d_i_2_n_0;
  wire cpu_write_tdr_d_i_3_n_0;
  wire cts_sync;
  wire [0:0]\data_o_reg[7] ;
  wire data_o_valid_reg;
  wire [31:7]fcr;
  wire fcr1__5;
  wire \fcr_d_reg[0]_0 ;
  wire \fcr_d_reg[1]_0 ;
  wire [0:0]\fcr_d_reg[2]_0 ;
  wire \fcr_d_reg_n_0_[10] ;
  wire \fcr_d_reg_n_0_[11] ;
  wire \fcr_d_reg_n_0_[12] ;
  wire \fcr_d_reg_n_0_[13] ;
  wire \fcr_d_reg_n_0_[14] ;
  wire \fcr_d_reg_n_0_[15] ;
  wire \fcr_d_reg_n_0_[16] ;
  wire \fcr_d_reg_n_0_[17] ;
  wire \fcr_d_reg_n_0_[18] ;
  wire \fcr_d_reg_n_0_[19] ;
  wire \fcr_d_reg_n_0_[20] ;
  wire \fcr_d_reg_n_0_[21] ;
  wire \fcr_d_reg_n_0_[22] ;
  wire \fcr_d_reg_n_0_[23] ;
  wire \fcr_d_reg_n_0_[24] ;
  wire \fcr_d_reg_n_0_[25] ;
  wire \fcr_d_reg_n_0_[26] ;
  wire \fcr_d_reg_n_0_[27] ;
  wire \fcr_d_reg_n_0_[28] ;
  wire \fcr_d_reg_n_0_[29] ;
  wire \fcr_d_reg_n_0_[30] ;
  wire \fcr_d_reg_n_0_[31] ;
  wire \fcr_d_reg_n_0_[5] ;
  wire \fcr_d_reg_n_0_[6] ;
  wire \fcr_d_reg_n_0_[7] ;
  wire \fcr_d_reg_n_0_[8] ;
  wire \fcr_d_reg_n_0_[9] ;
  wire fifo_rx_empty;
  wire fifo_rx_pop_i_3_n_0;
  wire fifo_rx_triggered;
  wire fifo_tx_empty;
  wire [7:0]fifo_tx_o;
  wire [1:1]hcr;
  wire [31:7]hcr_1;
  wire \hcr_d[15]_i_2_n_0 ;
  wire \hcr_d[23]_i_2_n_0 ;
  wire \hcr_d[31]_i_2_n_0 ;
  wire \hcr_d[31]_i_3_n_0 ;
  wire \hcr_d[31]_i_4_n_0 ;
  wire \hcr_d[7]_i_2_n_0 ;
  wire [0:0]\hcr_d_reg[0]_0 ;
  wire \hcr_d_reg_n_0_[10] ;
  wire \hcr_d_reg_n_0_[11] ;
  wire \hcr_d_reg_n_0_[12] ;
  wire \hcr_d_reg_n_0_[13] ;
  wire \hcr_d_reg_n_0_[14] ;
  wire \hcr_d_reg_n_0_[15] ;
  wire \hcr_d_reg_n_0_[16] ;
  wire \hcr_d_reg_n_0_[17] ;
  wire \hcr_d_reg_n_0_[18] ;
  wire \hcr_d_reg_n_0_[19] ;
  wire \hcr_d_reg_n_0_[20] ;
  wire \hcr_d_reg_n_0_[21] ;
  wire \hcr_d_reg_n_0_[22] ;
  wire \hcr_d_reg_n_0_[23] ;
  wire \hcr_d_reg_n_0_[24] ;
  wire \hcr_d_reg_n_0_[25] ;
  wire \hcr_d_reg_n_0_[26] ;
  wire \hcr_d_reg_n_0_[27] ;
  wire \hcr_d_reg_n_0_[28] ;
  wire \hcr_d_reg_n_0_[29] ;
  wire \hcr_d_reg_n_0_[2] ;
  wire \hcr_d_reg_n_0_[30] ;
  wire \hcr_d_reg_n_0_[31] ;
  wire \hcr_d_reg_n_0_[3] ;
  wire \hcr_d_reg_n_0_[4] ;
  wire \hcr_d_reg_n_0_[5] ;
  wire \hcr_d_reg_n_0_[6] ;
  wire \hcr_d_reg_n_0_[7] ;
  wire \hcr_d_reg_n_0_[8] ;
  wire \hcr_d_reg_n_0_[9] ;
  wire [2:0]ier;
  wire ier1__4;
  wire [31:7]ier_0;
  wire \ier_d[31]_i_3_n_0 ;
  wire \ier_d_reg_n_0_[10] ;
  wire \ier_d_reg_n_0_[11] ;
  wire \ier_d_reg_n_0_[12] ;
  wire \ier_d_reg_n_0_[13] ;
  wire \ier_d_reg_n_0_[14] ;
  wire \ier_d_reg_n_0_[15] ;
  wire \ier_d_reg_n_0_[16] ;
  wire \ier_d_reg_n_0_[17] ;
  wire \ier_d_reg_n_0_[18] ;
  wire \ier_d_reg_n_0_[19] ;
  wire \ier_d_reg_n_0_[20] ;
  wire \ier_d_reg_n_0_[21] ;
  wire \ier_d_reg_n_0_[22] ;
  wire \ier_d_reg_n_0_[23] ;
  wire \ier_d_reg_n_0_[24] ;
  wire \ier_d_reg_n_0_[25] ;
  wire \ier_d_reg_n_0_[26] ;
  wire \ier_d_reg_n_0_[27] ;
  wire \ier_d_reg_n_0_[28] ;
  wire \ier_d_reg_n_0_[29] ;
  wire \ier_d_reg_n_0_[30] ;
  wire \ier_d_reg_n_0_[31] ;
  wire \ier_d_reg_n_0_[3] ;
  wire \ier_d_reg_n_0_[4] ;
  wire \ier_d_reg_n_0_[5] ;
  wire \ier_d_reg_n_0_[6] ;
  wire \ier_d_reg_n_0_[7] ;
  wire \ier_d_reg_n_0_[8] ;
  wire \ier_d_reg_n_0_[9] ;
  wire iir1;
  wire iir120_out;
  wire \iir[2]_i_5_n_0 ;
  wire \iir[2]_i_6_n_0 ;
  wire \iir[2]_i_7_n_0 ;
  wire \iir[2]_i_8_n_0 ;
  wire \iir_reg[0]_0 ;
  wire \iir_reg[1]_0 ;
  wire \iir_reg[2]_0 ;
  wire \iir_reg_n_0_[0] ;
  wire \iir_reg_n_0_[1] ;
  wire \iir_reg_n_0_[2] ;
  wire [31:7]lcr;
  wire \lcr_d[31]_i_2_n_0 ;
  wire \lcr_d[31]_i_3_n_0 ;
  wire \lcr_d[31]_i_4_n_0 ;
  wire [3:0]\lcr_d_reg[0]_0 ;
  wire [3:0]\lcr_d_reg[2]_0 ;
  wire [3:0]\lcr_d_reg[2]_1 ;
  wire [7:0]\lcr_d_reg[7]_0 ;
  wire \lcr_d_reg_n_0_[10] ;
  wire \lcr_d_reg_n_0_[11] ;
  wire \lcr_d_reg_n_0_[12] ;
  wire \lcr_d_reg_n_0_[13] ;
  wire \lcr_d_reg_n_0_[14] ;
  wire \lcr_d_reg_n_0_[15] ;
  wire \lcr_d_reg_n_0_[16] ;
  wire \lcr_d_reg_n_0_[17] ;
  wire \lcr_d_reg_n_0_[18] ;
  wire \lcr_d_reg_n_0_[19] ;
  wire \lcr_d_reg_n_0_[20] ;
  wire \lcr_d_reg_n_0_[21] ;
  wire \lcr_d_reg_n_0_[22] ;
  wire \lcr_d_reg_n_0_[23] ;
  wire \lcr_d_reg_n_0_[24] ;
  wire \lcr_d_reg_n_0_[25] ;
  wire \lcr_d_reg_n_0_[26] ;
  wire \lcr_d_reg_n_0_[27] ;
  wire \lcr_d_reg_n_0_[28] ;
  wire \lcr_d_reg_n_0_[29] ;
  wire \lcr_d_reg_n_0_[30] ;
  wire \lcr_d_reg_n_0_[31] ;
  wire \lcr_d_reg_n_0_[8] ;
  wire \lcr_d_reg_n_0_[9] ;
  wire lsr0_set;
  wire lsr6_reset;
  wire \lsr[6]_i_5_n_0 ;
  wire \lsr_reg[0]_0 ;
  wire \lsr_reg[5]_0 ;
  wire \lsr_reg[5]_1 ;
  wire [6:0]\lsr_reg[6]_0 ;
  wire [4:0]\lsr_reg[6]_1 ;
  wire \lsr_reg_n_0_[0] ;
  wire \lsr_reg_n_0_[1] ;
  wire \lsr_reg_n_0_[2] ;
  wire \lsr_reg_n_0_[3] ;
  wire \lsr_reg_n_0_[4] ;
  wire \lsr_reg_n_0_[5] ;
  wire \lsr_reg_n_0_[6] ;
  wire [2:0]ocr;
  wire ocr1__4;
  wire \ocr_d[15]_i_1_n_0 ;
  wire \ocr_d[1]_i_1_n_0 ;
  wire \ocr_d[23]_i_1_n_0 ;
  wire \ocr_d[31]_i_1_n_0 ;
  wire \ocr_d[7]_i_1_n_0 ;
  wire \ocr_d_reg_n_0_[10] ;
  wire \ocr_d_reg_n_0_[11] ;
  wire \ocr_d_reg_n_0_[12] ;
  wire \ocr_d_reg_n_0_[13] ;
  wire \ocr_d_reg_n_0_[14] ;
  wire \ocr_d_reg_n_0_[15] ;
  wire \ocr_d_reg_n_0_[16] ;
  wire \ocr_d_reg_n_0_[17] ;
  wire \ocr_d_reg_n_0_[18] ;
  wire \ocr_d_reg_n_0_[19] ;
  wire \ocr_d_reg_n_0_[20] ;
  wire \ocr_d_reg_n_0_[21] ;
  wire \ocr_d_reg_n_0_[22] ;
  wire \ocr_d_reg_n_0_[23] ;
  wire \ocr_d_reg_n_0_[24] ;
  wire \ocr_d_reg_n_0_[25] ;
  wire \ocr_d_reg_n_0_[26] ;
  wire \ocr_d_reg_n_0_[27] ;
  wire \ocr_d_reg_n_0_[28] ;
  wire \ocr_d_reg_n_0_[29] ;
  wire \ocr_d_reg_n_0_[30] ;
  wire \ocr_d_reg_n_0_[31] ;
  wire \ocr_d_reg_n_0_[3] ;
  wire \ocr_d_reg_n_0_[4] ;
  wire \ocr_d_reg_n_0_[5] ;
  wire \ocr_d_reg_n_0_[6] ;
  wire \ocr_d_reg_n_0_[7] ;
  wire \ocr_d_reg_n_0_[8] ;
  wire \ocr_d_reg_n_0_[9] ;
  wire p_2_in;
  wire p_35_in;
  wire p_38_in;
  wire parity_err;
  wire parity_err_o_reg;
  wire [11:0]r_offset_r;
  wire [7:0]rdr;
  wire rdr_empty_reg;
  wire rdr_empty_reg_0;
  wire [7:0]\rdr_reg[7]_0 ;
  wire rst_n_IBUF;
  wire rts_n_OBUF;
  wire rts_no_i_2_n_0;
  wire rts_no_reg;
  wire [11:0]s_axi_araddr_IBUF;
  wire s_axi_arvalid_IBUF;
  wire s_axi_awvalid_IBUF;
  wire s_axi_bready_IBUF;
  wire [31:0]s_axi_rdata_OBUF;
  wire \s_axi_rdata_OBUF[0]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[0]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[0]_inst_i_4_n_0 ;
  wire \s_axi_rdata_OBUF[10]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[10]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[11]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[11]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[12]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[12]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[13]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[13]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[14]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[14]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[15]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[15]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[16]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[16]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[17]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[17]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[18]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[18]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[19]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[19]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[1]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[1]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[1]_inst_i_4_n_0 ;
  wire \s_axi_rdata_OBUF[20]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[20]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[21]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[21]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[22]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[22]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[23]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[23]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[24]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[24]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[25]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[25]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[26]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[26]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[27]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[27]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[28]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[28]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[29]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[29]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[2]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[2]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[2]_inst_i_4_n_0 ;
  wire \s_axi_rdata_OBUF[30]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[30]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[31]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[31]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[31]_inst_i_4_n_0 ;
  wire \s_axi_rdata_OBUF[31]_inst_i_5_n_0 ;
  wire \s_axi_rdata_OBUF[31]_inst_i_6_n_0 ;
  wire \s_axi_rdata_OBUF[31]_inst_i_7_n_0 ;
  wire \s_axi_rdata_OBUF[3]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[3]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[4]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[4]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[5]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[5]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[6]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[6]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[6]_inst_i_4_n_0 ;
  wire \s_axi_rdata_OBUF[6]_inst_i_5_n_0 ;
  wire \s_axi_rdata_OBUF[6]_inst_i_6_n_0 ;
  wire \s_axi_rdata_OBUF[7]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[7]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[8]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[8]_inst_i_3_n_0 ;
  wire \s_axi_rdata_OBUF[9]_inst_i_2_n_0 ;
  wire \s_axi_rdata_OBUF[9]_inst_i_3_n_0 ;
  wire s_axi_rready_IBUF;
  wire [3:0]s_axi_wstrb_IBUF;
  wire s_axi_wvalid_IBUF;
  wire [0:0]\shift_regs_reg[7] ;
  wire stop_bit_err;
  wire stop_bit_err_o_reg;
  wire [31:7]tdr;
  wire [31:8]tdr_d;
  wire [31:0]\tdr_d_reg[31]_0 ;
  wire [7:0]\tdr_d_reg[7]_0 ;
  wire [7:0]\tdr_d_reg[7]_1 ;
  wire tdr_empty_reg;
  wire tdr_empty_reg_0;
  wire \uart_rx_top_inst/rts_no04_out ;
  wire [11:0]w_offset_r;
  wire [11:0]\w_offset_r_reg[11]_0 ;

  assign lopt = \FSM_onehot_wr_state_reg[1]_lopt_replica_1 ;
  assign lopt_1 = \FSM_onehot_wr_state_reg[3]_lopt_replica_1 ;
  assign lopt_2 = \FSM_onehot_rd_state_reg[2]_lopt_replica_1 ;
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \BIT_PERIOD_TX[0]_i_1 
       (.I0(\lcr_d_reg[7]_0 [7]),
        .I1(\lcr_d_reg[7]_0 [6]),
        .I2(rst_n_IBUF),
        .I3(\lcr_d_reg[7]_0 [5]),
        .O(BIT_PERIOD_TX[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h1060)) 
    \BIT_PERIOD_TX[10]_i_1 
       (.I0(\lcr_d_reg[7]_0 [6]),
        .I1(\lcr_d_reg[7]_0 [7]),
        .I2(rst_n_IBUF),
        .I3(\lcr_d_reg[7]_0 [5]),
        .O(BIT_PERIOD_TX[10]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h3100)) 
    \BIT_PERIOD_TX[11]_i_1 
       (.I0(\lcr_d_reg[7]_0 [5]),
        .I1(\lcr_d_reg[7]_0 [7]),
        .I2(\lcr_d_reg[7]_0 [6]),
        .I3(rst_n_IBUF),
        .O(BIT_PERIOD_TX[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \BIT_PERIOD_TX[12]_i_1 
       (.I0(\lcr_d_reg[7]_0 [7]),
        .I1(\lcr_d_reg[7]_0 [6]),
        .I2(rst_n_IBUF),
        .I3(\lcr_d_reg[7]_0 [5]),
        .O(BIT_PERIOD_TX[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \BIT_PERIOD_TX[13]_i_1 
       (.I0(\lcr_d_reg[7]_0 [6]),
        .I1(\lcr_d_reg[7]_0 [5]),
        .I2(\lcr_d_reg[7]_0 [7]),
        .I3(rst_n_IBUF),
        .O(BIT_PERIOD_TX[13]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \BIT_PERIOD_TX[1]_i_1 
       (.I0(\lcr_d_reg[7]_0 [5]),
        .I1(\lcr_d_reg[7]_0 [7]),
        .I2(rst_n_IBUF),
        .O(BIT_PERIOD_TX[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6200)) 
    \BIT_PERIOD_TX[2]_i_1 
       (.I0(\lcr_d_reg[7]_0 [7]),
        .I1(\lcr_d_reg[7]_0 [6]),
        .I2(\lcr_d_reg[7]_0 [5]),
        .I3(rst_n_IBUF),
        .O(BIT_PERIOD_TX[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \BIT_PERIOD_TX[3]_i_2 
       (.I0(\lcr_d_reg[7]_0 [7]),
        .I1(\lcr_d_reg[7]_0 [6]),
        .I2(rst_n_IBUF),
        .I3(\lcr_d_reg[7]_0 [5]),
        .O(BIT_PERIOD_TX[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF77F)) 
    \BIT_PERIOD_TX[4]_i_1 
       (.I0(rst_n_IBUF),
        .I1(\lcr_d_reg[7]_0 [5]),
        .I2(\lcr_d_reg[7]_0 [7]),
        .I3(\lcr_d_reg[7]_0 [6]),
        .O(BIT_PERIOD_TX[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h69FF)) 
    \BIT_PERIOD_TX[5]_i_1 
       (.I0(\lcr_d_reg[7]_0 [7]),
        .I1(\lcr_d_reg[7]_0 [5]),
        .I2(\lcr_d_reg[7]_0 [6]),
        .I3(rst_n_IBUF),
        .O(BIT_PERIOD_TX[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \BIT_PERIOD_TX[6]_i_1 
       (.I0(\lcr_d_reg[7]_0 [6]),
        .I1(\lcr_d_reg[7]_0 [7]),
        .I2(rst_n_IBUF),
        .I3(\lcr_d_reg[7]_0 [5]),
        .O(BIT_PERIOD_TX[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hF757)) 
    \BIT_PERIOD_TX[7]_i_1 
       (.I0(rst_n_IBUF),
        .I1(\lcr_d_reg[7]_0 [5]),
        .I2(\lcr_d_reg[7]_0 [7]),
        .I3(\lcr_d_reg[7]_0 [6]),
        .O(BIT_PERIOD_TX[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h3FBB)) 
    \BIT_PERIOD_TX[8]_i_1 
       (.I0(\lcr_d_reg[7]_0 [7]),
        .I1(rst_n_IBUF),
        .I2(\lcr_d_reg[7]_0 [5]),
        .I3(\lcr_d_reg[7]_0 [6]),
        .O(BIT_PERIOD_TX[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    \BIT_PERIOD_TX[9]_i_1 
       (.I0(\lcr_d_reg[7]_0 [6]),
        .I1(\lcr_d_reg[7]_0 [7]),
        .I2(\lcr_d_reg[7]_0 [5]),
        .I3(rst_n_IBUF),
        .O(BIT_PERIOD_TX[9]));
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_rd_state[0]_i_1 
       (.I0(s_axi_arvalid_IBUF),
        .I1(\FSM_onehot_rd_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_rd_state_reg[2]_0 [1]),
        .O(\FSM_onehot_rd_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_rd_state[1]_i_1 
       (.I0(s_axi_rready_IBUF),
        .I1(\FSM_onehot_rd_state_reg[2]_0 [0]),
        .I2(s_axi_arvalid_IBUF),
        .I3(\FSM_onehot_rd_state_reg_n_0_[0] ),
        .O(\FSM_onehot_rd_state[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_rd_state[2]_i_1 
       (.I0(\FSM_onehot_rd_state_reg[2]_0 [0]),
        .I1(s_axi_rready_IBUF),
        .O(\FSM_onehot_rd_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RD_IDLE:001,RD_READY:010,RD_DONE:100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rd_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_rd_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_rd_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "RD_IDLE:001,RD_READY:010,RD_DONE:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rd_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_rd_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rd_state_reg[2]_0 [0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "RD_IDLE:001,RD_READY:010,RD_DONE:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rd_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_rd_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_rd_state_reg[2]_0 [1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "RD_IDLE:001,RD_READY:010,RD_DONE:100" *) 
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rd_state_reg[2]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_rd_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_rd_state_reg[2]_lopt_replica_1 ),
        .R(SR));
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_wr_state[0]_i_1 
       (.I0(s_axi_awvalid_IBUF),
        .I1(\FSM_onehot_wr_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_wr_state_reg[3]_0 [2]),
        .O(\FSM_onehot_wr_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_wr_state[1]_i_1 
       (.I0(\FSM_onehot_wr_state_reg_n_0_[0] ),
        .I1(s_axi_awvalid_IBUF),
        .O(\FSM_onehot_wr_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_wr_state[2]_i_1 
       (.I0(s_axi_bready_IBUF),
        .I1(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I2(\FSM_onehot_wr_state_reg[3]_0 [0]),
        .O(\FSM_onehot_wr_state[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wr_state[3]_i_1 
       (.I0(rst_n_IBUF),
        .O(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_wr_state[3]_i_2 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_bready_IBUF),
        .O(\FSM_onehot_wr_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "WR_IDLE:0001,WR_READY:0010,WR_DATA:0100,WR_DONE:1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_wr_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_wr_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_wr_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "WR_IDLE:0001,WR_READY:0010,WR_DATA:0100,WR_DONE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wr_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_wr_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_wr_state_reg[3]_0 [0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "WR_IDLE:0001,WR_READY:0010,WR_DATA:0100,WR_DONE:1000" *) 
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wr_state_reg[1]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_wr_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_wr_state_reg[1]_lopt_replica_1 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WR_IDLE:0001,WR_READY:0010,WR_DATA:0100,WR_DONE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wr_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_wr_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "WR_IDLE:0001,WR_READY:0010,WR_DATA:0100,WR_DONE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wr_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_wr_state[3]_i_2_n_0 ),
        .Q(\FSM_onehot_wr_state_reg[3]_0 [2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "WR_IDLE:0001,WR_READY:0010,WR_DATA:0100,WR_DONE:1000" *) 
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wr_state_reg[3]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_wr_state[3]_i_2_n_0 ),
        .Q(\FSM_onehot_wr_state_reg[3]_lopt_replica_1 ),
        .R(SR));
  LUT3 #(
    .INIT(8'h2A)) 
    \FSM_sequential_current_state[1]_i_4__0 
       (.I0(ocr[0]),
        .I1(\hcr_d_reg[0]_0 ),
        .I2(cts_sync),
        .O(p_2_in));
  LUT2 #(
    .INIT(4'hB)) 
    \count[4]_i_1__0 
       (.I0(Q[2]),
        .I1(rst_n_IBUF),
        .O(\fcr_d_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    cpu_write_tdr_d_i_1
       (.I0(cpu_write_tdr_d_i_2_n_0),
        .I1(\w_offset_r_reg[11]_0 [1]),
        .I2(\w_offset_r_reg[11]_0 [0]),
        .I3(\w_offset_r_reg[11]_0 [3]),
        .I4(\w_offset_r_reg[11]_0 [2]),
        .I5(cpu_write_tdr_d_i_3_n_0),
        .O(cpu_write_tdr));
  LUT4 #(
    .INIT(16'h0001)) 
    cpu_write_tdr_d_i_2
       (.I0(\w_offset_r_reg[11]_0 [7]),
        .I1(\w_offset_r_reg[11]_0 [6]),
        .I2(\w_offset_r_reg[11]_0 [5]),
        .I3(\w_offset_r_reg[11]_0 [4]),
        .O(cpu_write_tdr_d_i_2_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    cpu_write_tdr_d_i_3
       (.I0(\w_offset_r_reg[11]_0 [8]),
        .I1(\w_offset_r_reg[11]_0 [9]),
        .I2(\w_offset_r_reg[11]_0 [10]),
        .I3(\w_offset_r_reg[11]_0 [11]),
        .I4(\FSM_onehot_wr_state_reg[3]_0 [0]),
        .I5(s_axi_awvalid_IBUF),
        .O(cpu_write_tdr_d_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_o[7]_i_2 
       (.I0(\data_o_reg[7] ),
        .I1(\lcr_d_reg[7]_0 [0]),
        .I2(\lcr_d_reg[7]_0 [1]),
        .O(\shift_regs_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \data_size_sampled[0]_i_1 
       (.I0(\lcr_d_reg[7]_0 [0]),
        .O(\lcr_d_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_size_sampled[1]_i_1 
       (.I0(\lcr_d_reg[7]_0 [0]),
        .I1(\lcr_d_reg[7]_0 [1]),
        .O(\lcr_d_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \data_size_sampled[2]_i_1 
       (.I0(\lcr_d_reg[7]_0 [1]),
        .I1(\lcr_d_reg[7]_0 [0]),
        .O(\lcr_d_reg[0]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_size_sampled[3]_i_1 
       (.I0(\lcr_d_reg[7]_0 [0]),
        .I1(\lcr_d_reg[7]_0 [1]),
        .O(\lcr_d_reg[0]_0 [3]));
  LUT3 #(
    .INIT(8'h80)) 
    \fcr_d[15]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb_IBUF[1]),
        .I2(fcr1__5),
        .O(fcr[15]));
  LUT3 #(
    .INIT(8'h80)) 
    \fcr_d[23]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb_IBUF[2]),
        .I2(fcr1__5),
        .O(fcr[23]));
  LUT3 #(
    .INIT(8'h80)) 
    \fcr_d[31]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb_IBUF[3]),
        .I2(fcr1__5),
        .O(fcr[31]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fcr_d[31]_i_2 
       (.I0(\lcr_d[31]_i_4_n_0 ),
        .I1(w_offset_r[0]),
        .I2(\ier_d[31]_i_3_n_0 ),
        .I3(w_offset_r[3]),
        .I4(w_offset_r[4]),
        .I5(w_offset_r[2]),
        .O(fcr1__5));
  LUT3 #(
    .INIT(8'h80)) 
    \fcr_d[7]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb_IBUF[0]),
        .I2(fcr1__5),
        .O(fcr[7]));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[7]),
        .D(\tdr_d_reg[31]_0 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[15]),
        .D(\tdr_d_reg[31]_0 [10]),
        .Q(\fcr_d_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[15]),
        .D(\tdr_d_reg[31]_0 [11]),
        .Q(\fcr_d_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[15]),
        .D(\tdr_d_reg[31]_0 [12]),
        .Q(\fcr_d_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[15]),
        .D(\tdr_d_reg[31]_0 [13]),
        .Q(\fcr_d_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[15]),
        .D(\tdr_d_reg[31]_0 [14]),
        .Q(\fcr_d_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[15]),
        .D(\tdr_d_reg[31]_0 [15]),
        .Q(\fcr_d_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[23]),
        .D(\tdr_d_reg[31]_0 [16]),
        .Q(\fcr_d_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[23]),
        .D(\tdr_d_reg[31]_0 [17]),
        .Q(\fcr_d_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[23]),
        .D(\tdr_d_reg[31]_0 [18]),
        .Q(\fcr_d_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[23]),
        .D(\tdr_d_reg[31]_0 [19]),
        .Q(\fcr_d_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[7]),
        .D(\tdr_d_reg[31]_0 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[23]),
        .D(\tdr_d_reg[31]_0 [20]),
        .Q(\fcr_d_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[23]),
        .D(\tdr_d_reg[31]_0 [21]),
        .Q(\fcr_d_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[23]),
        .D(\tdr_d_reg[31]_0 [22]),
        .Q(\fcr_d_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[23]),
        .D(\tdr_d_reg[31]_0 [23]),
        .Q(\fcr_d_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[31]),
        .D(\tdr_d_reg[31]_0 [24]),
        .Q(\fcr_d_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[31]),
        .D(\tdr_d_reg[31]_0 [25]),
        .Q(\fcr_d_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[31]),
        .D(\tdr_d_reg[31]_0 [26]),
        .Q(\fcr_d_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[31]),
        .D(\tdr_d_reg[31]_0 [27]),
        .Q(\fcr_d_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[31]),
        .D(\tdr_d_reg[31]_0 [28]),
        .Q(\fcr_d_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[31]),
        .D(\tdr_d_reg[31]_0 [29]),
        .Q(\fcr_d_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[7]),
        .D(\tdr_d_reg[31]_0 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[31]),
        .D(\tdr_d_reg[31]_0 [30]),
        .Q(\fcr_d_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[31]),
        .D(\tdr_d_reg[31]_0 [31]),
        .Q(\fcr_d_reg_n_0_[31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[7]),
        .D(\tdr_d_reg[31]_0 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[7]),
        .D(\tdr_d_reg[31]_0 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[7]),
        .D(\tdr_d_reg[31]_0 [5]),
        .Q(\fcr_d_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[7]),
        .D(\tdr_d_reg[31]_0 [6]),
        .Q(\fcr_d_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[7]),
        .D(\tdr_d_reg[31]_0 [7]),
        .Q(\fcr_d_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[15]),
        .D(\tdr_d_reg[31]_0 [8]),
        .Q(\fcr_d_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcr_d_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(fcr[15]),
        .D(\tdr_d_reg[31]_0 [9]),
        .Q(\fcr_d_reg_n_0_[9] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    fifo_rx_pop_i_2
       (.I0(\iir[2]_i_6_n_0 ),
        .I1(s_axi_araddr_IBUF[1]),
        .I2(s_axi_araddr_IBUF[0]),
        .I3(s_axi_araddr_IBUF[3]),
        .I4(s_axi_araddr_IBUF[2]),
        .I5(fifo_rx_pop_i_3_n_0),
        .O(p_38_in));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    fifo_rx_pop_i_3
       (.I0(s_axi_araddr_IBUF[7]),
        .I1(s_axi_araddr_IBUF[6]),
        .I2(s_axi_araddr_IBUF[4]),
        .I3(s_axi_araddr_IBUF[5]),
        .I4(s_axi_arvalid_IBUF),
        .I5(\FSM_onehot_rd_state_reg[2]_0 [0]),
        .O(fifo_rx_pop_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \hcr_d[15]_i_1 
       (.I0(\hcr_d[15]_i_2_n_0 ),
        .I1(\lcr_d[31]_i_2_n_0 ),
        .I2(w_offset_r[5]),
        .I3(w_offset_r[4]),
        .I4(\hcr_d[31]_i_3_n_0 ),
        .I5(\hcr_d[31]_i_4_n_0 ),
        .O(hcr_1[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \hcr_d[15]_i_2 
       (.I0(s_axi_wstrb_IBUF[1]),
        .I1(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .O(\hcr_d[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \hcr_d[23]_i_1 
       (.I0(\hcr_d[23]_i_2_n_0 ),
        .I1(\lcr_d[31]_i_2_n_0 ),
        .I2(w_offset_r[5]),
        .I3(w_offset_r[4]),
        .I4(\hcr_d[31]_i_3_n_0 ),
        .I5(\hcr_d[31]_i_4_n_0 ),
        .O(hcr_1[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \hcr_d[23]_i_2 
       (.I0(s_axi_wstrb_IBUF[2]),
        .I1(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .O(\hcr_d[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \hcr_d[31]_i_1 
       (.I0(\hcr_d[31]_i_2_n_0 ),
        .I1(\lcr_d[31]_i_2_n_0 ),
        .I2(w_offset_r[5]),
        .I3(w_offset_r[4]),
        .I4(\hcr_d[31]_i_3_n_0 ),
        .I5(\hcr_d[31]_i_4_n_0 ),
        .O(hcr_1[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \hcr_d[31]_i_2 
       (.I0(s_axi_wstrb_IBUF[3]),
        .I1(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .O(\hcr_d[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \hcr_d[31]_i_3 
       (.I0(w_offset_r[2]),
        .I1(w_offset_r[3]),
        .O(\hcr_d[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \hcr_d[31]_i_4 
       (.I0(w_offset_r[7]),
        .I1(w_offset_r[6]),
        .O(\hcr_d[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \hcr_d[7]_i_1 
       (.I0(\hcr_d[7]_i_2_n_0 ),
        .I1(\lcr_d[31]_i_2_n_0 ),
        .I2(w_offset_r[5]),
        .I3(w_offset_r[4]),
        .I4(\hcr_d[31]_i_3_n_0 ),
        .I5(\hcr_d[31]_i_4_n_0 ),
        .O(hcr_1[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \hcr_d[7]_i_2 
       (.I0(s_axi_wstrb_IBUF[0]),
        .I1(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .O(\hcr_d[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[7]),
        .D(\tdr_d_reg[31]_0 [0]),
        .Q(\hcr_d_reg[0]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[15]),
        .D(\tdr_d_reg[31]_0 [10]),
        .Q(\hcr_d_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[15]),
        .D(\tdr_d_reg[31]_0 [11]),
        .Q(\hcr_d_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[15]),
        .D(\tdr_d_reg[31]_0 [12]),
        .Q(\hcr_d_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[15]),
        .D(\tdr_d_reg[31]_0 [13]),
        .Q(\hcr_d_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[15]),
        .D(\tdr_d_reg[31]_0 [14]),
        .Q(\hcr_d_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[15]),
        .D(\tdr_d_reg[31]_0 [15]),
        .Q(\hcr_d_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[23]),
        .D(\tdr_d_reg[31]_0 [16]),
        .Q(\hcr_d_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[23]),
        .D(\tdr_d_reg[31]_0 [17]),
        .Q(\hcr_d_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[23]),
        .D(\tdr_d_reg[31]_0 [18]),
        .Q(\hcr_d_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[23]),
        .D(\tdr_d_reg[31]_0 [19]),
        .Q(\hcr_d_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[7]),
        .D(\tdr_d_reg[31]_0 [1]),
        .Q(hcr),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[23]),
        .D(\tdr_d_reg[31]_0 [20]),
        .Q(\hcr_d_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[23]),
        .D(\tdr_d_reg[31]_0 [21]),
        .Q(\hcr_d_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[23]),
        .D(\tdr_d_reg[31]_0 [22]),
        .Q(\hcr_d_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[23]),
        .D(\tdr_d_reg[31]_0 [23]),
        .Q(\hcr_d_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[31]),
        .D(\tdr_d_reg[31]_0 [24]),
        .Q(\hcr_d_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[31]),
        .D(\tdr_d_reg[31]_0 [25]),
        .Q(\hcr_d_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[31]),
        .D(\tdr_d_reg[31]_0 [26]),
        .Q(\hcr_d_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[31]),
        .D(\tdr_d_reg[31]_0 [27]),
        .Q(\hcr_d_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[31]),
        .D(\tdr_d_reg[31]_0 [28]),
        .Q(\hcr_d_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[31]),
        .D(\tdr_d_reg[31]_0 [29]),
        .Q(\hcr_d_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[7]),
        .D(\tdr_d_reg[31]_0 [2]),
        .Q(\hcr_d_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[31]),
        .D(\tdr_d_reg[31]_0 [30]),
        .Q(\hcr_d_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[31]),
        .D(\tdr_d_reg[31]_0 [31]),
        .Q(\hcr_d_reg_n_0_[31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[7]),
        .D(\tdr_d_reg[31]_0 [3]),
        .Q(\hcr_d_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[7]),
        .D(\tdr_d_reg[31]_0 [4]),
        .Q(\hcr_d_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[7]),
        .D(\tdr_d_reg[31]_0 [5]),
        .Q(\hcr_d_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[7]),
        .D(\tdr_d_reg[31]_0 [6]),
        .Q(\hcr_d_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[7]),
        .D(\tdr_d_reg[31]_0 [7]),
        .Q(\hcr_d_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[15]),
        .D(\tdr_d_reg[31]_0 [8]),
        .Q(\hcr_d_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hcr_d_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(hcr_1[15]),
        .D(\tdr_d_reg[31]_0 [9]),
        .Q(\hcr_d_reg_n_0_[9] ),
        .R(SR));
  LUT3 #(
    .INIT(8'h80)) 
    \ier_d[15]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb_IBUF[1]),
        .I2(ier1__4),
        .O(ier_0[15]));
  LUT3 #(
    .INIT(8'h80)) 
    \ier_d[23]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb_IBUF[2]),
        .I2(ier1__4),
        .O(ier_0[23]));
  LUT3 #(
    .INIT(8'h80)) 
    \ier_d[31]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb_IBUF[3]),
        .I2(ier1__4),
        .O(ier_0[31]));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \ier_d[31]_i_2 
       (.I0(\lcr_d[31]_i_4_n_0 ),
        .I1(w_offset_r[0]),
        .I2(\ier_d[31]_i_3_n_0 ),
        .I3(w_offset_r[4]),
        .I4(w_offset_r[3]),
        .I5(w_offset_r[2]),
        .O(ier1__4));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ier_d[31]_i_3 
       (.I0(w_offset_r[1]),
        .I1(w_offset_r[5]),
        .I2(w_offset_r[6]),
        .I3(w_offset_r[7]),
        .O(\ier_d[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \ier_d[7]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb_IBUF[0]),
        .I2(ier1__4),
        .O(ier_0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[7]),
        .D(\tdr_d_reg[31]_0 [0]),
        .Q(ier[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[15]),
        .D(\tdr_d_reg[31]_0 [10]),
        .Q(\ier_d_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[15]),
        .D(\tdr_d_reg[31]_0 [11]),
        .Q(\ier_d_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[15]),
        .D(\tdr_d_reg[31]_0 [12]),
        .Q(\ier_d_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[15]),
        .D(\tdr_d_reg[31]_0 [13]),
        .Q(\ier_d_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[15]),
        .D(\tdr_d_reg[31]_0 [14]),
        .Q(\ier_d_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[15]),
        .D(\tdr_d_reg[31]_0 [15]),
        .Q(\ier_d_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[23]),
        .D(\tdr_d_reg[31]_0 [16]),
        .Q(\ier_d_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[23]),
        .D(\tdr_d_reg[31]_0 [17]),
        .Q(\ier_d_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[23]),
        .D(\tdr_d_reg[31]_0 [18]),
        .Q(\ier_d_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[23]),
        .D(\tdr_d_reg[31]_0 [19]),
        .Q(\ier_d_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[7]),
        .D(\tdr_d_reg[31]_0 [1]),
        .Q(ier[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[23]),
        .D(\tdr_d_reg[31]_0 [20]),
        .Q(\ier_d_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[23]),
        .D(\tdr_d_reg[31]_0 [21]),
        .Q(\ier_d_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[23]),
        .D(\tdr_d_reg[31]_0 [22]),
        .Q(\ier_d_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[23]),
        .D(\tdr_d_reg[31]_0 [23]),
        .Q(\ier_d_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[31]),
        .D(\tdr_d_reg[31]_0 [24]),
        .Q(\ier_d_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[31]),
        .D(\tdr_d_reg[31]_0 [25]),
        .Q(\ier_d_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[31]),
        .D(\tdr_d_reg[31]_0 [26]),
        .Q(\ier_d_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[31]),
        .D(\tdr_d_reg[31]_0 [27]),
        .Q(\ier_d_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[31]),
        .D(\tdr_d_reg[31]_0 [28]),
        .Q(\ier_d_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[31]),
        .D(\tdr_d_reg[31]_0 [29]),
        .Q(\ier_d_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[7]),
        .D(\tdr_d_reg[31]_0 [2]),
        .Q(ier[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[31]),
        .D(\tdr_d_reg[31]_0 [30]),
        .Q(\ier_d_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[31]),
        .D(\tdr_d_reg[31]_0 [31]),
        .Q(\ier_d_reg_n_0_[31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[7]),
        .D(\tdr_d_reg[31]_0 [3]),
        .Q(\ier_d_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[7]),
        .D(\tdr_d_reg[31]_0 [4]),
        .Q(\ier_d_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[7]),
        .D(\tdr_d_reg[31]_0 [5]),
        .Q(\ier_d_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[7]),
        .D(\tdr_d_reg[31]_0 [6]),
        .Q(\ier_d_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[7]),
        .D(\tdr_d_reg[31]_0 [7]),
        .Q(\ier_d_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[15]),
        .D(\tdr_d_reg[31]_0 [8]),
        .Q(\ier_d_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ier_d_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(ier_0[15]),
        .D(\tdr_d_reg[31]_0 [9]),
        .Q(\ier_d_reg_n_0_[9] ),
        .R(SR));
  LUT4 #(
    .INIT(16'hBFB0)) 
    \iir[0]_i_1 
       (.I0(cpu_read_iir),
        .I1(rst_n_IBUF),
        .I2(\iir[2]_i_5_n_0 ),
        .I3(D[0]),
        .O(\iir_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h2202FFFF22020000)) 
    \iir[1]_i_1 
       (.I0(rst_n_IBUF),
        .I1(cpu_read_iir),
        .I2(iir1),
        .I3(iir120_out),
        .I4(\iir[2]_i_5_n_0 ),
        .I5(D[1]),
        .O(\iir_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h2220FFFF22200000)) 
    \iir[2]_i_1 
       (.I0(rst_n_IBUF),
        .I1(cpu_read_iir),
        .I2(iir120_out),
        .I3(iir1),
        .I4(\iir[2]_i_5_n_0 ),
        .I5(D[2]),
        .O(\iir_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \iir[2]_i_2 
       (.I0(\iir[2]_i_6_n_0 ),
        .I1(s_axi_araddr_IBUF[1]),
        .I2(s_axi_araddr_IBUF[0]),
        .I3(s_axi_araddr_IBUF[3]),
        .I4(s_axi_araddr_IBUF[2]),
        .I5(\iir[2]_i_7_n_0 ),
        .O(cpu_read_iir));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \iir[2]_i_3 
       (.I0(\lsr_reg[6]_0 [2]),
        .I1(\lsr_reg[6]_0 [6]),
        .I2(\lsr_reg[6]_0 [5]),
        .I3(\lsr_reg[6]_0 [3]),
        .I4(ier[2]),
        .O(iir120_out));
  LUT2 #(
    .INIT(4'h2)) 
    \iir[2]_i_4 
       (.I0(ier[0]),
        .I1(rdr_empty_reg_0),
        .O(iir1));
  LUT5 #(
    .INIT(32'hFFFFBAFF)) 
    \iir[2]_i_5 
       (.I0(cpu_read_iir),
        .I1(rdr_empty_reg_0),
        .I2(ier[0]),
        .I3(rst_n_IBUF),
        .I4(\iir[2]_i_8_n_0 ),
        .O(\iir[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \iir[2]_i_6 
       (.I0(s_axi_araddr_IBUF[8]),
        .I1(s_axi_araddr_IBUF[9]),
        .I2(s_axi_araddr_IBUF[11]),
        .I3(s_axi_araddr_IBUF[10]),
        .O(\iir[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \iir[2]_i_7 
       (.I0(s_axi_araddr_IBUF[7]),
        .I1(s_axi_araddr_IBUF[6]),
        .I2(s_axi_araddr_IBUF[4]),
        .I3(s_axi_araddr_IBUF[5]),
        .I4(s_axi_arvalid_IBUF),
        .I5(\FSM_onehot_rd_state_reg[2]_0 [0]),
        .O(\iir[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \iir[2]_i_8 
       (.I0(tdr_empty_reg_0),
        .I1(ier[1]),
        .I2(ocr[1]),
        .I3(iir120_out),
        .O(\iir[2]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \iir_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(\iir_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \iir_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(\iir_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \iir_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(\iir_reg_n_0_[2] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \lcr_d[15]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb_IBUF[1]),
        .I2(\lcr_d[31]_i_2_n_0 ),
        .I3(w_offset_r[2]),
        .I4(w_offset_r[3]),
        .I5(\lcr_d[31]_i_3_n_0 ),
        .O(lcr[15]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \lcr_d[23]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb_IBUF[2]),
        .I2(\lcr_d[31]_i_2_n_0 ),
        .I3(w_offset_r[2]),
        .I4(w_offset_r[3]),
        .I5(\lcr_d[31]_i_3_n_0 ),
        .O(lcr[23]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \lcr_d[31]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb_IBUF[3]),
        .I2(\lcr_d[31]_i_2_n_0 ),
        .I3(w_offset_r[2]),
        .I4(w_offset_r[3]),
        .I5(\lcr_d[31]_i_3_n_0 ),
        .O(lcr[31]));
  LUT3 #(
    .INIT(8'h02)) 
    \lcr_d[31]_i_2 
       (.I0(\lcr_d[31]_i_4_n_0 ),
        .I1(w_offset_r[0]),
        .I2(w_offset_r[1]),
        .O(\lcr_d[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \lcr_d[31]_i_3 
       (.I0(w_offset_r[4]),
        .I1(w_offset_r[5]),
        .I2(w_offset_r[6]),
        .I3(w_offset_r[7]),
        .O(\lcr_d[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \lcr_d[31]_i_4 
       (.I0(s_axi_bready_IBUF),
        .I1(s_axi_wvalid_IBUF),
        .I2(w_offset_r[10]),
        .I3(w_offset_r[11]),
        .I4(w_offset_r[9]),
        .I5(w_offset_r[8]),
        .O(\lcr_d[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \lcr_d[7]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb_IBUF[0]),
        .I2(\lcr_d[31]_i_2_n_0 ),
        .I3(w_offset_r[2]),
        .I4(w_offset_r[3]),
        .I5(\lcr_d[31]_i_3_n_0 ),
        .O(lcr[7]));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[7]),
        .D(\tdr_d_reg[31]_0 [0]),
        .Q(\lcr_d_reg[7]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[15]),
        .D(\tdr_d_reg[31]_0 [10]),
        .Q(\lcr_d_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[15]),
        .D(\tdr_d_reg[31]_0 [11]),
        .Q(\lcr_d_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[15]),
        .D(\tdr_d_reg[31]_0 [12]),
        .Q(\lcr_d_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[15]),
        .D(\tdr_d_reg[31]_0 [13]),
        .Q(\lcr_d_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[15]),
        .D(\tdr_d_reg[31]_0 [14]),
        .Q(\lcr_d_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[15]),
        .D(\tdr_d_reg[31]_0 [15]),
        .Q(\lcr_d_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[23]),
        .D(\tdr_d_reg[31]_0 [16]),
        .Q(\lcr_d_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[23]),
        .D(\tdr_d_reg[31]_0 [17]),
        .Q(\lcr_d_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[23]),
        .D(\tdr_d_reg[31]_0 [18]),
        .Q(\lcr_d_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[23]),
        .D(\tdr_d_reg[31]_0 [19]),
        .Q(\lcr_d_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[7]),
        .D(\tdr_d_reg[31]_0 [1]),
        .Q(\lcr_d_reg[7]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[23]),
        .D(\tdr_d_reg[31]_0 [20]),
        .Q(\lcr_d_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[23]),
        .D(\tdr_d_reg[31]_0 [21]),
        .Q(\lcr_d_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[23]),
        .D(\tdr_d_reg[31]_0 [22]),
        .Q(\lcr_d_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[23]),
        .D(\tdr_d_reg[31]_0 [23]),
        .Q(\lcr_d_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[31]),
        .D(\tdr_d_reg[31]_0 [24]),
        .Q(\lcr_d_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[31]),
        .D(\tdr_d_reg[31]_0 [25]),
        .Q(\lcr_d_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[31]),
        .D(\tdr_d_reg[31]_0 [26]),
        .Q(\lcr_d_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[31]),
        .D(\tdr_d_reg[31]_0 [27]),
        .Q(\lcr_d_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[31]),
        .D(\tdr_d_reg[31]_0 [28]),
        .Q(\lcr_d_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[31]),
        .D(\tdr_d_reg[31]_0 [29]),
        .Q(\lcr_d_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[7]),
        .D(\tdr_d_reg[31]_0 [2]),
        .Q(\lcr_d_reg[7]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[31]),
        .D(\tdr_d_reg[31]_0 [30]),
        .Q(\lcr_d_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[31]),
        .D(\tdr_d_reg[31]_0 [31]),
        .Q(\lcr_d_reg_n_0_[31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[7]),
        .D(\tdr_d_reg[31]_0 [3]),
        .Q(\lcr_d_reg[7]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[7]),
        .D(\tdr_d_reg[31]_0 [4]),
        .Q(\lcr_d_reg[7]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[7]),
        .D(\tdr_d_reg[31]_0 [5]),
        .Q(\lcr_d_reg[7]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[7]),
        .D(\tdr_d_reg[31]_0 [6]),
        .Q(\lcr_d_reg[7]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[7]),
        .D(\tdr_d_reg[31]_0 [7]),
        .Q(\lcr_d_reg[7]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[15]),
        .D(\tdr_d_reg[31]_0 [8]),
        .Q(\lcr_d_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lcr_d_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(lcr[15]),
        .D(\tdr_d_reg[31]_0 [9]),
        .Q(\lcr_d_reg_n_0_[9] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hE000E0E0E0E0E0E0)) 
    \lsr[0]_i_1 
       (.I0(\lsr_reg[6]_0 [0]),
        .I1(lsr0_set),
        .I2(rst_n_IBUF),
        .I3(\lsr_reg[6]_1 [0]),
        .I4(p_35_in),
        .I5(s_axi_rdata_OBUF[0]),
        .O(\lsr_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \lsr[1]_i_1 
       (.I0(rst_n_IBUF),
        .I1(rdr_empty_reg_0),
        .I2(Q[0]),
        .I3(fifo_rx_empty),
        .O(rdr_empty_reg));
  LUT6 #(
    .INIT(64'hA8A8A8A800A8A8A8)) 
    \lsr[2]_i_1 
       (.I0(rst_n_IBUF),
        .I1(parity_err),
        .I2(\lsr_reg[6]_0 [2]),
        .I3(s_axi_rdata_OBUF[2]),
        .I4(p_35_in),
        .I5(\lsr_reg[6]_1 [1]),
        .O(parity_err_o_reg));
  LUT6 #(
    .INIT(64'hA8A8A8A800A8A8A8)) 
    \lsr[3]_i_1 
       (.I0(rst_n_IBUF),
        .I1(stop_bit_err),
        .I2(\lsr_reg[6]_0 [3]),
        .I3(s_axi_rdata_OBUF[3]),
        .I4(p_35_in),
        .I5(\lsr_reg[6]_1 [2]),
        .O(stop_bit_err_o_reg));
  LUT4 #(
    .INIT(16'hA280)) 
    \lsr[4]_i_1 
       (.I0(rst_n_IBUF),
        .I1(Q[0]),
        .I2(fifo_tx_empty),
        .I3(tdr_empty_reg_0),
        .O(\fcr_d_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A800A8A8A8)) 
    \lsr[5]_i_1 
       (.I0(rst_n_IBUF),
        .I1(\lsr_reg[5]_1 ),
        .I2(\lsr_reg[6]_0 [5]),
        .I3(s_axi_rdata_OBUF[5]),
        .I4(p_35_in),
        .I5(\lsr_reg[6]_1 [3]),
        .O(\lsr_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \lsr[5]_i_3 
       (.I0(\iir[2]_i_6_n_0 ),
        .I1(s_axi_araddr_IBUF[1]),
        .I2(s_axi_araddr_IBUF[0]),
        .I3(s_axi_araddr_IBUF[3]),
        .I4(s_axi_araddr_IBUF[2]),
        .I5(\iir[2]_i_7_n_0 ),
        .O(p_35_in));
  LUT5 #(
    .INIT(32'h44400000)) 
    \lsr[6]_i_4 
       (.I0(\lsr_reg[6]_1 [4]),
        .I1(p_35_in),
        .I2(\lsr[6]_i_5_n_0 ),
        .I3(\s_axi_rdata_OBUF[6]_inst_i_2_n_0 ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .O(lsr6_reset));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \lsr[6]_i_5 
       (.I0(\hcr_d_reg_n_0_[6] ),
        .I1(\s_axi_rdata_OBUF[6]_inst_i_3_n_0 ),
        .I2(\s_axi_rdata_OBUF[6]_inst_i_4_n_0 ),
        .I3(r_offset_r[0]),
        .I4(r_offset_r[4]),
        .I5(r_offset_r[5]),
        .O(\lsr[6]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lsr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\lsr_reg[6]_0 [0]),
        .Q(\lsr_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lsr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\lsr_reg[6]_0 [1]),
        .Q(\lsr_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lsr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\lsr_reg[6]_0 [2]),
        .Q(\lsr_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lsr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\lsr_reg[6]_0 [3]),
        .Q(\lsr_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lsr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\lsr_reg[6]_0 [4]),
        .Q(\lsr_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lsr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\lsr_reg[6]_0 [5]),
        .Q(\lsr_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \lsr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\lsr_reg[6]_0 [6]),
        .Q(\lsr_reg_n_0_[6] ),
        .R(SR));
  LUT4 #(
    .INIT(16'h4000)) 
    \ocr_d[15]_i_1 
       (.I0(ocr[1]),
        .I1(s_axi_wstrb_IBUF[1]),
        .I2(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I3(ocr1__4),
        .O(\ocr_d[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \ocr_d[1]_i_1 
       (.I0(\tdr_d_reg[31]_0 [1]),
        .I1(ocr1__4),
        .I2(s_axi_wstrb_IBUF[0]),
        .I3(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I4(ocr[1]),
        .O(\ocr_d[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \ocr_d[23]_i_1 
       (.I0(ocr[1]),
        .I1(s_axi_wstrb_IBUF[2]),
        .I2(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I3(ocr1__4),
        .O(\ocr_d[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \ocr_d[31]_i_1 
       (.I0(ocr[1]),
        .I1(s_axi_wstrb_IBUF[3]),
        .I2(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I3(ocr1__4),
        .O(\ocr_d[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \ocr_d[31]_i_2 
       (.I0(\lcr_d[31]_i_4_n_0 ),
        .I1(w_offset_r[0]),
        .I2(\lcr_d[31]_i_3_n_0 ),
        .I3(w_offset_r[2]),
        .I4(w_offset_r[3]),
        .I5(w_offset_r[1]),
        .O(ocr1__4));
  LUT4 #(
    .INIT(16'h0080)) 
    \ocr_d[7]_i_1 
       (.I0(ocr1__4),
        .I1(s_axi_wstrb_IBUF[0]),
        .I2(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I3(ocr[1]),
        .O(\ocr_d[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[7]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [0]),
        .Q(ocr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[15]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [10]),
        .Q(\ocr_d_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[15]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [11]),
        .Q(\ocr_d_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[15]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [12]),
        .Q(\ocr_d_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[15]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [13]),
        .Q(\ocr_d_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[15]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [14]),
        .Q(\ocr_d_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[15]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [15]),
        .Q(\ocr_d_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[23]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [16]),
        .Q(\ocr_d_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[23]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [17]),
        .Q(\ocr_d_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[23]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [18]),
        .Q(\ocr_d_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[23]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [19]),
        .Q(\ocr_d_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ocr_d[1]_i_1_n_0 ),
        .Q(ocr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[23]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [20]),
        .Q(\ocr_d_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[23]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [21]),
        .Q(\ocr_d_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[23]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [22]),
        .Q(\ocr_d_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[23]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [23]),
        .Q(\ocr_d_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[31]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [24]),
        .Q(\ocr_d_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[31]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [25]),
        .Q(\ocr_d_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[31]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [26]),
        .Q(\ocr_d_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[31]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [27]),
        .Q(\ocr_d_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[31]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [28]),
        .Q(\ocr_d_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[31]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [29]),
        .Q(\ocr_d_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[7]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [2]),
        .Q(ocr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[31]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [30]),
        .Q(\ocr_d_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[31]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [31]),
        .Q(\ocr_d_reg_n_0_[31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[7]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [3]),
        .Q(\ocr_d_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[7]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [4]),
        .Q(\ocr_d_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[7]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [5]),
        .Q(\ocr_d_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[7]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [6]),
        .Q(\ocr_d_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[7]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [7]),
        .Q(\ocr_d_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[15]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [8]),
        .Q(\ocr_d_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ocr_d_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\ocr_d[15]_i_1_n_0 ),
        .D(\tdr_d_reg[31]_0 [9]),
        .Q(\ocr_d_reg_n_0_[9] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_offset_r_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_axi_araddr_IBUF[0]),
        .Q(r_offset_r[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_offset_r_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_axi_araddr_IBUF[10]),
        .Q(r_offset_r[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_offset_r_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_axi_araddr_IBUF[11]),
        .Q(r_offset_r[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_offset_r_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_axi_araddr_IBUF[1]),
        .Q(r_offset_r[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_offset_r_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_axi_araddr_IBUF[2]),
        .Q(r_offset_r[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_offset_r_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_axi_araddr_IBUF[3]),
        .Q(r_offset_r[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_offset_r_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_axi_araddr_IBUF[4]),
        .Q(r_offset_r[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_offset_r_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_axi_araddr_IBUF[5]),
        .Q(r_offset_r[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_offset_r_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_axi_araddr_IBUF[6]),
        .Q(r_offset_r[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_offset_r_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_axi_araddr_IBUF[7]),
        .Q(r_offset_r[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_offset_r_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_axi_araddr_IBUF[8]),
        .Q(r_offset_r[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_offset_r_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_axi_araddr_IBUF[9]),
        .Q(r_offset_r[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h32)) 
    rdr_empty_i_1
       (.I0(p_38_in),
        .I1(E),
        .I2(rdr_empty_reg_0),
        .O(data_o_valid_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rdr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rdr_reg[7]_0 [0]),
        .Q(rdr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rdr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rdr_reg[7]_0 [1]),
        .Q(rdr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rdr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rdr_reg[7]_0 [2]),
        .Q(rdr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rdr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rdr_reg[7]_0 [3]),
        .Q(rdr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rdr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rdr_reg[7]_0 [4]),
        .Q(rdr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rdr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rdr_reg[7]_0 [5]),
        .Q(rdr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rdr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rdr_reg[7]_0 [6]),
        .Q(rdr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rdr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rdr_reg[7]_0 [7]),
        .Q(rdr[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000AA00E200AA00)) 
    rts_no_i_1
       (.I0(rts_n_OBUF),
        .I1(rts_no_i_2_n_0),
        .I2(\uart_rx_top_inst/rts_no04_out ),
        .I3(rst_n_IBUF),
        .I4(\hcr_d_reg[0]_0 ),
        .I5(hcr),
        .O(rts_no_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFF888FFFF)) 
    rts_no_i_2
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(rts_n_OBUF),
        .I3(fifo_rx_empty),
        .I4(Q[0]),
        .I5(fifo_rx_triggered),
        .O(rts_no_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFD50055)) 
    rts_no_i_3
       (.I0(rdr_empty_reg_0),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(fifo_rx_triggered),
        .O(\uart_rx_top_inst/rts_no04_out ));
  LUT6 #(
    .INIT(64'hAAAAAAAA02000000)) 
    \s_axi_rdata_OBUF[0]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[0]),
        .I2(r_offset_r[5]),
        .I3(r_offset_r[4]),
        .I4(\s_axi_rdata_OBUF[0]_inst_i_2_n_0 ),
        .I5(\s_axi_rdata_OBUF[0]_inst_i_3_n_0 ),
        .O(s_axi_rdata_OBUF[0]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata_OBUF[0]_inst_i_2 
       (.I0(Q[0]),
        .I1(\iir_reg_n_0_[0] ),
        .I2(r_offset_r[3]),
        .I3(r_offset_r[2]),
        .I4(\lsr_reg_n_0_[0] ),
        .I5(ier[0]),
        .O(\s_axi_rdata_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \s_axi_rdata_OBUF[0]_inst_i_3 
       (.I0(\hcr_d_reg[0]_0 ),
        .I1(\s_axi_rdata_OBUF[6]_inst_i_3_n_0 ),
        .I2(\s_axi_rdata_OBUF[0]_inst_i_4_n_0 ),
        .I3(r_offset_r[0]),
        .I4(r_offset_r[4]),
        .I5(r_offset_r[5]),
        .O(\s_axi_rdata_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata_OBUF[0]_inst_i_4 
       (.I0(rdr[0]),
        .I1(ocr[0]),
        .I2(r_offset_r[3]),
        .I3(r_offset_r[2]),
        .I4(\tdr_d_reg[7]_1 [0]),
        .I5(\lcr_d_reg[7]_0 [0]),
        .O(\s_axi_rdata_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[10]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[10] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[10]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[10]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[10]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[10]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[10] ),
        .I2(\fcr_d_reg_n_0_[10] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[10]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[10]_inst_i_3 
       (.I0(tdr_d[10]),
        .I1(\lcr_d_reg_n_0_[10] ),
        .I2(\ocr_d_reg_n_0_[10] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[10]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[11]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[11] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[11]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[11]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[11]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[11]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[11] ),
        .I2(\fcr_d_reg_n_0_[11] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[11]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[11]_inst_i_3 
       (.I0(tdr_d[11]),
        .I1(\lcr_d_reg_n_0_[11] ),
        .I2(\ocr_d_reg_n_0_[11] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[11]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[12]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[12] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[12]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[12]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[12]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[12]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[12] ),
        .I2(\fcr_d_reg_n_0_[12] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[12]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[12]_inst_i_3 
       (.I0(tdr_d[12]),
        .I1(\lcr_d_reg_n_0_[12] ),
        .I2(\ocr_d_reg_n_0_[12] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[12]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[13]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[13] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[13]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[13]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[13]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[13]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[13] ),
        .I2(\fcr_d_reg_n_0_[13] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[13]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[13]_inst_i_3 
       (.I0(tdr_d[13]),
        .I1(\lcr_d_reg_n_0_[13] ),
        .I2(\ocr_d_reg_n_0_[13] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[13]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[14]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[14] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[14]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[14]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[14]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[14]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[14] ),
        .I2(\fcr_d_reg_n_0_[14] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[14]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[14]_inst_i_3 
       (.I0(tdr_d[14]),
        .I1(\lcr_d_reg_n_0_[14] ),
        .I2(\ocr_d_reg_n_0_[14] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[14]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[15]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[15] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[15]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[15]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[15]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[15]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[15] ),
        .I2(\fcr_d_reg_n_0_[15] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[15]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[15]_inst_i_3 
       (.I0(tdr_d[15]),
        .I1(\lcr_d_reg_n_0_[15] ),
        .I2(\ocr_d_reg_n_0_[15] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[15]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[16]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[16] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[16]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[16]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[16]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[16]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[16] ),
        .I2(\fcr_d_reg_n_0_[16] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[16]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[16]_inst_i_3 
       (.I0(tdr_d[16]),
        .I1(\lcr_d_reg_n_0_[16] ),
        .I2(\ocr_d_reg_n_0_[16] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[16]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[17]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[17] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[17]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[17]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[17]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[17]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[17] ),
        .I2(\fcr_d_reg_n_0_[17] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[17]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[17]_inst_i_3 
       (.I0(tdr_d[17]),
        .I1(\lcr_d_reg_n_0_[17] ),
        .I2(\ocr_d_reg_n_0_[17] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[17]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[18]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[18] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[18]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[18]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[18]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[18]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[18] ),
        .I2(\fcr_d_reg_n_0_[18] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[18]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[18]_inst_i_3 
       (.I0(tdr_d[18]),
        .I1(\lcr_d_reg_n_0_[18] ),
        .I2(\ocr_d_reg_n_0_[18] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[18]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[19]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[19] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[19]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[19]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[19]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[19]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[19] ),
        .I2(\fcr_d_reg_n_0_[19] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[19]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[19]_inst_i_3 
       (.I0(tdr_d[19]),
        .I1(\lcr_d_reg_n_0_[19] ),
        .I2(\ocr_d_reg_n_0_[19] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[19]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA02000000)) 
    \s_axi_rdata_OBUF[1]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[0]),
        .I2(r_offset_r[5]),
        .I3(r_offset_r[4]),
        .I4(\s_axi_rdata_OBUF[1]_inst_i_2_n_0 ),
        .I5(\s_axi_rdata_OBUF[1]_inst_i_3_n_0 ),
        .O(s_axi_rdata_OBUF[1]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata_OBUF[1]_inst_i_2 
       (.I0(Q[1]),
        .I1(\iir_reg_n_0_[1] ),
        .I2(r_offset_r[3]),
        .I3(r_offset_r[2]),
        .I4(\lsr_reg_n_0_[1] ),
        .I5(ier[1]),
        .O(\s_axi_rdata_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \s_axi_rdata_OBUF[1]_inst_i_3 
       (.I0(hcr),
        .I1(\s_axi_rdata_OBUF[6]_inst_i_3_n_0 ),
        .I2(\s_axi_rdata_OBUF[1]_inst_i_4_n_0 ),
        .I3(r_offset_r[0]),
        .I4(r_offset_r[4]),
        .I5(r_offset_r[5]),
        .O(\s_axi_rdata_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata_OBUF[1]_inst_i_4 
       (.I0(rdr[1]),
        .I1(ocr[1]),
        .I2(r_offset_r[3]),
        .I3(r_offset_r[2]),
        .I4(\tdr_d_reg[7]_1 [1]),
        .I5(\lcr_d_reg[7]_0 [1]),
        .O(\s_axi_rdata_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[20]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[20] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[20]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[20]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[20]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[20]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[20] ),
        .I2(\fcr_d_reg_n_0_[20] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[20]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[20]_inst_i_3 
       (.I0(tdr_d[20]),
        .I1(\lcr_d_reg_n_0_[20] ),
        .I2(\ocr_d_reg_n_0_[20] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[20]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[21]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[21] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[21]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[21]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[21]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[21]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[21] ),
        .I2(\fcr_d_reg_n_0_[21] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[21]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[21]_inst_i_3 
       (.I0(tdr_d[21]),
        .I1(\lcr_d_reg_n_0_[21] ),
        .I2(\ocr_d_reg_n_0_[21] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[21]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[22]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[22] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[22]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[22]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[22]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[22]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[22] ),
        .I2(\fcr_d_reg_n_0_[22] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[22]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[22]_inst_i_3 
       (.I0(tdr_d[22]),
        .I1(\lcr_d_reg_n_0_[22] ),
        .I2(\ocr_d_reg_n_0_[22] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[22]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[23]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[23] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[23]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[23]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[23]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[23]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[23] ),
        .I2(\fcr_d_reg_n_0_[23] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[23]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[23]_inst_i_3 
       (.I0(tdr_d[23]),
        .I1(\lcr_d_reg_n_0_[23] ),
        .I2(\ocr_d_reg_n_0_[23] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[23]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[24]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[24] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[24]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[24]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[24]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[24]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[24] ),
        .I2(\fcr_d_reg_n_0_[24] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[24]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[24]_inst_i_3 
       (.I0(tdr_d[24]),
        .I1(\lcr_d_reg_n_0_[24] ),
        .I2(\ocr_d_reg_n_0_[24] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[24]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[25]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[25] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[25]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[25]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[25]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[25]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[25] ),
        .I2(\fcr_d_reg_n_0_[25] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[25]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[25]_inst_i_3 
       (.I0(tdr_d[25]),
        .I1(\lcr_d_reg_n_0_[25] ),
        .I2(\ocr_d_reg_n_0_[25] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[25]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[26]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[26] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[26]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[26]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[26]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[26]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[26] ),
        .I2(\fcr_d_reg_n_0_[26] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[26]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[26]_inst_i_3 
       (.I0(tdr_d[26]),
        .I1(\lcr_d_reg_n_0_[26] ),
        .I2(\ocr_d_reg_n_0_[26] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[26]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[27]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[27] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[27]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[27]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[27]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[27]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[27] ),
        .I2(\fcr_d_reg_n_0_[27] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[27]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[27]_inst_i_3 
       (.I0(tdr_d[27]),
        .I1(\lcr_d_reg_n_0_[27] ),
        .I2(\ocr_d_reg_n_0_[27] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[27]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[28]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[28] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[28]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[28]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[28]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[28]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[28] ),
        .I2(\fcr_d_reg_n_0_[28] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[28]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[28]_inst_i_3 
       (.I0(tdr_d[28]),
        .I1(\lcr_d_reg_n_0_[28] ),
        .I2(\ocr_d_reg_n_0_[28] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[28]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[29]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[29] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[29]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[29]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[29]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[29]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[29] ),
        .I2(\fcr_d_reg_n_0_[29] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[29]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[29]_inst_i_3 
       (.I0(tdr_d[29]),
        .I1(\lcr_d_reg_n_0_[29] ),
        .I2(\ocr_d_reg_n_0_[29] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[29]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA02000000)) 
    \s_axi_rdata_OBUF[2]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[0]),
        .I2(r_offset_r[5]),
        .I3(r_offset_r[4]),
        .I4(\s_axi_rdata_OBUF[2]_inst_i_2_n_0 ),
        .I5(\s_axi_rdata_OBUF[2]_inst_i_3_n_0 ),
        .O(s_axi_rdata_OBUF[2]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata_OBUF[2]_inst_i_2 
       (.I0(Q[2]),
        .I1(\iir_reg_n_0_[2] ),
        .I2(r_offset_r[3]),
        .I3(r_offset_r[2]),
        .I4(\lsr_reg_n_0_[2] ),
        .I5(ier[2]),
        .O(\s_axi_rdata_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \s_axi_rdata_OBUF[2]_inst_i_3 
       (.I0(\hcr_d_reg_n_0_[2] ),
        .I1(\s_axi_rdata_OBUF[6]_inst_i_3_n_0 ),
        .I2(\s_axi_rdata_OBUF[2]_inst_i_4_n_0 ),
        .I3(r_offset_r[0]),
        .I4(r_offset_r[4]),
        .I5(r_offset_r[5]),
        .O(\s_axi_rdata_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata_OBUF[2]_inst_i_4 
       (.I0(rdr[2]),
        .I1(ocr[2]),
        .I2(r_offset_r[3]),
        .I3(r_offset_r[2]),
        .I4(\tdr_d_reg[7]_1 [2]),
        .I5(\lcr_d_reg[7]_0 [2]),
        .O(\s_axi_rdata_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[30]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[30] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[30]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[30]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[30]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[30]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[30] ),
        .I2(\fcr_d_reg_n_0_[30] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[30]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[30]_inst_i_3 
       (.I0(tdr_d[30]),
        .I1(\lcr_d_reg_n_0_[30] ),
        .I2(\ocr_d_reg_n_0_[30] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[30]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[31]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[31] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(s_axi_rdata_OBUF[31]));
  LUT4 #(
    .INIT(16'h1000)) 
    \s_axi_rdata_OBUF[31]_inst_i_2 
       (.I0(r_offset_r[1]),
        .I1(\s_axi_rdata_OBUF[31]_inst_i_5_n_0 ),
        .I2(s_axi_rready_IBUF),
        .I3(\FSM_onehot_rd_state_reg[2]_0 [1]),
        .O(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \s_axi_rdata_OBUF[31]_inst_i_3 
       (.I0(r_offset_r[5]),
        .I1(r_offset_r[0]),
        .I2(r_offset_r[4]),
        .I3(r_offset_r[3]),
        .I4(r_offset_r[2]),
        .I5(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .O(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[31]_inst_i_4 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_6_n_0 ),
        .I1(\ier_d_reg_n_0_[31] ),
        .I2(\fcr_d_reg_n_0_[31] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[31]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_axi_rdata_OBUF[31]_inst_i_5 
       (.I0(r_offset_r[11]),
        .I1(r_offset_r[10]),
        .I2(r_offset_r[9]),
        .I3(r_offset_r[8]),
        .I4(r_offset_r[6]),
        .I5(r_offset_r[7]),
        .O(\s_axi_rdata_OBUF[31]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[31]_inst_i_6 
       (.I0(tdr_d[31]),
        .I1(\lcr_d_reg_n_0_[31] ),
        .I2(\ocr_d_reg_n_0_[31] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[31]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \s_axi_rdata_OBUF[31]_inst_i_7 
       (.I0(r_offset_r[5]),
        .I1(r_offset_r[4]),
        .I2(r_offset_r[0]),
        .O(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \s_axi_rdata_OBUF[3]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(\s_axi_rdata_OBUF[3]_inst_i_2_n_0 ),
        .I2(\hcr_d_reg_n_0_[3] ),
        .I3(\s_axi_rdata_OBUF[6]_inst_i_3_n_0 ),
        .I4(\s_axi_rdata_OBUF[3]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[6]_inst_i_5_n_0 ),
        .O(s_axi_rdata_OBUF[3]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \s_axi_rdata_OBUF[3]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[6]_inst_i_6_n_0 ),
        .I1(Q[3]),
        .I2(r_offset_r[2]),
        .I3(r_offset_r[3]),
        .I4(\ier_d_reg_n_0_[3] ),
        .I5(\lsr_reg_n_0_[3] ),
        .O(\s_axi_rdata_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata_OBUF[3]_inst_i_3 
       (.I0(rdr[3]),
        .I1(\ocr_d_reg_n_0_[3] ),
        .I2(r_offset_r[3]),
        .I3(r_offset_r[2]),
        .I4(\tdr_d_reg[7]_1 [3]),
        .I5(\lcr_d_reg[7]_0 [3]),
        .O(\s_axi_rdata_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \s_axi_rdata_OBUF[4]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(\s_axi_rdata_OBUF[4]_inst_i_2_n_0 ),
        .I2(\hcr_d_reg_n_0_[4] ),
        .I3(\s_axi_rdata_OBUF[6]_inst_i_3_n_0 ),
        .I4(\s_axi_rdata_OBUF[4]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[6]_inst_i_5_n_0 ),
        .O(s_axi_rdata_OBUF[4]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \s_axi_rdata_OBUF[4]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[6]_inst_i_6_n_0 ),
        .I1(Q[4]),
        .I2(r_offset_r[2]),
        .I3(r_offset_r[3]),
        .I4(\ier_d_reg_n_0_[4] ),
        .I5(\lsr_reg_n_0_[4] ),
        .O(\s_axi_rdata_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata_OBUF[4]_inst_i_3 
       (.I0(rdr[4]),
        .I1(\ocr_d_reg_n_0_[4] ),
        .I2(r_offset_r[3]),
        .I3(r_offset_r[2]),
        .I4(\tdr_d_reg[7]_1 [4]),
        .I5(\lcr_d_reg[7]_0 [4]),
        .O(\s_axi_rdata_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \s_axi_rdata_OBUF[5]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(\s_axi_rdata_OBUF[5]_inst_i_2_n_0 ),
        .I2(\hcr_d_reg_n_0_[5] ),
        .I3(\s_axi_rdata_OBUF[6]_inst_i_3_n_0 ),
        .I4(\s_axi_rdata_OBUF[5]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[6]_inst_i_5_n_0 ),
        .O(s_axi_rdata_OBUF[5]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \s_axi_rdata_OBUF[5]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[6]_inst_i_6_n_0 ),
        .I1(\fcr_d_reg_n_0_[5] ),
        .I2(r_offset_r[2]),
        .I3(r_offset_r[3]),
        .I4(\ier_d_reg_n_0_[5] ),
        .I5(\lsr_reg_n_0_[5] ),
        .O(\s_axi_rdata_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata_OBUF[5]_inst_i_3 
       (.I0(rdr[5]),
        .I1(\ocr_d_reg_n_0_[5] ),
        .I2(r_offset_r[3]),
        .I3(r_offset_r[2]),
        .I4(\tdr_d_reg[7]_1 [5]),
        .I5(\lcr_d_reg[7]_0 [5]),
        .O(\s_axi_rdata_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \s_axi_rdata_OBUF[6]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(\s_axi_rdata_OBUF[6]_inst_i_2_n_0 ),
        .I2(\hcr_d_reg_n_0_[6] ),
        .I3(\s_axi_rdata_OBUF[6]_inst_i_3_n_0 ),
        .I4(\s_axi_rdata_OBUF[6]_inst_i_4_n_0 ),
        .I5(\s_axi_rdata_OBUF[6]_inst_i_5_n_0 ),
        .O(s_axi_rdata_OBUF[6]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \s_axi_rdata_OBUF[6]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[6]_inst_i_6_n_0 ),
        .I1(\fcr_d_reg_n_0_[6] ),
        .I2(r_offset_r[2]),
        .I3(r_offset_r[3]),
        .I4(\ier_d_reg_n_0_[6] ),
        .I5(\lsr_reg_n_0_[6] ),
        .O(\s_axi_rdata_OBUF[6]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \s_axi_rdata_OBUF[6]_inst_i_3 
       (.I0(r_offset_r[2]),
        .I1(r_offset_r[3]),
        .I2(r_offset_r[4]),
        .I3(r_offset_r[0]),
        .I4(r_offset_r[5]),
        .O(\s_axi_rdata_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata_OBUF[6]_inst_i_4 
       (.I0(rdr[6]),
        .I1(\ocr_d_reg_n_0_[6] ),
        .I2(r_offset_r[3]),
        .I3(r_offset_r[2]),
        .I4(\tdr_d_reg[7]_1 [6]),
        .I5(\lcr_d_reg[7]_0 [6]),
        .O(\s_axi_rdata_OBUF[6]_inst_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \s_axi_rdata_OBUF[6]_inst_i_5 
       (.I0(r_offset_r[0]),
        .I1(r_offset_r[4]),
        .I2(r_offset_r[5]),
        .O(\s_axi_rdata_OBUF[6]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \s_axi_rdata_OBUF[6]_inst_i_6 
       (.I0(r_offset_r[4]),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .O(\s_axi_rdata_OBUF[6]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[7]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[7] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[7]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[7]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[7]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[7]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[7] ),
        .I2(\fcr_d_reg_n_0_[7] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[7]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata_OBUF[7]_inst_i_3 
       (.I0(rdr[7]),
        .I1(\ocr_d_reg_n_0_[7] ),
        .I2(r_offset_r[3]),
        .I3(r_offset_r[2]),
        .I4(\tdr_d_reg[7]_1 [7]),
        .I5(\lcr_d_reg[7]_0 [7]),
        .O(\s_axi_rdata_OBUF[7]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[8]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[8] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[8]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[8]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[8]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[8]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[8] ),
        .I2(\fcr_d_reg_n_0_[8] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[8]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[8]_inst_i_3 
       (.I0(tdr_d[8]),
        .I1(\lcr_d_reg_n_0_[8] ),
        .I2(\ocr_d_reg_n_0_[8] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[8]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata_OBUF[9]_inst_i_1 
       (.I0(\s_axi_rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[9] ),
        .I4(\s_axi_rdata_OBUF[31]_inst_i_3_n_0 ),
        .I5(\s_axi_rdata_OBUF[9]_inst_i_2_n_0 ),
        .O(s_axi_rdata_OBUF[9]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata_OBUF[9]_inst_i_2 
       (.I0(\s_axi_rdata_OBUF[9]_inst_i_3_n_0 ),
        .I1(\ier_d_reg_n_0_[9] ),
        .I2(\fcr_d_reg_n_0_[9] ),
        .I3(\s_axi_rdata_OBUF[31]_inst_i_7_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[9]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata_OBUF[9]_inst_i_3 
       (.I0(tdr_d[9]),
        .I1(\lcr_d_reg_n_0_[9] ),
        .I2(\ocr_d_reg_n_0_[9] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata_OBUF[9]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sampled_data[0]_i_1 
       (.I0(fifo_tx_o[0]),
        .I1(Q[0]),
        .I2(\tdr_d_reg[7]_1 [0]),
        .O(\tdr_d_reg[7]_0 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sampled_data[1]_i_1 
       (.I0(fifo_tx_o[1]),
        .I1(Q[0]),
        .I2(\tdr_d_reg[7]_1 [1]),
        .O(\tdr_d_reg[7]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sampled_data[2]_i_1 
       (.I0(fifo_tx_o[2]),
        .I1(Q[0]),
        .I2(\tdr_d_reg[7]_1 [2]),
        .O(\tdr_d_reg[7]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sampled_data[3]_i_1 
       (.I0(fifo_tx_o[3]),
        .I1(Q[0]),
        .I2(\tdr_d_reg[7]_1 [3]),
        .O(\tdr_d_reg[7]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sampled_data[4]_i_1 
       (.I0(fifo_tx_o[4]),
        .I1(Q[0]),
        .I2(\tdr_d_reg[7]_1 [4]),
        .O(\tdr_d_reg[7]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hCFC0DFD5)) 
    \sampled_data[5]_i_1 
       (.I0(\lcr_d_reg[7]_0 [1]),
        .I1(fifo_tx_o[5]),
        .I2(Q[0]),
        .I3(\tdr_d_reg[7]_1 [5]),
        .I4(\lcr_d_reg[7]_0 [0]),
        .O(\tdr_d_reg[7]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hE2FF)) 
    \sampled_data[6]_i_1 
       (.I0(\tdr_d_reg[7]_1 [6]),
        .I1(Q[0]),
        .I2(fifo_tx_o[6]),
        .I3(\lcr_d_reg[7]_0 [1]),
        .O(\tdr_d_reg[7]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hE2FFFFFF)) 
    \sampled_data[7]_i_1 
       (.I0(\tdr_d_reg[7]_1 [7]),
        .I1(Q[0]),
        .I2(fifo_tx_o[7]),
        .I3(\lcr_d_reg[7]_0 [1]),
        .I4(\lcr_d_reg[7]_0 [0]),
        .O(\tdr_d_reg[7]_0 [7]));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \tdr_d[15]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb_IBUF[1]),
        .I2(\lcr_d[31]_i_2_n_0 ),
        .I3(w_offset_r[3]),
        .I4(w_offset_r[2]),
        .I5(\lcr_d[31]_i_3_n_0 ),
        .O(tdr[15]));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \tdr_d[23]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb_IBUF[2]),
        .I2(\lcr_d[31]_i_2_n_0 ),
        .I3(w_offset_r[3]),
        .I4(w_offset_r[2]),
        .I5(\lcr_d[31]_i_3_n_0 ),
        .O(tdr[23]));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \tdr_d[31]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb_IBUF[3]),
        .I2(\lcr_d[31]_i_2_n_0 ),
        .I3(w_offset_r[3]),
        .I4(w_offset_r[2]),
        .I5(\lcr_d[31]_i_3_n_0 ),
        .O(tdr[31]));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \tdr_d[7]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb_IBUF[0]),
        .I2(\lcr_d[31]_i_2_n_0 ),
        .I3(w_offset_r[3]),
        .I4(w_offset_r[2]),
        .I5(\lcr_d[31]_i_3_n_0 ),
        .O(tdr[7]));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[7]),
        .D(\tdr_d_reg[31]_0 [0]),
        .Q(\tdr_d_reg[7]_1 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[15]),
        .D(\tdr_d_reg[31]_0 [10]),
        .Q(tdr_d[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[15]),
        .D(\tdr_d_reg[31]_0 [11]),
        .Q(tdr_d[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[15]),
        .D(\tdr_d_reg[31]_0 [12]),
        .Q(tdr_d[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[15]),
        .D(\tdr_d_reg[31]_0 [13]),
        .Q(tdr_d[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[15]),
        .D(\tdr_d_reg[31]_0 [14]),
        .Q(tdr_d[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[15]),
        .D(\tdr_d_reg[31]_0 [15]),
        .Q(tdr_d[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[23]),
        .D(\tdr_d_reg[31]_0 [16]),
        .Q(tdr_d[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[23]),
        .D(\tdr_d_reg[31]_0 [17]),
        .Q(tdr_d[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[23]),
        .D(\tdr_d_reg[31]_0 [18]),
        .Q(tdr_d[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[23]),
        .D(\tdr_d_reg[31]_0 [19]),
        .Q(tdr_d[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[7]),
        .D(\tdr_d_reg[31]_0 [1]),
        .Q(\tdr_d_reg[7]_1 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[23]),
        .D(\tdr_d_reg[31]_0 [20]),
        .Q(tdr_d[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[23]),
        .D(\tdr_d_reg[31]_0 [21]),
        .Q(tdr_d[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[23]),
        .D(\tdr_d_reg[31]_0 [22]),
        .Q(tdr_d[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[23]),
        .D(\tdr_d_reg[31]_0 [23]),
        .Q(tdr_d[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[31]),
        .D(\tdr_d_reg[31]_0 [24]),
        .Q(tdr_d[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[31]),
        .D(\tdr_d_reg[31]_0 [25]),
        .Q(tdr_d[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[31]),
        .D(\tdr_d_reg[31]_0 [26]),
        .Q(tdr_d[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[31]),
        .D(\tdr_d_reg[31]_0 [27]),
        .Q(tdr_d[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[31]),
        .D(\tdr_d_reg[31]_0 [28]),
        .Q(tdr_d[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[31]),
        .D(\tdr_d_reg[31]_0 [29]),
        .Q(tdr_d[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[7]),
        .D(\tdr_d_reg[31]_0 [2]),
        .Q(\tdr_d_reg[7]_1 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[31]),
        .D(\tdr_d_reg[31]_0 [30]),
        .Q(tdr_d[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[31]),
        .D(\tdr_d_reg[31]_0 [31]),
        .Q(tdr_d[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[7]),
        .D(\tdr_d_reg[31]_0 [3]),
        .Q(\tdr_d_reg[7]_1 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[7]),
        .D(\tdr_d_reg[31]_0 [4]),
        .Q(\tdr_d_reg[7]_1 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[7]),
        .D(\tdr_d_reg[31]_0 [5]),
        .Q(\tdr_d_reg[7]_1 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[7]),
        .D(\tdr_d_reg[31]_0 [6]),
        .Q(\tdr_d_reg[7]_1 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[7]),
        .D(\tdr_d_reg[31]_0 [7]),
        .Q(\tdr_d_reg[7]_1 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[15]),
        .D(\tdr_d_reg[31]_0 [8]),
        .Q(tdr_d[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tdr_d_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(tdr[15]),
        .D(\tdr_d_reg[31]_0 [9]),
        .Q(tdr_d[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h0000FABA)) 
    tdr_empty_i_1
       (.I0(tdr_empty_reg_0),
        .I1(Q[0]),
        .I2(ocr[1]),
        .I3(fifo_tx_empty),
        .I4(cpu_write_tdr_d),
        .O(tdr_empty_reg));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \total_data_sampled[0]_i_1 
       (.I0(\lcr_d_reg[7]_0 [3]),
        .I1(\lcr_d_reg[7]_0 [2]),
        .I2(\lcr_d_reg[7]_0 [0]),
        .O(\lcr_d_reg[2]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \total_data_sampled[1]_i_1 
       (.I0(\lcr_d_reg[7]_0 [1]),
        .I1(\lcr_d_reg[7]_0 [0]),
        .I2(\lcr_d_reg[7]_0 [2]),
        .I3(\lcr_d_reg[7]_0 [3]),
        .O(\lcr_d_reg[2]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8001)) 
    \total_data_sampled[2]_i_1 
       (.I0(\lcr_d_reg[7]_0 [3]),
        .I1(\lcr_d_reg[7]_0 [2]),
        .I2(\lcr_d_reg[7]_0 [1]),
        .I3(\lcr_d_reg[7]_0 [0]),
        .O(\lcr_d_reg[2]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \total_data_sampled[3]_i_1 
       (.I0(\lcr_d_reg[7]_0 [2]),
        .I1(\lcr_d_reg[7]_0 [3]),
        .I2(\lcr_d_reg[7]_0 [0]),
        .I3(\lcr_d_reg[7]_0 [1]),
        .O(\lcr_d_reg[2]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \total_data_size_sampled[0]_i_1 
       (.I0(\lcr_d_reg[7]_0 [3]),
        .I1(\lcr_d_reg[7]_0 [2]),
        .I2(\lcr_d_reg[7]_0 [0]),
        .O(\lcr_d_reg[2]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hE817)) 
    \total_data_size_sampled[1]_i_1 
       (.I0(\lcr_d_reg[7]_0 [3]),
        .I1(\lcr_d_reg[7]_0 [2]),
        .I2(\lcr_d_reg[7]_0 [0]),
        .I3(\lcr_d_reg[7]_0 [1]),
        .O(\lcr_d_reg[2]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0017)) 
    \total_data_size_sampled[2]_i_1 
       (.I0(\lcr_d_reg[7]_0 [3]),
        .I1(\lcr_d_reg[7]_0 [2]),
        .I2(\lcr_d_reg[7]_0 [0]),
        .I3(\lcr_d_reg[7]_0 [1]),
        .O(\lcr_d_reg[2]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFE8)) 
    \total_data_size_sampled[3]_i_1 
       (.I0(\lcr_d_reg[7]_0 [2]),
        .I1(\lcr_d_reg[7]_0 [3]),
        .I2(\lcr_d_reg[7]_0 [0]),
        .I3(\lcr_d_reg[7]_0 [1]),
        .O(\lcr_d_reg[2]_0 [3]));
  FDRE #(
    .INIT(1'b0)) 
    \w_offset_r_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\w_offset_r_reg[11]_0 [0]),
        .Q(w_offset_r[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w_offset_r_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\w_offset_r_reg[11]_0 [10]),
        .Q(w_offset_r[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w_offset_r_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\w_offset_r_reg[11]_0 [11]),
        .Q(w_offset_r[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w_offset_r_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\w_offset_r_reg[11]_0 [1]),
        .Q(w_offset_r[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w_offset_r_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\w_offset_r_reg[11]_0 [2]),
        .Q(w_offset_r[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w_offset_r_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\w_offset_r_reg[11]_0 [3]),
        .Q(w_offset_r[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w_offset_r_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\w_offset_r_reg[11]_0 [4]),
        .Q(w_offset_r[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w_offset_r_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\w_offset_r_reg[11]_0 [5]),
        .Q(w_offset_r[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w_offset_r_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\w_offset_r_reg[11]_0 [6]),
        .Q(w_offset_r[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w_offset_r_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\w_offset_r_reg[11]_0 [7]),
        .Q(w_offset_r[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w_offset_r_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\w_offset_r_reg[11]_0 [8]),
        .Q(w_offset_r[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w_offset_r_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\w_offset_r_reg[11]_0 [9]),
        .Q(w_offset_r[9]),
        .R(SR));
  LUT2 #(
    .INIT(4'hB)) 
    \wr_ptr[3]_i_1__0 
       (.I0(Q[1]),
        .I1(rst_n_IBUF),
        .O(\fcr_d_reg[1]_0 ));
endmodule

(* ECO_CHECKSUM = "8a06710f" *) (* SAMPLING_RATE = "16" *) (* SYSTEM_FREQUENCY = "50000000" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module axi4_uart
   (clk,
    rst_n,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    irq,
    cts_n,
    rx,
    tx,
    rts_n);
  input clk;
  input rst_n;
  input [31:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output irq;
  input cts_n;
  input rx;
  output tx;
  output rts_n;

  wire [13:0]BIT_PERIOD_TX;
  wire baud_o;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire cpu_write_tdr;
  wire cpu_write_tdr_d;
  wire cts_n;
  wire cts_n_IBUF;
  wire cts_sync;
  wire [7:7]data;
  wire [6:0]data__0;
  wire [7:0]data_o;
  wire data_o_valid;
  wire [2:0]data_size;
  wire [3:0]data_size_sampled;
  wire [2:0]fcr;
  wire fifo_rx_empty;
  wire fifo_rx_pop;
  wire fifo_rx_pop_ready;
  wire [1:0]fifo_rx_trig_level_i;
  wire fifo_rx_triggered;
  wire fifo_tx_empty;
  wire \fifo_tx_inst/count ;
  wire [7:0]fifo_tx_o;
  wire [0:0]hcr;
  wire \iir_reg_n_0_[0] ;
  wire \iir_reg_n_0_[1] ;
  wire \iir_reg_n_0_[2] ;
  wire inst_axi4_lite_n_0;
  wire inst_axi4_lite_n_1;
  wire inst_axi4_lite_n_112;
  wire inst_axi4_lite_n_113;
  wire inst_axi4_lite_n_114;
  wire inst_axi4_lite_n_115;
  wire inst_axi4_lite_n_2;
  wire inst_axi4_lite_n_24;
  wire inst_axi4_lite_n_25;
  wire inst_axi4_lite_n_26;
  wire inst_axi4_lite_n_3;
  wire inst_axi4_lite_n_32;
  wire inst_axi4_lite_n_34;
  wire inst_axi4_lite_n_67;
  wire inst_axi4_lite_n_68;
  wire inst_axi4_lite_n_69;
  wire inst_axi4_lite_n_70;
  wire inst_axi4_lite_n_75;
  wire inst_axi4_lite_n_79;
  wire inst_axi4_lite_n_83;
  wire inst_axi4_lite_n_84;
  wire inst_axi4_lite_n_85;
  wire inst_axi4_lite_n_86;
  wire inst_axi4_lite_n_88;
  wire irq;
  wire irq_OBUF;
  wire [4:0]lcr;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lsr0_set;
  wire lsr6_reset;
  wire \lsr_reg_n_0_[0] ;
  wire \lsr_reg_n_0_[1] ;
  wire \lsr_reg_n_0_[2] ;
  wire \lsr_reg_n_0_[3] ;
  wire \lsr_reg_n_0_[4] ;
  wire \lsr_reg_n_0_[5] ;
  wire [2:0]ocr;
  wire p_0_in;
  wire p_2_in;
  wire p_38_in;
  wire parity_err;
  wire rdr_empty_reg_n_0;
  wire \rdr_reg_n_0_[0] ;
  wire \rdr_reg_n_0_[1] ;
  wire \rdr_reg_n_0_[2] ;
  wire \rdr_reg_n_0_[3] ;
  wire \rdr_reg_n_0_[4] ;
  wire \rdr_reg_n_0_[5] ;
  wire \rdr_reg_n_0_[6] ;
  wire \rdr_reg_n_0_[7] ;
  wire rst_n;
  wire rst_n_IBUF;
  wire rts_n;
  wire rts_n_OBUF;
  wire rx;
  wire rx_IBUF;
  wire [31:0]s_axi_araddr;
  wire [11:0]s_axi_araddr_IBUF;
  wire s_axi_arready;
  wire s_axi_arready_OBUF;
  wire s_axi_arvalid;
  wire s_axi_arvalid_IBUF;
  wire [31:0]s_axi_awaddr;
  wire [11:0]s_axi_awaddr_IBUF;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_awvalid_IBUF;
  wire s_axi_bready;
  wire s_axi_bready_IBUF;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [31:0]s_axi_rdata_OBUF;
  wire \s_axi_rdata_prev_reg_n_0_[0] ;
  wire \s_axi_rdata_prev_reg_n_0_[2] ;
  wire \s_axi_rdata_prev_reg_n_0_[3] ;
  wire \s_axi_rdata_prev_reg_n_0_[5] ;
  wire s_axi_rready;
  wire s_axi_rready_IBUF;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [31:0]s_axi_wdata_IBUF;
  wire s_axi_wready;
  wire s_axi_wready_OBUF;
  wire [3:0]s_axi_wstrb;
  wire [3:0]s_axi_wstrb_IBUF;
  wire s_axi_wvalid;
  wire s_axi_wvalid_IBUF;
  wire [7:7]shift_regs;
  wire stop_bit_err;
  wire [7:0]tdr_d;
  wire tdr_empty_reg_n_0;
  wire tick_rx;
  wire [2:0]total_data_size;
  wire tx;
  wire tx_OBUF;
  wire uart_rx_top_inst_n_4;
  wire uart_rx_top_inst_n_9;
  wire \uart_tx_inst/transmitter_controller_inst/p_2_in ;
  wire uart_tx_top_inst_n_12;
  wire uart_tx_top_inst_n_17;
  wire [1:1]\NLW_inst_axi4_lite_FSM_onehot_rd_state_reg[2]_0_UNCONNECTED ;
  wire [2:0]\NLW_inst_axi4_lite_FSM_onehot_wr_state_reg[3]_0_UNCONNECTED ;

  baud_generator baud_gen_inst
       (.BIT_PERIOD_TX(BIT_PERIOD_TX),
        .E(tick_rx),
        .Q({inst_axi4_lite_n_24,inst_axi4_lite_n_25,inst_axi4_lite_n_26}),
        .SR(inst_axi4_lite_n_75),
        .baud_o(baud_o),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_n_IBUF(rst_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    cpu_write_tdr_d_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cpu_write_tdr),
        .Q(cpu_write_tdr_d),
        .R(inst_axi4_lite_n_75));
  IBUF cts_n_IBUF_inst
       (.I(cts_n),
        .O(cts_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    fifo_rx_pop_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(fifo_rx_pop_ready),
        .Q(fifo_rx_pop),
        .R(inst_axi4_lite_n_75));
  FDRE #(
    .INIT(1'b0)) 
    \iir_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(inst_axi4_lite_n_2),
        .Q(\iir_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \iir_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(inst_axi4_lite_n_1),
        .Q(\iir_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \iir_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(inst_axi4_lite_n_0),
        .Q(\iir_reg_n_0_[2] ),
        .R(1'b0));
  axi4_lite inst_axi4_lite
       (.BIT_PERIOD_TX(BIT_PERIOD_TX),
        .D({\iir_reg_n_0_[2] ,\iir_reg_n_0_[1] ,\iir_reg_n_0_[0] }),
        .E(data_o_valid),
        .\FSM_onehot_rd_state_reg[2]_0 ({\NLW_inst_axi4_lite_FSM_onehot_rd_state_reg[2]_0_UNCONNECTED [1],s_axi_arready_OBUF}),
        .\FSM_onehot_wr_state_reg[3]_0 ({\NLW_inst_axi4_lite_FSM_onehot_wr_state_reg[3]_0_UNCONNECTED [2],s_axi_wready_OBUF,\NLW_inst_axi4_lite_FSM_onehot_wr_state_reg[3]_0_UNCONNECTED [0]}),
        .Q({fifo_rx_trig_level_i,fcr}),
        .SR(inst_axi4_lite_n_75),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cpu_write_tdr(cpu_write_tdr),
        .cpu_write_tdr_d(cpu_write_tdr_d),
        .cts_sync(cts_sync),
        .\data_o_reg[7] (shift_regs),
        .data_o_valid_reg(inst_axi4_lite_n_114),
        .\fcr_d_reg[0]_0 (inst_axi4_lite_n_112),
        .\fcr_d_reg[1]_0 (inst_axi4_lite_n_67),
        .\fcr_d_reg[2]_0 (\fifo_tx_inst/count ),
        .fifo_rx_empty(fifo_rx_empty),
        .fifo_rx_triggered(fifo_rx_triggered),
        .fifo_tx_empty(fifo_tx_empty),
        .fifo_tx_o(fifo_tx_o),
        .\hcr_d_reg[0]_0 (hcr),
        .\iir_reg[0]_0 (inst_axi4_lite_n_2),
        .\iir_reg[1]_0 (inst_axi4_lite_n_1),
        .\iir_reg[2]_0 (inst_axi4_lite_n_0),
        .\lcr_d_reg[0]_0 ({inst_axi4_lite_n_88,data_size}),
        .\lcr_d_reg[2]_0 ({inst_axi4_lite_n_79,total_data_size}),
        .\lcr_d_reg[2]_1 ({inst_axi4_lite_n_83,inst_axi4_lite_n_84,inst_axi4_lite_n_85,inst_axi4_lite_n_86}),
        .\lcr_d_reg[7]_0 ({inst_axi4_lite_n_24,inst_axi4_lite_n_25,inst_axi4_lite_n_26,lcr}),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lsr0_set(lsr0_set),
        .lsr6_reset(lsr6_reset),
        .\lsr_reg[0]_0 (inst_axi4_lite_n_34),
        .\lsr_reg[5]_0 (inst_axi4_lite_n_70),
        .\lsr_reg[5]_1 (uart_rx_top_inst_n_9),
        .\lsr_reg[6]_0 ({p_2_in,\lsr_reg_n_0_[5] ,\lsr_reg_n_0_[4] ,\lsr_reg_n_0_[3] ,\lsr_reg_n_0_[2] ,\lsr_reg_n_0_[1] ,\lsr_reg_n_0_[0] }),
        .\lsr_reg[6]_1 ({p_0_in,\s_axi_rdata_prev_reg_n_0_[5] ,\s_axi_rdata_prev_reg_n_0_[3] ,\s_axi_rdata_prev_reg_n_0_[2] ,\s_axi_rdata_prev_reg_n_0_[0] }),
        .ocr(ocr),
        .p_2_in(\uart_tx_inst/transmitter_controller_inst/p_2_in ),
        .p_38_in(p_38_in),
        .parity_err(parity_err),
        .parity_err_o_reg(inst_axi4_lite_n_68),
        .rdr_empty_reg(inst_axi4_lite_n_113),
        .rdr_empty_reg_0(rdr_empty_reg_n_0),
        .\rdr_reg[7]_0 ({\rdr_reg_n_0_[7] ,\rdr_reg_n_0_[6] ,\rdr_reg_n_0_[5] ,\rdr_reg_n_0_[4] ,\rdr_reg_n_0_[3] ,\rdr_reg_n_0_[2] ,\rdr_reg_n_0_[1] ,\rdr_reg_n_0_[0] }),
        .rst_n_IBUF(rst_n_IBUF),
        .rts_n_OBUF(rts_n_OBUF),
        .rts_no_reg(inst_axi4_lite_n_32),
        .s_axi_araddr_IBUF(s_axi_araddr_IBUF),
        .s_axi_arvalid_IBUF(s_axi_arvalid_IBUF),
        .s_axi_awvalid_IBUF(s_axi_awvalid_IBUF),
        .s_axi_bready_IBUF(s_axi_bready_IBUF),
        .s_axi_rdata_OBUF(s_axi_rdata_OBUF),
        .s_axi_rready_IBUF(s_axi_rready_IBUF),
        .s_axi_wstrb_IBUF(s_axi_wstrb_IBUF),
        .s_axi_wvalid_IBUF(s_axi_wvalid_IBUF),
        .\shift_regs_reg[7] (data),
        .stop_bit_err(stop_bit_err),
        .stop_bit_err_o_reg(inst_axi4_lite_n_69),
        .\tdr_d_reg[31]_0 (s_axi_wdata_IBUF),
        .\tdr_d_reg[7]_0 ({inst_axi4_lite_n_3,data__0}),
        .\tdr_d_reg[7]_1 (tdr_d),
        .tdr_empty_reg(inst_axi4_lite_n_115),
        .tdr_empty_reg_0(tdr_empty_reg_n_0),
        .\w_offset_r_reg[11]_0 (s_axi_awaddr_IBUF));
  OBUF irq_OBUF_inst
       (.I(irq_OBUF),
        .O(irq));
  LUT1 #(
    .INIT(2'h1)) 
    irq_OBUF_inst_i_1
       (.I0(\iir_reg_n_0_[0] ),
        .O(irq_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \lsr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(inst_axi4_lite_n_34),
        .Q(\lsr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lsr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(inst_axi4_lite_n_113),
        .Q(\lsr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lsr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(inst_axi4_lite_n_68),
        .Q(\lsr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lsr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(inst_axi4_lite_n_69),
        .Q(\lsr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lsr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(inst_axi4_lite_n_112),
        .Q(\lsr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lsr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(inst_axi4_lite_n_70),
        .Q(\lsr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lsr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(uart_rx_top_inst_n_4),
        .Q(p_2_in),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    rdr_empty_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(inst_axi4_lite_n_114),
        .Q(rdr_empty_reg_n_0),
        .S(inst_axi4_lite_n_75));
  FDRE #(
    .INIT(1'b0)) 
    \rdr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(data_o_valid),
        .D(data_o[0]),
        .Q(\rdr_reg_n_0_[0] ),
        .R(inst_axi4_lite_n_75));
  FDRE #(
    .INIT(1'b0)) 
    \rdr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(data_o_valid),
        .D(data_o[1]),
        .Q(\rdr_reg_n_0_[1] ),
        .R(inst_axi4_lite_n_75));
  FDRE #(
    .INIT(1'b0)) 
    \rdr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(data_o_valid),
        .D(data_o[2]),
        .Q(\rdr_reg_n_0_[2] ),
        .R(inst_axi4_lite_n_75));
  FDRE #(
    .INIT(1'b0)) 
    \rdr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(data_o_valid),
        .D(data_o[3]),
        .Q(\rdr_reg_n_0_[3] ),
        .R(inst_axi4_lite_n_75));
  FDRE #(
    .INIT(1'b0)) 
    \rdr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(data_o_valid),
        .D(data_o[4]),
        .Q(\rdr_reg_n_0_[4] ),
        .R(inst_axi4_lite_n_75));
  FDRE #(
    .INIT(1'b0)) 
    \rdr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(data_o_valid),
        .D(data_o[5]),
        .Q(\rdr_reg_n_0_[5] ),
        .R(inst_axi4_lite_n_75));
  FDRE #(
    .INIT(1'b0)) 
    \rdr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(data_o_valid),
        .D(data_o[6]),
        .Q(\rdr_reg_n_0_[6] ),
        .R(inst_axi4_lite_n_75));
  FDRE #(
    .INIT(1'b0)) 
    \rdr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(data_o_valid),
        .D(data_o[7]),
        .Q(\rdr_reg_n_0_[7] ),
        .R(inst_axi4_lite_n_75));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  OBUF rts_n_OBUF_inst
       (.I(rts_n_OBUF),
        .O(rts_n));
  IBUF rx_IBUF_inst
       (.I(rx),
        .O(rx_IBUF));
  IBUF \s_axi_araddr_IBUF[0]_inst 
       (.I(s_axi_araddr[0]),
        .O(s_axi_araddr_IBUF[0]));
  IBUF \s_axi_araddr_IBUF[10]_inst 
       (.I(s_axi_araddr[10]),
        .O(s_axi_araddr_IBUF[10]));
  IBUF \s_axi_araddr_IBUF[11]_inst 
       (.I(s_axi_araddr[11]),
        .O(s_axi_araddr_IBUF[11]));
  IBUF \s_axi_araddr_IBUF[1]_inst 
       (.I(s_axi_araddr[1]),
        .O(s_axi_araddr_IBUF[1]));
  IBUF \s_axi_araddr_IBUF[2]_inst 
       (.I(s_axi_araddr[2]),
        .O(s_axi_araddr_IBUF[2]));
  IBUF \s_axi_araddr_IBUF[3]_inst 
       (.I(s_axi_araddr[3]),
        .O(s_axi_araddr_IBUF[3]));
  IBUF \s_axi_araddr_IBUF[4]_inst 
       (.I(s_axi_araddr[4]),
        .O(s_axi_araddr_IBUF[4]));
  IBUF \s_axi_araddr_IBUF[5]_inst 
       (.I(s_axi_araddr[5]),
        .O(s_axi_araddr_IBUF[5]));
  IBUF \s_axi_araddr_IBUF[6]_inst 
       (.I(s_axi_araddr[6]),
        .O(s_axi_araddr_IBUF[6]));
  IBUF \s_axi_araddr_IBUF[7]_inst 
       (.I(s_axi_araddr[7]),
        .O(s_axi_araddr_IBUF[7]));
  IBUF \s_axi_araddr_IBUF[8]_inst 
       (.I(s_axi_araddr[8]),
        .O(s_axi_araddr_IBUF[8]));
  IBUF \s_axi_araddr_IBUF[9]_inst 
       (.I(s_axi_araddr[9]),
        .O(s_axi_araddr_IBUF[9]));
  OBUF s_axi_arready_OBUF_inst
       (.I(s_axi_arready_OBUF),
        .O(s_axi_arready));
  IBUF s_axi_arvalid_IBUF_inst
       (.I(s_axi_arvalid),
        .O(s_axi_arvalid_IBUF));
  IBUF \s_axi_awaddr_IBUF[0]_inst 
       (.I(s_axi_awaddr[0]),
        .O(s_axi_awaddr_IBUF[0]));
  IBUF \s_axi_awaddr_IBUF[10]_inst 
       (.I(s_axi_awaddr[10]),
        .O(s_axi_awaddr_IBUF[10]));
  IBUF \s_axi_awaddr_IBUF[11]_inst 
       (.I(s_axi_awaddr[11]),
        .O(s_axi_awaddr_IBUF[11]));
  IBUF \s_axi_awaddr_IBUF[1]_inst 
       (.I(s_axi_awaddr[1]),
        .O(s_axi_awaddr_IBUF[1]));
  IBUF \s_axi_awaddr_IBUF[2]_inst 
       (.I(s_axi_awaddr[2]),
        .O(s_axi_awaddr_IBUF[2]));
  IBUF \s_axi_awaddr_IBUF[3]_inst 
       (.I(s_axi_awaddr[3]),
        .O(s_axi_awaddr_IBUF[3]));
  IBUF \s_axi_awaddr_IBUF[4]_inst 
       (.I(s_axi_awaddr[4]),
        .O(s_axi_awaddr_IBUF[4]));
  IBUF \s_axi_awaddr_IBUF[5]_inst 
       (.I(s_axi_awaddr[5]),
        .O(s_axi_awaddr_IBUF[5]));
  IBUF \s_axi_awaddr_IBUF[6]_inst 
       (.I(s_axi_awaddr[6]),
        .O(s_axi_awaddr_IBUF[6]));
  IBUF \s_axi_awaddr_IBUF[7]_inst 
       (.I(s_axi_awaddr[7]),
        .O(s_axi_awaddr_IBUF[7]));
  IBUF \s_axi_awaddr_IBUF[8]_inst 
       (.I(s_axi_awaddr[8]),
        .O(s_axi_awaddr_IBUF[8]));
  IBUF \s_axi_awaddr_IBUF[9]_inst 
       (.I(s_axi_awaddr[9]),
        .O(s_axi_awaddr_IBUF[9]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF s_axi_awready_OBUF_inst
       (.I(lopt),
        .O(s_axi_awready));
  IBUF s_axi_awvalid_IBUF_inst
       (.I(s_axi_awvalid),
        .O(s_axi_awvalid_IBUF));
  IBUF s_axi_bready_IBUF_inst
       (.I(s_axi_bready),
        .O(s_axi_bready_IBUF));
  OBUF \s_axi_bresp_OBUF[0]_inst 
       (.I(1'b0),
        .O(s_axi_bresp[0]));
  OBUF \s_axi_bresp_OBUF[1]_inst 
       (.I(1'b0),
        .O(s_axi_bresp[1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF s_axi_bvalid_OBUF_inst
       (.I(lopt_1),
        .O(s_axi_bvalid));
  OBUF \s_axi_rdata_OBUF[0]_inst 
       (.I(s_axi_rdata_OBUF[0]),
        .O(s_axi_rdata[0]));
  OBUF \s_axi_rdata_OBUF[10]_inst 
       (.I(s_axi_rdata_OBUF[10]),
        .O(s_axi_rdata[10]));
  OBUF \s_axi_rdata_OBUF[11]_inst 
       (.I(s_axi_rdata_OBUF[11]),
        .O(s_axi_rdata[11]));
  OBUF \s_axi_rdata_OBUF[12]_inst 
       (.I(s_axi_rdata_OBUF[12]),
        .O(s_axi_rdata[12]));
  OBUF \s_axi_rdata_OBUF[13]_inst 
       (.I(s_axi_rdata_OBUF[13]),
        .O(s_axi_rdata[13]));
  OBUF \s_axi_rdata_OBUF[14]_inst 
       (.I(s_axi_rdata_OBUF[14]),
        .O(s_axi_rdata[14]));
  OBUF \s_axi_rdata_OBUF[15]_inst 
       (.I(s_axi_rdata_OBUF[15]),
        .O(s_axi_rdata[15]));
  OBUF \s_axi_rdata_OBUF[16]_inst 
       (.I(s_axi_rdata_OBUF[16]),
        .O(s_axi_rdata[16]));
  OBUF \s_axi_rdata_OBUF[17]_inst 
       (.I(s_axi_rdata_OBUF[17]),
        .O(s_axi_rdata[17]));
  OBUF \s_axi_rdata_OBUF[18]_inst 
       (.I(s_axi_rdata_OBUF[18]),
        .O(s_axi_rdata[18]));
  OBUF \s_axi_rdata_OBUF[19]_inst 
       (.I(s_axi_rdata_OBUF[19]),
        .O(s_axi_rdata[19]));
  OBUF \s_axi_rdata_OBUF[1]_inst 
       (.I(s_axi_rdata_OBUF[1]),
        .O(s_axi_rdata[1]));
  OBUF \s_axi_rdata_OBUF[20]_inst 
       (.I(s_axi_rdata_OBUF[20]),
        .O(s_axi_rdata[20]));
  OBUF \s_axi_rdata_OBUF[21]_inst 
       (.I(s_axi_rdata_OBUF[21]),
        .O(s_axi_rdata[21]));
  OBUF \s_axi_rdata_OBUF[22]_inst 
       (.I(s_axi_rdata_OBUF[22]),
        .O(s_axi_rdata[22]));
  OBUF \s_axi_rdata_OBUF[23]_inst 
       (.I(s_axi_rdata_OBUF[23]),
        .O(s_axi_rdata[23]));
  OBUF \s_axi_rdata_OBUF[24]_inst 
       (.I(s_axi_rdata_OBUF[24]),
        .O(s_axi_rdata[24]));
  OBUF \s_axi_rdata_OBUF[25]_inst 
       (.I(s_axi_rdata_OBUF[25]),
        .O(s_axi_rdata[25]));
  OBUF \s_axi_rdata_OBUF[26]_inst 
       (.I(s_axi_rdata_OBUF[26]),
        .O(s_axi_rdata[26]));
  OBUF \s_axi_rdata_OBUF[27]_inst 
       (.I(s_axi_rdata_OBUF[27]),
        .O(s_axi_rdata[27]));
  OBUF \s_axi_rdata_OBUF[28]_inst 
       (.I(s_axi_rdata_OBUF[28]),
        .O(s_axi_rdata[28]));
  OBUF \s_axi_rdata_OBUF[29]_inst 
       (.I(s_axi_rdata_OBUF[29]),
        .O(s_axi_rdata[29]));
  OBUF \s_axi_rdata_OBUF[2]_inst 
       (.I(s_axi_rdata_OBUF[2]),
        .O(s_axi_rdata[2]));
  OBUF \s_axi_rdata_OBUF[30]_inst 
       (.I(s_axi_rdata_OBUF[30]),
        .O(s_axi_rdata[30]));
  OBUF \s_axi_rdata_OBUF[31]_inst 
       (.I(s_axi_rdata_OBUF[31]),
        .O(s_axi_rdata[31]));
  OBUF \s_axi_rdata_OBUF[3]_inst 
       (.I(s_axi_rdata_OBUF[3]),
        .O(s_axi_rdata[3]));
  OBUF \s_axi_rdata_OBUF[4]_inst 
       (.I(s_axi_rdata_OBUF[4]),
        .O(s_axi_rdata[4]));
  OBUF \s_axi_rdata_OBUF[5]_inst 
       (.I(s_axi_rdata_OBUF[5]),
        .O(s_axi_rdata[5]));
  OBUF \s_axi_rdata_OBUF[6]_inst 
       (.I(s_axi_rdata_OBUF[6]),
        .O(s_axi_rdata[6]));
  OBUF \s_axi_rdata_OBUF[7]_inst 
       (.I(s_axi_rdata_OBUF[7]),
        .O(s_axi_rdata[7]));
  OBUF \s_axi_rdata_OBUF[8]_inst 
       (.I(s_axi_rdata_OBUF[8]),
        .O(s_axi_rdata[8]));
  OBUF \s_axi_rdata_OBUF[9]_inst 
       (.I(s_axi_rdata_OBUF[9]),
        .O(s_axi_rdata[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_prev_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_axi_rdata_OBUF[0]),
        .Q(\s_axi_rdata_prev_reg_n_0_[0] ),
        .R(inst_axi4_lite_n_75));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_prev_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_axi_rdata_OBUF[2]),
        .Q(\s_axi_rdata_prev_reg_n_0_[2] ),
        .R(inst_axi4_lite_n_75));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_prev_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_axi_rdata_OBUF[3]),
        .Q(\s_axi_rdata_prev_reg_n_0_[3] ),
        .R(inst_axi4_lite_n_75));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_prev_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_axi_rdata_OBUF[5]),
        .Q(\s_axi_rdata_prev_reg_n_0_[5] ),
        .R(inst_axi4_lite_n_75));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_prev_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_axi_rdata_OBUF[6]),
        .Q(p_0_in),
        .R(inst_axi4_lite_n_75));
  IBUF s_axi_rready_IBUF_inst
       (.I(s_axi_rready),
        .O(s_axi_rready_IBUF));
  OBUF \s_axi_rresp_OBUF[0]_inst 
       (.I(1'b0),
        .O(s_axi_rresp[0]));
  OBUF \s_axi_rresp_OBUF[1]_inst 
       (.I(1'b0),
        .O(s_axi_rresp[1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF s_axi_rvalid_OBUF_inst
       (.I(lopt_2),
        .O(s_axi_rvalid));
  IBUF \s_axi_wdata_IBUF[0]_inst 
       (.I(s_axi_wdata[0]),
        .O(s_axi_wdata_IBUF[0]));
  IBUF \s_axi_wdata_IBUF[10]_inst 
       (.I(s_axi_wdata[10]),
        .O(s_axi_wdata_IBUF[10]));
  IBUF \s_axi_wdata_IBUF[11]_inst 
       (.I(s_axi_wdata[11]),
        .O(s_axi_wdata_IBUF[11]));
  IBUF \s_axi_wdata_IBUF[12]_inst 
       (.I(s_axi_wdata[12]),
        .O(s_axi_wdata_IBUF[12]));
  IBUF \s_axi_wdata_IBUF[13]_inst 
       (.I(s_axi_wdata[13]),
        .O(s_axi_wdata_IBUF[13]));
  IBUF \s_axi_wdata_IBUF[14]_inst 
       (.I(s_axi_wdata[14]),
        .O(s_axi_wdata_IBUF[14]));
  IBUF \s_axi_wdata_IBUF[15]_inst 
       (.I(s_axi_wdata[15]),
        .O(s_axi_wdata_IBUF[15]));
  IBUF \s_axi_wdata_IBUF[16]_inst 
       (.I(s_axi_wdata[16]),
        .O(s_axi_wdata_IBUF[16]));
  IBUF \s_axi_wdata_IBUF[17]_inst 
       (.I(s_axi_wdata[17]),
        .O(s_axi_wdata_IBUF[17]));
  IBUF \s_axi_wdata_IBUF[18]_inst 
       (.I(s_axi_wdata[18]),
        .O(s_axi_wdata_IBUF[18]));
  IBUF \s_axi_wdata_IBUF[19]_inst 
       (.I(s_axi_wdata[19]),
        .O(s_axi_wdata_IBUF[19]));
  IBUF \s_axi_wdata_IBUF[1]_inst 
       (.I(s_axi_wdata[1]),
        .O(s_axi_wdata_IBUF[1]));
  IBUF \s_axi_wdata_IBUF[20]_inst 
       (.I(s_axi_wdata[20]),
        .O(s_axi_wdata_IBUF[20]));
  IBUF \s_axi_wdata_IBUF[21]_inst 
       (.I(s_axi_wdata[21]),
        .O(s_axi_wdata_IBUF[21]));
  IBUF \s_axi_wdata_IBUF[22]_inst 
       (.I(s_axi_wdata[22]),
        .O(s_axi_wdata_IBUF[22]));
  IBUF \s_axi_wdata_IBUF[23]_inst 
       (.I(s_axi_wdata[23]),
        .O(s_axi_wdata_IBUF[23]));
  IBUF \s_axi_wdata_IBUF[24]_inst 
       (.I(s_axi_wdata[24]),
        .O(s_axi_wdata_IBUF[24]));
  IBUF \s_axi_wdata_IBUF[25]_inst 
       (.I(s_axi_wdata[25]),
        .O(s_axi_wdata_IBUF[25]));
  IBUF \s_axi_wdata_IBUF[26]_inst 
       (.I(s_axi_wdata[26]),
        .O(s_axi_wdata_IBUF[26]));
  IBUF \s_axi_wdata_IBUF[27]_inst 
       (.I(s_axi_wdata[27]),
        .O(s_axi_wdata_IBUF[27]));
  IBUF \s_axi_wdata_IBUF[28]_inst 
       (.I(s_axi_wdata[28]),
        .O(s_axi_wdata_IBUF[28]));
  IBUF \s_axi_wdata_IBUF[29]_inst 
       (.I(s_axi_wdata[29]),
        .O(s_axi_wdata_IBUF[29]));
  IBUF \s_axi_wdata_IBUF[2]_inst 
       (.I(s_axi_wdata[2]),
        .O(s_axi_wdata_IBUF[2]));
  IBUF \s_axi_wdata_IBUF[30]_inst 
       (.I(s_axi_wdata[30]),
        .O(s_axi_wdata_IBUF[30]));
  IBUF \s_axi_wdata_IBUF[31]_inst 
       (.I(s_axi_wdata[31]),
        .O(s_axi_wdata_IBUF[31]));
  IBUF \s_axi_wdata_IBUF[3]_inst 
       (.I(s_axi_wdata[3]),
        .O(s_axi_wdata_IBUF[3]));
  IBUF \s_axi_wdata_IBUF[4]_inst 
       (.I(s_axi_wdata[4]),
        .O(s_axi_wdata_IBUF[4]));
  IBUF \s_axi_wdata_IBUF[5]_inst 
       (.I(s_axi_wdata[5]),
        .O(s_axi_wdata_IBUF[5]));
  IBUF \s_axi_wdata_IBUF[6]_inst 
       (.I(s_axi_wdata[6]),
        .O(s_axi_wdata_IBUF[6]));
  IBUF \s_axi_wdata_IBUF[7]_inst 
       (.I(s_axi_wdata[7]),
        .O(s_axi_wdata_IBUF[7]));
  IBUF \s_axi_wdata_IBUF[8]_inst 
       (.I(s_axi_wdata[8]),
        .O(s_axi_wdata_IBUF[8]));
  IBUF \s_axi_wdata_IBUF[9]_inst 
       (.I(s_axi_wdata[9]),
        .O(s_axi_wdata_IBUF[9]));
  OBUF s_axi_wready_OBUF_inst
       (.I(s_axi_wready_OBUF),
        .O(s_axi_wready));
  IBUF \s_axi_wstrb_IBUF[0]_inst 
       (.I(s_axi_wstrb[0]),
        .O(s_axi_wstrb_IBUF[0]));
  IBUF \s_axi_wstrb_IBUF[1]_inst 
       (.I(s_axi_wstrb[1]),
        .O(s_axi_wstrb_IBUF[1]));
  IBUF \s_axi_wstrb_IBUF[2]_inst 
       (.I(s_axi_wstrb[2]),
        .O(s_axi_wstrb_IBUF[2]));
  IBUF \s_axi_wstrb_IBUF[3]_inst 
       (.I(s_axi_wstrb[3]),
        .O(s_axi_wstrb_IBUF[3]));
  IBUF s_axi_wvalid_IBUF_inst
       (.I(s_axi_wvalid),
        .O(s_axi_wvalid_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    tdr_empty_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(inst_axi4_lite_n_115),
        .Q(tdr_empty_reg_n_0),
        .S(inst_axi4_lite_n_75));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
  uart_rx_top uart_rx_top_inst
       (.D(data),
        .E(data_o_valid),
        .Q(data_size_sampled),
        .SR(inst_axi4_lite_n_75),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\clk_div_reg[0] (tick_rx),
        .data_o(data_o),
        .\fcr_d_reg[0] (uart_rx_top_inst_n_9),
        .fifo_rx_empty(fifo_rx_empty),
        .fifo_rx_pop(fifo_rx_pop),
        .fifo_rx_pop_ready(fifo_rx_pop_ready),
        .fifo_rx_triggered(fifo_rx_triggered),
        .lsr6_reset(lsr6_reset),
        .\lsr_reg[6] (uart_rx_top_inst_n_4),
        .\lsr_reg[6]_0 (p_2_in),
        .\lsr_reg[6]_1 (rdr_empty_reg_n_0),
        .ocr(ocr[2]),
        .p_38_in(p_38_in),
        .parity_err(parity_err),
        .parity_err_o_reg(lcr),
        .\rd_ptr_reg[0] (inst_axi4_lite_n_67),
        .rst_n_IBUF(rst_n_IBUF),
        .rts_n_OBUF(rts_n_OBUF),
        .rts_no_i_2({fifo_rx_trig_level_i,fcr[1:0]}),
        .rts_no_reg_0(inst_axi4_lite_n_32),
        .rx_IBUF(rx_IBUF),
        .\shift_regs_reg[7] (shift_regs),
        .stop_bit_1_check_sampled_reg(uart_tx_top_inst_n_17),
        .stop_bit_2_check_sampled_reg(uart_tx_top_inst_n_12),
        .stop_bit_err(stop_bit_err),
        .\total_data_size_sampled_reg[3] ({inst_axi4_lite_n_79,total_data_size}));
  uart_tx_top uart_tx_top_inst
       (.D({inst_axi4_lite_n_3,data__0}),
        .\FSM_sequential_current_state_reg[1] (hcr),
        .Q({fcr[2],fcr[0]}),
        .SR(inst_axi4_lite_n_75),
        .baud_o(baud_o),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cpu_write_tdr_d(cpu_write_tdr_d),
        .cts_n_IBUF(cts_n_IBUF),
        .cts_sync(cts_sync),
        .\data_size_sampled_reg[1] (uart_tx_top_inst_n_12),
        .\data_size_sampled_reg[1]_0 (uart_tx_top_inst_n_17),
        .\data_size_sampled_reg[3] (data_size_sampled),
        .\data_size_sampled_reg[3]_0 ({inst_axi4_lite_n_88,data_size}),
        .fifo_tx_empty(fifo_tx_empty),
        .fifo_tx_o(fifo_tx_o),
        .load_d0_sampled_reg({lcr[4:3],lcr[1:0]}),
        .lsr0_set(lsr0_set),
        .ocr(ocr[1:0]),
        .p_2_in(\uart_tx_inst/transmitter_controller_inst/p_2_in ),
        .rst_n_IBUF(rst_n_IBUF),
        .\sampled_data_reg[7] (tdr_d),
        .\total_data_sampled_reg[3] ({inst_axi4_lite_n_83,inst_axi4_lite_n_84,inst_axi4_lite_n_85,inst_axi4_lite_n_86}),
        .tx_OBUF(tx_OBUF),
        .\wr_ptr_reg[0] (\fifo_tx_inst/count ));
endmodule

module baud_generator
   (baud_o,
    E,
    SR,
    clk_IBUF_BUFG,
    BIT_PERIOD_TX,
    rst_n_IBUF,
    Q);
  output baud_o;
  output [0:0]E;
  input [0:0]SR;
  input clk_IBUF_BUFG;
  input [13:0]BIT_PERIOD_TX;
  input rst_n_IBUF;
  input [2:0]Q;

  wire BIT_PERIOD_RX;
  wire [13:0]BIT_PERIOD_TX;
  wire \BIT_PERIOD_TX_reg_n_0_[0] ;
  wire \BIT_PERIOD_TX_reg_n_0_[10] ;
  wire \BIT_PERIOD_TX_reg_n_0_[11] ;
  wire \BIT_PERIOD_TX_reg_n_0_[12] ;
  wire \BIT_PERIOD_TX_reg_n_0_[13] ;
  wire \BIT_PERIOD_TX_reg_n_0_[1] ;
  wire \BIT_PERIOD_TX_reg_n_0_[2] ;
  wire \BIT_PERIOD_TX_reg_n_0_[3] ;
  wire \BIT_PERIOD_TX_reg_n_0_[4] ;
  wire \BIT_PERIOD_TX_reg_n_0_[5] ;
  wire \BIT_PERIOD_TX_reg_n_0_[6] ;
  wire \BIT_PERIOD_TX_reg_n_0_[7] ;
  wire \BIT_PERIOD_TX_reg_n_0_[8] ;
  wire \BIT_PERIOD_TX_reg_n_0_[9] ;
  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]SR;
  wire baud_changed;
  wire baud_changed_i_1_n_0;
  wire baud_o;
  wire [2:0]baud_sl_prev;
  wire clk_IBUF_BUFG;
  wire counter_rx0;
  wire counter_rx0_carry__0_i_1_n_0;
  wire counter_rx0_carry__0_i_2_n_0;
  wire counter_rx0_carry__0_i_3_n_0;
  wire counter_rx0_carry__0_i_4_n_0;
  wire counter_rx0_carry__0_i_5_n_0;
  wire counter_rx0_carry__0_n_0;
  wire counter_rx0_carry__1_i_1_n_0;
  wire counter_rx0_carry__1_i_2_n_0;
  wire counter_rx0_carry__1_i_3_n_0;
  wire counter_rx0_carry_i_1_n_0;
  wire counter_rx0_carry_i_2_n_0;
  wire counter_rx0_carry_i_3_n_0;
  wire counter_rx0_carry_i_4_n_0;
  wire counter_rx0_carry_i_5_n_0;
  wire counter_rx0_carry_i_6_n_0;
  wire counter_rx0_carry_i_7_n_0;
  wire counter_rx0_carry_i_8_n_0;
  wire counter_rx0_carry_i_9_n_0;
  wire counter_rx0_carry_n_0;
  wire \counter_rx[0]_i_1_n_0 ;
  wire \counter_rx[0]_i_3_n_0 ;
  wire [31:0]counter_rx_reg;
  wire \counter_rx_reg[0]_i_2_n_0 ;
  wire \counter_rx_reg[0]_i_2_n_4 ;
  wire \counter_rx_reg[0]_i_2_n_5 ;
  wire \counter_rx_reg[0]_i_2_n_6 ;
  wire \counter_rx_reg[0]_i_2_n_7 ;
  wire \counter_rx_reg[12]_i_1_n_0 ;
  wire \counter_rx_reg[12]_i_1_n_4 ;
  wire \counter_rx_reg[12]_i_1_n_5 ;
  wire \counter_rx_reg[12]_i_1_n_6 ;
  wire \counter_rx_reg[12]_i_1_n_7 ;
  wire \counter_rx_reg[16]_i_1_n_0 ;
  wire \counter_rx_reg[16]_i_1_n_4 ;
  wire \counter_rx_reg[16]_i_1_n_5 ;
  wire \counter_rx_reg[16]_i_1_n_6 ;
  wire \counter_rx_reg[16]_i_1_n_7 ;
  wire \counter_rx_reg[20]_i_1_n_0 ;
  wire \counter_rx_reg[20]_i_1_n_4 ;
  wire \counter_rx_reg[20]_i_1_n_5 ;
  wire \counter_rx_reg[20]_i_1_n_6 ;
  wire \counter_rx_reg[20]_i_1_n_7 ;
  wire \counter_rx_reg[24]_i_1_n_0 ;
  wire \counter_rx_reg[24]_i_1_n_4 ;
  wire \counter_rx_reg[24]_i_1_n_5 ;
  wire \counter_rx_reg[24]_i_1_n_6 ;
  wire \counter_rx_reg[24]_i_1_n_7 ;
  wire \counter_rx_reg[28]_i_1_n_4 ;
  wire \counter_rx_reg[28]_i_1_n_5 ;
  wire \counter_rx_reg[28]_i_1_n_6 ;
  wire \counter_rx_reg[28]_i_1_n_7 ;
  wire \counter_rx_reg[4]_i_1_n_0 ;
  wire \counter_rx_reg[4]_i_1_n_4 ;
  wire \counter_rx_reg[4]_i_1_n_5 ;
  wire \counter_rx_reg[4]_i_1_n_6 ;
  wire \counter_rx_reg[4]_i_1_n_7 ;
  wire \counter_rx_reg[8]_i_1_n_0 ;
  wire \counter_rx_reg[8]_i_1_n_4 ;
  wire \counter_rx_reg[8]_i_1_n_5 ;
  wire \counter_rx_reg[8]_i_1_n_6 ;
  wire \counter_rx_reg[8]_i_1_n_7 ;
  wire counter_tx0;
  wire counter_tx0_carry__0_i_1_n_0;
  wire counter_tx0_carry__0_i_2_n_0;
  wire counter_tx0_carry__0_i_3_n_0;
  wire counter_tx0_carry__0_i_4_n_0;
  wire counter_tx0_carry__0_n_0;
  wire counter_tx0_carry__1_i_1_n_0;
  wire counter_tx0_carry__1_i_2_n_0;
  wire counter_tx0_carry__1_i_3_n_0;
  wire counter_tx0_carry_i_1_n_0;
  wire counter_tx0_carry_i_2_n_0;
  wire counter_tx0_carry_i_3_n_0;
  wire counter_tx0_carry_i_4_n_0;
  wire counter_tx0_carry_n_0;
  wire [13:1]counter_tx1;
  wire counter_tx1_carry__0_i_1_n_0;
  wire counter_tx1_carry__0_i_2_n_0;
  wire counter_tx1_carry__0_i_3_n_0;
  wire counter_tx1_carry__0_i_4_n_0;
  wire counter_tx1_carry__0_n_0;
  wire counter_tx1_carry__1_i_1_n_0;
  wire counter_tx1_carry__1_i_2_n_0;
  wire counter_tx1_carry__1_i_3_n_0;
  wire counter_tx1_carry__1_i_4_n_0;
  wire counter_tx1_carry__1_n_0;
  wire counter_tx1_carry__2_i_1_n_0;
  wire counter_tx1_carry__2_n_2;
  wire counter_tx1_carry_i_1_n_0;
  wire counter_tx1_carry_i_2_n_0;
  wire counter_tx1_carry_i_3_n_0;
  wire counter_tx1_carry_i_4_n_0;
  wire counter_tx1_carry_n_0;
  wire \counter_tx[0]_i_1_n_0 ;
  wire \counter_tx[0]_i_3_n_0 ;
  wire [31:0]counter_tx_reg;
  wire \counter_tx_reg[0]_i_2_n_0 ;
  wire \counter_tx_reg[0]_i_2_n_4 ;
  wire \counter_tx_reg[0]_i_2_n_5 ;
  wire \counter_tx_reg[0]_i_2_n_6 ;
  wire \counter_tx_reg[0]_i_2_n_7 ;
  wire \counter_tx_reg[12]_i_1_n_0 ;
  wire \counter_tx_reg[12]_i_1_n_4 ;
  wire \counter_tx_reg[12]_i_1_n_5 ;
  wire \counter_tx_reg[12]_i_1_n_6 ;
  wire \counter_tx_reg[12]_i_1_n_7 ;
  wire \counter_tx_reg[16]_i_1_n_0 ;
  wire \counter_tx_reg[16]_i_1_n_4 ;
  wire \counter_tx_reg[16]_i_1_n_5 ;
  wire \counter_tx_reg[16]_i_1_n_6 ;
  wire \counter_tx_reg[16]_i_1_n_7 ;
  wire \counter_tx_reg[20]_i_1_n_0 ;
  wire \counter_tx_reg[20]_i_1_n_4 ;
  wire \counter_tx_reg[20]_i_1_n_5 ;
  wire \counter_tx_reg[20]_i_1_n_6 ;
  wire \counter_tx_reg[20]_i_1_n_7 ;
  wire \counter_tx_reg[24]_i_1_n_0 ;
  wire \counter_tx_reg[24]_i_1_n_4 ;
  wire \counter_tx_reg[24]_i_1_n_5 ;
  wire \counter_tx_reg[24]_i_1_n_6 ;
  wire \counter_tx_reg[24]_i_1_n_7 ;
  wire \counter_tx_reg[28]_i_1_n_4 ;
  wire \counter_tx_reg[28]_i_1_n_5 ;
  wire \counter_tx_reg[28]_i_1_n_6 ;
  wire \counter_tx_reg[28]_i_1_n_7 ;
  wire \counter_tx_reg[4]_i_1_n_0 ;
  wire \counter_tx_reg[4]_i_1_n_4 ;
  wire \counter_tx_reg[4]_i_1_n_5 ;
  wire \counter_tx_reg[4]_i_1_n_6 ;
  wire \counter_tx_reg[4]_i_1_n_7 ;
  wire \counter_tx_reg[8]_i_1_n_0 ;
  wire \counter_tx_reg[8]_i_1_n_4 ;
  wire \counter_tx_reg[8]_i_1_n_5 ;
  wire \counter_tx_reg[8]_i_1_n_6 ;
  wire \counter_tx_reg[8]_i_1_n_7 ;
  wire rst_n_IBUF;
  wire tick_rx_i_1_n_0;
  wire tick_tx_i_1_n_0;
  wire [2:0]NLW_counter_rx0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_counter_rx0_carry_O_UNCONNECTED;
  wire [2:0]NLW_counter_rx0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_counter_rx0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_counter_rx0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_counter_rx0_carry__1_O_UNCONNECTED;
  wire [2:0]\NLW_counter_rx_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_rx_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_rx_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_rx_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_rx_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_rx_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_rx_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_rx_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]NLW_counter_tx0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_counter_tx0_carry_O_UNCONNECTED;
  wire [2:0]NLW_counter_tx0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_counter_tx0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_counter_tx0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_counter_tx0_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_counter_tx1_carry_CO_UNCONNECTED;
  wire [2:0]NLW_counter_tx1_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_counter_tx1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_counter_tx1_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_counter_tx1_carry__2_O_UNCONNECTED;
  wire [2:0]\NLW_counter_tx_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_tx_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_tx_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_tx_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_tx_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_tx_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_tx_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_tx_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hB)) 
    \BIT_PERIOD_TX[3]_i_1 
       (.I0(baud_changed),
        .I1(rst_n_IBUF),
        .O(BIT_PERIOD_RX));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_PERIOD_TX_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[0]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_PERIOD_TX_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[10]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_PERIOD_TX_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[11]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_PERIOD_TX_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[12]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_PERIOD_TX_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[13]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_PERIOD_TX_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[1]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_PERIOD_TX_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[2]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_PERIOD_TX_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[3]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_PERIOD_TX_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[4]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_PERIOD_TX_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[5]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_PERIOD_TX_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[6]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_PERIOD_TX_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[7]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_PERIOD_TX_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[8]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_PERIOD_TX_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[9]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    baud_changed_i_1
       (.I0(baud_sl_prev[0]),
        .I1(Q[0]),
        .I2(baud_sl_prev[1]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(baud_sl_prev[2]),
        .O(baud_changed_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    baud_changed_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(baud_changed_i_1_n_0),
        .Q(baud_changed),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \baud_sl_prev_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[0]),
        .Q(baud_sl_prev[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \baud_sl_prev_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[1]),
        .Q(baud_sl_prev[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \baud_sl_prev_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[2]),
        .Q(baud_sl_prev[2]),
        .R(SR));
  CARRY4 counter_rx0_carry
       (.CI(1'b0),
        .CO({counter_rx0_carry_n_0,NLW_counter_rx0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter_rx0_carry_O_UNCONNECTED[3:0]),
        .S({counter_rx0_carry_i_1_n_0,counter_rx0_carry_i_2_n_0,counter_rx0_carry_i_3_n_0,counter_rx0_carry_i_4_n_0}));
  CARRY4 counter_rx0_carry__0
       (.CI(counter_rx0_carry_n_0),
        .CO({counter_rx0_carry__0_n_0,NLW_counter_rx0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter_rx0_carry__0_O_UNCONNECTED[3:0]),
        .S({counter_rx0_carry__0_i_1_n_0,counter_rx0_carry__0_i_2_n_0,counter_rx0_carry__0_i_3_n_0,counter_rx0_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h0810)) 
    counter_rx0_carry__0_i_1
       (.I0(counter_rx_reg[22]),
        .I1(counter_rx_reg[21]),
        .I2(counter_rx0_carry__0_i_5_n_0),
        .I3(counter_rx_reg[23]),
        .O(counter_rx0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h0810)) 
    counter_rx0_carry__0_i_2
       (.I0(counter_rx_reg[19]),
        .I1(counter_rx_reg[18]),
        .I2(counter_rx0_carry__0_i_5_n_0),
        .I3(counter_rx_reg[20]),
        .O(counter_rx0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h0810)) 
    counter_rx0_carry__0_i_3
       (.I0(counter_rx_reg[16]),
        .I1(counter_rx_reg[15]),
        .I2(counter_rx0_carry__0_i_5_n_0),
        .I3(counter_rx_reg[17]),
        .O(counter_rx0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h0810)) 
    counter_rx0_carry__0_i_4
       (.I0(counter_rx_reg[13]),
        .I1(counter_rx_reg[12]),
        .I2(counter_rx0_carry__0_i_5_n_0),
        .I3(counter_rx_reg[14]),
        .O(counter_rx0_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    counter_rx0_carry__0_i_5
       (.I0(\BIT_PERIOD_TX_reg_n_0_[12] ),
        .I1(\BIT_PERIOD_TX_reg_n_0_[10] ),
        .I2(counter_rx0_carry_i_6_n_0),
        .I3(\BIT_PERIOD_TX_reg_n_0_[11] ),
        .I4(\BIT_PERIOD_TX_reg_n_0_[13] ),
        .O(counter_rx0_carry__0_i_5_n_0));
  CARRY4 counter_rx0_carry__1
       (.CI(counter_rx0_carry__0_n_0),
        .CO({NLW_counter_rx0_carry__1_CO_UNCONNECTED[3],counter_rx0,NLW_counter_rx0_carry__1_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter_rx0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,counter_rx0_carry__1_i_1_n_0,counter_rx0_carry__1_i_2_n_0,counter_rx0_carry__1_i_3_n_0}));
  LUT3 #(
    .INIT(8'h42)) 
    counter_rx0_carry__1_i_1
       (.I0(counter_rx0_carry__0_i_5_n_0),
        .I1(counter_rx_reg[30]),
        .I2(counter_rx_reg[31]),
        .O(counter_rx0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h0810)) 
    counter_rx0_carry__1_i_2
       (.I0(counter_rx_reg[28]),
        .I1(counter_rx_reg[27]),
        .I2(counter_rx0_carry__0_i_5_n_0),
        .I3(counter_rx_reg[29]),
        .O(counter_rx0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h0810)) 
    counter_rx0_carry__1_i_3
       (.I0(counter_rx_reg[25]),
        .I1(counter_rx_reg[24]),
        .I2(counter_rx0_carry__0_i_5_n_0),
        .I3(counter_rx_reg[26]),
        .O(counter_rx0_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'h00084110)) 
    counter_rx0_carry_i_1
       (.I0(counter_rx_reg[10]),
        .I1(counter_rx_reg[9]),
        .I2(counter_rx0_carry_i_5_n_0),
        .I3(\BIT_PERIOD_TX_reg_n_0_[13] ),
        .I4(counter_rx_reg[11]),
        .O(counter_rx0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h8610108600000000)) 
    counter_rx0_carry_i_2
       (.I0(\BIT_PERIOD_TX_reg_n_0_[10] ),
        .I1(counter_rx0_carry_i_6_n_0),
        .I2(counter_rx_reg[6]),
        .I3(\BIT_PERIOD_TX_reg_n_0_[11] ),
        .I4(counter_rx_reg[7]),
        .I5(counter_rx0_carry_i_7_n_0),
        .O(counter_rx0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h8020200808020280)) 
    counter_rx0_carry_i_3
       (.I0(counter_rx0_carry_i_8_n_0),
        .I1(counter_rx_reg[4]),
        .I2(counter_rx_reg[5]),
        .I3(\BIT_PERIOD_TX_reg_n_0_[8] ),
        .I4(counter_rx0_carry_i_9_n_0),
        .I5(\BIT_PERIOD_TX_reg_n_0_[9] ),
        .O(counter_rx0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h4010200804010280)) 
    counter_rx0_carry_i_4
       (.I0(counter_rx_reg[0]),
        .I1(counter_rx_reg[1]),
        .I2(counter_rx_reg[2]),
        .I3(\BIT_PERIOD_TX_reg_n_0_[5] ),
        .I4(\BIT_PERIOD_TX_reg_n_0_[4] ),
        .I5(\BIT_PERIOD_TX_reg_n_0_[6] ),
        .O(counter_rx0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    counter_rx0_carry_i_5
       (.I0(\BIT_PERIOD_TX_reg_n_0_[11] ),
        .I1(counter_rx0_carry_i_6_n_0),
        .I2(\BIT_PERIOD_TX_reg_n_0_[10] ),
        .I3(\BIT_PERIOD_TX_reg_n_0_[12] ),
        .O(counter_rx0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    counter_rx0_carry_i_6
       (.I0(\BIT_PERIOD_TX_reg_n_0_[8] ),
        .I1(\BIT_PERIOD_TX_reg_n_0_[6] ),
        .I2(\BIT_PERIOD_TX_reg_n_0_[4] ),
        .I3(\BIT_PERIOD_TX_reg_n_0_[5] ),
        .I4(\BIT_PERIOD_TX_reg_n_0_[7] ),
        .I5(\BIT_PERIOD_TX_reg_n_0_[9] ),
        .O(counter_rx0_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'hAAA95556)) 
    counter_rx0_carry_i_7
       (.I0(\BIT_PERIOD_TX_reg_n_0_[12] ),
        .I1(\BIT_PERIOD_TX_reg_n_0_[10] ),
        .I2(counter_rx0_carry_i_6_n_0),
        .I3(\BIT_PERIOD_TX_reg_n_0_[11] ),
        .I4(counter_rx_reg[8]),
        .O(counter_rx0_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'hAAA95556)) 
    counter_rx0_carry_i_8
       (.I0(\BIT_PERIOD_TX_reg_n_0_[7] ),
        .I1(\BIT_PERIOD_TX_reg_n_0_[5] ),
        .I2(\BIT_PERIOD_TX_reg_n_0_[4] ),
        .I3(\BIT_PERIOD_TX_reg_n_0_[6] ),
        .I4(counter_rx_reg[3]),
        .O(counter_rx0_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    counter_rx0_carry_i_9
       (.I0(\BIT_PERIOD_TX_reg_n_0_[6] ),
        .I1(\BIT_PERIOD_TX_reg_n_0_[4] ),
        .I2(\BIT_PERIOD_TX_reg_n_0_[5] ),
        .I3(\BIT_PERIOD_TX_reg_n_0_[7] ),
        .O(counter_rx0_carry_i_9_n_0));
  LUT3 #(
    .INIT(8'hFD)) 
    \counter_rx[0]_i_1 
       (.I0(rst_n_IBUF),
        .I1(baud_changed),
        .I2(counter_rx0),
        .O(\counter_rx[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_rx[0]_i_3 
       (.I0(counter_rx_reg[0]),
        .O(\counter_rx[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[0]_i_2_n_7 ),
        .Q(counter_rx_reg[0]),
        .R(\counter_rx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_rx_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_rx_reg[0]_i_2_n_0 ,\NLW_counter_rx_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_rx_reg[0]_i_2_n_4 ,\counter_rx_reg[0]_i_2_n_5 ,\counter_rx_reg[0]_i_2_n_6 ,\counter_rx_reg[0]_i_2_n_7 }),
        .S({counter_rx_reg[3:1],\counter_rx[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[8]_i_1_n_5 ),
        .Q(counter_rx_reg[10]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[8]_i_1_n_4 ),
        .Q(counter_rx_reg[11]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[12]_i_1_n_7 ),
        .Q(counter_rx_reg[12]),
        .R(\counter_rx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_rx_reg[12]_i_1 
       (.CI(\counter_rx_reg[8]_i_1_n_0 ),
        .CO({\counter_rx_reg[12]_i_1_n_0 ,\NLW_counter_rx_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_rx_reg[12]_i_1_n_4 ,\counter_rx_reg[12]_i_1_n_5 ,\counter_rx_reg[12]_i_1_n_6 ,\counter_rx_reg[12]_i_1_n_7 }),
        .S(counter_rx_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[12]_i_1_n_6 ),
        .Q(counter_rx_reg[13]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[12]_i_1_n_5 ),
        .Q(counter_rx_reg[14]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[12]_i_1_n_4 ),
        .Q(counter_rx_reg[15]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[16]_i_1_n_7 ),
        .Q(counter_rx_reg[16]),
        .R(\counter_rx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_rx_reg[16]_i_1 
       (.CI(\counter_rx_reg[12]_i_1_n_0 ),
        .CO({\counter_rx_reg[16]_i_1_n_0 ,\NLW_counter_rx_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_rx_reg[16]_i_1_n_4 ,\counter_rx_reg[16]_i_1_n_5 ,\counter_rx_reg[16]_i_1_n_6 ,\counter_rx_reg[16]_i_1_n_7 }),
        .S(counter_rx_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[16]_i_1_n_6 ),
        .Q(counter_rx_reg[17]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[16]_i_1_n_5 ),
        .Q(counter_rx_reg[18]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[16]_i_1_n_4 ),
        .Q(counter_rx_reg[19]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[0]_i_2_n_6 ),
        .Q(counter_rx_reg[1]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[20]_i_1_n_7 ),
        .Q(counter_rx_reg[20]),
        .R(\counter_rx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_rx_reg[20]_i_1 
       (.CI(\counter_rx_reg[16]_i_1_n_0 ),
        .CO({\counter_rx_reg[20]_i_1_n_0 ,\NLW_counter_rx_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_rx_reg[20]_i_1_n_4 ,\counter_rx_reg[20]_i_1_n_5 ,\counter_rx_reg[20]_i_1_n_6 ,\counter_rx_reg[20]_i_1_n_7 }),
        .S(counter_rx_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[20]_i_1_n_6 ),
        .Q(counter_rx_reg[21]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[20]_i_1_n_5 ),
        .Q(counter_rx_reg[22]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[20]_i_1_n_4 ),
        .Q(counter_rx_reg[23]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[24]_i_1_n_7 ),
        .Q(counter_rx_reg[24]),
        .R(\counter_rx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_rx_reg[24]_i_1 
       (.CI(\counter_rx_reg[20]_i_1_n_0 ),
        .CO({\counter_rx_reg[24]_i_1_n_0 ,\NLW_counter_rx_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_rx_reg[24]_i_1_n_4 ,\counter_rx_reg[24]_i_1_n_5 ,\counter_rx_reg[24]_i_1_n_6 ,\counter_rx_reg[24]_i_1_n_7 }),
        .S(counter_rx_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[24]_i_1_n_6 ),
        .Q(counter_rx_reg[25]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[24]_i_1_n_5 ),
        .Q(counter_rx_reg[26]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[24]_i_1_n_4 ),
        .Q(counter_rx_reg[27]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[28]_i_1_n_7 ),
        .Q(counter_rx_reg[28]),
        .R(\counter_rx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_rx_reg[28]_i_1 
       (.CI(\counter_rx_reg[24]_i_1_n_0 ),
        .CO(\NLW_counter_rx_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_rx_reg[28]_i_1_n_4 ,\counter_rx_reg[28]_i_1_n_5 ,\counter_rx_reg[28]_i_1_n_6 ,\counter_rx_reg[28]_i_1_n_7 }),
        .S(counter_rx_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[28]_i_1_n_6 ),
        .Q(counter_rx_reg[29]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[0]_i_2_n_5 ),
        .Q(counter_rx_reg[2]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[28]_i_1_n_5 ),
        .Q(counter_rx_reg[30]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[28]_i_1_n_4 ),
        .Q(counter_rx_reg[31]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[0]_i_2_n_4 ),
        .Q(counter_rx_reg[3]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[4]_i_1_n_7 ),
        .Q(counter_rx_reg[4]),
        .R(\counter_rx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_rx_reg[4]_i_1 
       (.CI(\counter_rx_reg[0]_i_2_n_0 ),
        .CO({\counter_rx_reg[4]_i_1_n_0 ,\NLW_counter_rx_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_rx_reg[4]_i_1_n_4 ,\counter_rx_reg[4]_i_1_n_5 ,\counter_rx_reg[4]_i_1_n_6 ,\counter_rx_reg[4]_i_1_n_7 }),
        .S(counter_rx_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[4]_i_1_n_6 ),
        .Q(counter_rx_reg[5]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[4]_i_1_n_5 ),
        .Q(counter_rx_reg[6]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[4]_i_1_n_4 ),
        .Q(counter_rx_reg[7]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[8]_i_1_n_7 ),
        .Q(counter_rx_reg[8]),
        .R(\counter_rx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_rx_reg[8]_i_1 
       (.CI(\counter_rx_reg[4]_i_1_n_0 ),
        .CO({\counter_rx_reg[8]_i_1_n_0 ,\NLW_counter_rx_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_rx_reg[8]_i_1_n_4 ,\counter_rx_reg[8]_i_1_n_5 ,\counter_rx_reg[8]_i_1_n_6 ,\counter_rx_reg[8]_i_1_n_7 }),
        .S(counter_rx_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_rx_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_rx_reg[8]_i_1_n_6 ),
        .Q(counter_rx_reg[9]),
        .R(\counter_rx[0]_i_1_n_0 ));
  CARRY4 counter_tx0_carry
       (.CI(1'b0),
        .CO({counter_tx0_carry_n_0,NLW_counter_tx0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter_tx0_carry_O_UNCONNECTED[3:0]),
        .S({counter_tx0_carry_i_1_n_0,counter_tx0_carry_i_2_n_0,counter_tx0_carry_i_3_n_0,counter_tx0_carry_i_4_n_0}));
  CARRY4 counter_tx0_carry__0
       (.CI(counter_tx0_carry_n_0),
        .CO({counter_tx0_carry__0_n_0,NLW_counter_tx0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter_tx0_carry__0_O_UNCONNECTED[3:0]),
        .S({counter_tx0_carry__0_i_1_n_0,counter_tx0_carry__0_i_2_n_0,counter_tx0_carry__0_i_3_n_0,counter_tx0_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h0810)) 
    counter_tx0_carry__0_i_1
       (.I0(counter_tx_reg[22]),
        .I1(counter_tx_reg[21]),
        .I2(counter_tx1_carry__2_n_2),
        .I3(counter_tx_reg[23]),
        .O(counter_tx0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h0810)) 
    counter_tx0_carry__0_i_2
       (.I0(counter_tx_reg[19]),
        .I1(counter_tx_reg[18]),
        .I2(counter_tx1_carry__2_n_2),
        .I3(counter_tx_reg[20]),
        .O(counter_tx0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h0810)) 
    counter_tx0_carry__0_i_3
       (.I0(counter_tx_reg[16]),
        .I1(counter_tx_reg[15]),
        .I2(counter_tx1_carry__2_n_2),
        .I3(counter_tx_reg[17]),
        .O(counter_tx0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000900990090000)) 
    counter_tx0_carry__0_i_4
       (.I0(counter_tx_reg[13]),
        .I1(counter_tx1[13]),
        .I2(counter_tx_reg[12]),
        .I3(counter_tx1[12]),
        .I4(counter_tx_reg[14]),
        .I5(counter_tx1_carry__2_n_2),
        .O(counter_tx0_carry__0_i_4_n_0));
  CARRY4 counter_tx0_carry__1
       (.CI(counter_tx0_carry__0_n_0),
        .CO({NLW_counter_tx0_carry__1_CO_UNCONNECTED[3],counter_tx0,NLW_counter_tx0_carry__1_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter_tx0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,counter_tx0_carry__1_i_1_n_0,counter_tx0_carry__1_i_2_n_0,counter_tx0_carry__1_i_3_n_0}));
  LUT3 #(
    .INIT(8'h42)) 
    counter_tx0_carry__1_i_1
       (.I0(counter_tx1_carry__2_n_2),
        .I1(counter_tx_reg[30]),
        .I2(counter_tx_reg[31]),
        .O(counter_tx0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h0810)) 
    counter_tx0_carry__1_i_2
       (.I0(counter_tx_reg[28]),
        .I1(counter_tx_reg[27]),
        .I2(counter_tx1_carry__2_n_2),
        .I3(counter_tx_reg[29]),
        .O(counter_tx0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h0810)) 
    counter_tx0_carry__1_i_3
       (.I0(counter_tx_reg[25]),
        .I1(counter_tx_reg[24]),
        .I2(counter_tx1_carry__2_n_2),
        .I3(counter_tx_reg[26]),
        .O(counter_tx0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter_tx0_carry_i_1
       (.I0(counter_tx_reg[10]),
        .I1(counter_tx1[10]),
        .I2(counter_tx_reg[9]),
        .I3(counter_tx1[9]),
        .I4(counter_tx1[11]),
        .I5(counter_tx_reg[11]),
        .O(counter_tx0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter_tx0_carry_i_2
       (.I0(counter_tx_reg[7]),
        .I1(counter_tx1[7]),
        .I2(counter_tx_reg[6]),
        .I3(counter_tx1[6]),
        .I4(counter_tx1[8]),
        .I5(counter_tx_reg[8]),
        .O(counter_tx0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter_tx0_carry_i_3
       (.I0(counter_tx_reg[4]),
        .I1(counter_tx1[4]),
        .I2(counter_tx_reg[3]),
        .I3(counter_tx1[3]),
        .I4(counter_tx1[5]),
        .I5(counter_tx_reg[5]),
        .O(counter_tx0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    counter_tx0_carry_i_4
       (.I0(counter_tx_reg[1]),
        .I1(counter_tx1[1]),
        .I2(\BIT_PERIOD_TX_reg_n_0_[0] ),
        .I3(counter_tx_reg[0]),
        .I4(counter_tx1[2]),
        .I5(counter_tx_reg[2]),
        .O(counter_tx0_carry_i_4_n_0));
  CARRY4 counter_tx1_carry
       (.CI(1'b0),
        .CO({counter_tx1_carry_n_0,NLW_counter_tx1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\BIT_PERIOD_TX_reg_n_0_[0] ),
        .DI({\BIT_PERIOD_TX_reg_n_0_[4] ,\BIT_PERIOD_TX_reg_n_0_[3] ,\BIT_PERIOD_TX_reg_n_0_[2] ,\BIT_PERIOD_TX_reg_n_0_[1] }),
        .O(counter_tx1[4:1]),
        .S({counter_tx1_carry_i_1_n_0,counter_tx1_carry_i_2_n_0,counter_tx1_carry_i_3_n_0,counter_tx1_carry_i_4_n_0}));
  CARRY4 counter_tx1_carry__0
       (.CI(counter_tx1_carry_n_0),
        .CO({counter_tx1_carry__0_n_0,NLW_counter_tx1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\BIT_PERIOD_TX_reg_n_0_[8] ,\BIT_PERIOD_TX_reg_n_0_[7] ,\BIT_PERIOD_TX_reg_n_0_[6] ,\BIT_PERIOD_TX_reg_n_0_[5] }),
        .O(counter_tx1[8:5]),
        .S({counter_tx1_carry__0_i_1_n_0,counter_tx1_carry__0_i_2_n_0,counter_tx1_carry__0_i_3_n_0,counter_tx1_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter_tx1_carry__0_i_1
       (.I0(\BIT_PERIOD_TX_reg_n_0_[8] ),
        .O(counter_tx1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_tx1_carry__0_i_2
       (.I0(\BIT_PERIOD_TX_reg_n_0_[7] ),
        .O(counter_tx1_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_tx1_carry__0_i_3
       (.I0(\BIT_PERIOD_TX_reg_n_0_[6] ),
        .O(counter_tx1_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_tx1_carry__0_i_4
       (.I0(\BIT_PERIOD_TX_reg_n_0_[5] ),
        .O(counter_tx1_carry__0_i_4_n_0));
  CARRY4 counter_tx1_carry__1
       (.CI(counter_tx1_carry__0_n_0),
        .CO({counter_tx1_carry__1_n_0,NLW_counter_tx1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\BIT_PERIOD_TX_reg_n_0_[12] ,\BIT_PERIOD_TX_reg_n_0_[11] ,\BIT_PERIOD_TX_reg_n_0_[10] ,\BIT_PERIOD_TX_reg_n_0_[9] }),
        .O(counter_tx1[12:9]),
        .S({counter_tx1_carry__1_i_1_n_0,counter_tx1_carry__1_i_2_n_0,counter_tx1_carry__1_i_3_n_0,counter_tx1_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter_tx1_carry__1_i_1
       (.I0(\BIT_PERIOD_TX_reg_n_0_[12] ),
        .O(counter_tx1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_tx1_carry__1_i_2
       (.I0(\BIT_PERIOD_TX_reg_n_0_[11] ),
        .O(counter_tx1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_tx1_carry__1_i_3
       (.I0(\BIT_PERIOD_TX_reg_n_0_[10] ),
        .O(counter_tx1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_tx1_carry__1_i_4
       (.I0(\BIT_PERIOD_TX_reg_n_0_[9] ),
        .O(counter_tx1_carry__1_i_4_n_0));
  CARRY4 counter_tx1_carry__2
       (.CI(counter_tx1_carry__1_n_0),
        .CO({NLW_counter_tx1_carry__2_CO_UNCONNECTED[3:2],counter_tx1_carry__2_n_2,NLW_counter_tx1_carry__2_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\BIT_PERIOD_TX_reg_n_0_[13] }),
        .O({NLW_counter_tx1_carry__2_O_UNCONNECTED[3:1],counter_tx1[13]}),
        .S({1'b0,1'b0,1'b1,counter_tx1_carry__2_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter_tx1_carry__2_i_1
       (.I0(\BIT_PERIOD_TX_reg_n_0_[13] ),
        .O(counter_tx1_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_tx1_carry_i_1
       (.I0(\BIT_PERIOD_TX_reg_n_0_[4] ),
        .O(counter_tx1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_tx1_carry_i_2
       (.I0(\BIT_PERIOD_TX_reg_n_0_[3] ),
        .O(counter_tx1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_tx1_carry_i_3
       (.I0(\BIT_PERIOD_TX_reg_n_0_[2] ),
        .O(counter_tx1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_tx1_carry_i_4
       (.I0(\BIT_PERIOD_TX_reg_n_0_[1] ),
        .O(counter_tx1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'hFD)) 
    \counter_tx[0]_i_1 
       (.I0(rst_n_IBUF),
        .I1(baud_changed),
        .I2(counter_tx0),
        .O(\counter_tx[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_tx[0]_i_3 
       (.I0(counter_tx_reg[0]),
        .O(\counter_tx[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[0]_i_2_n_7 ),
        .Q(counter_tx_reg[0]),
        .R(\counter_tx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_tx_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_tx_reg[0]_i_2_n_0 ,\NLW_counter_tx_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_tx_reg[0]_i_2_n_4 ,\counter_tx_reg[0]_i_2_n_5 ,\counter_tx_reg[0]_i_2_n_6 ,\counter_tx_reg[0]_i_2_n_7 }),
        .S({counter_tx_reg[3:1],\counter_tx[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[8]_i_1_n_5 ),
        .Q(counter_tx_reg[10]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[8]_i_1_n_4 ),
        .Q(counter_tx_reg[11]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[12]_i_1_n_7 ),
        .Q(counter_tx_reg[12]),
        .R(\counter_tx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_tx_reg[12]_i_1 
       (.CI(\counter_tx_reg[8]_i_1_n_0 ),
        .CO({\counter_tx_reg[12]_i_1_n_0 ,\NLW_counter_tx_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_tx_reg[12]_i_1_n_4 ,\counter_tx_reg[12]_i_1_n_5 ,\counter_tx_reg[12]_i_1_n_6 ,\counter_tx_reg[12]_i_1_n_7 }),
        .S(counter_tx_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[12]_i_1_n_6 ),
        .Q(counter_tx_reg[13]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[12]_i_1_n_5 ),
        .Q(counter_tx_reg[14]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[12]_i_1_n_4 ),
        .Q(counter_tx_reg[15]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[16]_i_1_n_7 ),
        .Q(counter_tx_reg[16]),
        .R(\counter_tx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_tx_reg[16]_i_1 
       (.CI(\counter_tx_reg[12]_i_1_n_0 ),
        .CO({\counter_tx_reg[16]_i_1_n_0 ,\NLW_counter_tx_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_tx_reg[16]_i_1_n_4 ,\counter_tx_reg[16]_i_1_n_5 ,\counter_tx_reg[16]_i_1_n_6 ,\counter_tx_reg[16]_i_1_n_7 }),
        .S(counter_tx_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[16]_i_1_n_6 ),
        .Q(counter_tx_reg[17]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[16]_i_1_n_5 ),
        .Q(counter_tx_reg[18]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[16]_i_1_n_4 ),
        .Q(counter_tx_reg[19]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[0]_i_2_n_6 ),
        .Q(counter_tx_reg[1]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[20]_i_1_n_7 ),
        .Q(counter_tx_reg[20]),
        .R(\counter_tx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_tx_reg[20]_i_1 
       (.CI(\counter_tx_reg[16]_i_1_n_0 ),
        .CO({\counter_tx_reg[20]_i_1_n_0 ,\NLW_counter_tx_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_tx_reg[20]_i_1_n_4 ,\counter_tx_reg[20]_i_1_n_5 ,\counter_tx_reg[20]_i_1_n_6 ,\counter_tx_reg[20]_i_1_n_7 }),
        .S(counter_tx_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[20]_i_1_n_6 ),
        .Q(counter_tx_reg[21]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[20]_i_1_n_5 ),
        .Q(counter_tx_reg[22]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[20]_i_1_n_4 ),
        .Q(counter_tx_reg[23]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[24]_i_1_n_7 ),
        .Q(counter_tx_reg[24]),
        .R(\counter_tx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_tx_reg[24]_i_1 
       (.CI(\counter_tx_reg[20]_i_1_n_0 ),
        .CO({\counter_tx_reg[24]_i_1_n_0 ,\NLW_counter_tx_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_tx_reg[24]_i_1_n_4 ,\counter_tx_reg[24]_i_1_n_5 ,\counter_tx_reg[24]_i_1_n_6 ,\counter_tx_reg[24]_i_1_n_7 }),
        .S(counter_tx_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[24]_i_1_n_6 ),
        .Q(counter_tx_reg[25]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[24]_i_1_n_5 ),
        .Q(counter_tx_reg[26]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[24]_i_1_n_4 ),
        .Q(counter_tx_reg[27]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[28]_i_1_n_7 ),
        .Q(counter_tx_reg[28]),
        .R(\counter_tx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_tx_reg[28]_i_1 
       (.CI(\counter_tx_reg[24]_i_1_n_0 ),
        .CO(\NLW_counter_tx_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_tx_reg[28]_i_1_n_4 ,\counter_tx_reg[28]_i_1_n_5 ,\counter_tx_reg[28]_i_1_n_6 ,\counter_tx_reg[28]_i_1_n_7 }),
        .S(counter_tx_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[28]_i_1_n_6 ),
        .Q(counter_tx_reg[29]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[0]_i_2_n_5 ),
        .Q(counter_tx_reg[2]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[28]_i_1_n_5 ),
        .Q(counter_tx_reg[30]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[28]_i_1_n_4 ),
        .Q(counter_tx_reg[31]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[0]_i_2_n_4 ),
        .Q(counter_tx_reg[3]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[4]_i_1_n_7 ),
        .Q(counter_tx_reg[4]),
        .R(\counter_tx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_tx_reg[4]_i_1 
       (.CI(\counter_tx_reg[0]_i_2_n_0 ),
        .CO({\counter_tx_reg[4]_i_1_n_0 ,\NLW_counter_tx_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_tx_reg[4]_i_1_n_4 ,\counter_tx_reg[4]_i_1_n_5 ,\counter_tx_reg[4]_i_1_n_6 ,\counter_tx_reg[4]_i_1_n_7 }),
        .S(counter_tx_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[4]_i_1_n_6 ),
        .Q(counter_tx_reg[5]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[4]_i_1_n_5 ),
        .Q(counter_tx_reg[6]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[4]_i_1_n_4 ),
        .Q(counter_tx_reg[7]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[8]_i_1_n_7 ),
        .Q(counter_tx_reg[8]),
        .R(\counter_tx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_tx_reg[8]_i_1 
       (.CI(\counter_tx_reg[4]_i_1_n_0 ),
        .CO({\counter_tx_reg[8]_i_1_n_0 ,\NLW_counter_tx_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_tx_reg[8]_i_1_n_4 ,\counter_tx_reg[8]_i_1_n_5 ,\counter_tx_reg[8]_i_1_n_6 ,\counter_tx_reg[8]_i_1_n_7 }),
        .S(counter_tx_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_tx_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_tx_reg[8]_i_1_n_6 ),
        .Q(counter_tx_reg[9]),
        .R(\counter_tx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    tick_rx_i_1
       (.I0(counter_rx0),
        .I1(rst_n_IBUF),
        .I2(baud_changed),
        .O(tick_rx_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tick_rx_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tick_rx_i_1_n_0),
        .Q(E),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    tick_tx_i_1
       (.I0(counter_tx0),
        .I1(rst_n_IBUF),
        .I2(baud_changed),
        .O(tick_tx_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tick_tx_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tick_tx_i_1_n_0),
        .Q(baud_o),
        .R(1'b0));
endmodule

module ff
   (tx_OBUF,
    SR,
    E,
    data_0,
    clk_IBUF_BUFG);
  output tx_OBUF;
  input [0:0]SR;
  input [0:0]E;
  input data_0;
  input clk_IBUF_BUFG;

  wire [0:0]E;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire data_0;
  wire tx_OBUF;

  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(data_0),
        .Q(tx_OBUF),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "ff" *) 
module ff_0
   (data_0,
    SR,
    E,
    data_1,
    clk_IBUF_BUFG,
    Q,
    load_d0_sampled,
    load_en_sampled);
  output data_0;
  input [0:0]SR;
  input [0:0]E;
  input data_1;
  input clk_IBUF_BUFG;
  input [0:0]Q;
  input load_d0_sampled;
  input load_en_sampled;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire data_0;
  wire data_1;
  wire f1;
  wire load_d0_sampled;
  wire load_en_sampled;

  LUT4 #(
    .INIT(16'h2230)) 
    Q_i_2
       (.I0(Q),
        .I1(load_d0_sampled),
        .I2(f1),
        .I3(load_en_sampled),
        .O(data_0));
  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(data_1),
        .Q(f1),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "ff" *) 
module ff_1
   (data_1,
    SR,
    E,
    data_2,
    clk_IBUF_BUFG,
    Q,
    load_en_sampled);
  output data_1;
  input [0:0]SR;
  input [0:0]E;
  input data_2;
  input clk_IBUF_BUFG;
  input [0:0]Q;
  input load_en_sampled;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire data_1;
  wire data_2;
  wire f2;
  wire load_en_sampled;

  LUT3 #(
    .INIT(8'hB8)) 
    Q_i_1__0
       (.I0(Q),
        .I1(load_en_sampled),
        .I2(f2),
        .O(data_1));
  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(data_2),
        .Q(f2),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "ff" *) 
module ff_2
   (data_2,
    SR,
    E,
    data_3,
    clk_IBUF_BUFG,
    Q,
    load_en_sampled);
  output data_2;
  input [0:0]SR;
  input [0:0]E;
  input data_3;
  input clk_IBUF_BUFG;
  input [0:0]Q;
  input load_en_sampled;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire data_2;
  wire data_3;
  wire f3;
  wire load_en_sampled;

  LUT3 #(
    .INIT(8'hB8)) 
    Q_i_1__1
       (.I0(Q),
        .I1(load_en_sampled),
        .I2(f3),
        .O(data_2));
  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(data_3),
        .Q(f3),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "ff" *) 
module ff_3
   (data_3,
    SR,
    E,
    data_4,
    clk_IBUF_BUFG,
    Q,
    load_en_sampled);
  output data_3;
  input [0:0]SR;
  input [0:0]E;
  input data_4;
  input clk_IBUF_BUFG;
  input [0:0]Q;
  input load_en_sampled;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire data_3;
  wire data_4;
  wire f4;
  wire load_en_sampled;

  LUT3 #(
    .INIT(8'hB8)) 
    Q_i_1__2
       (.I0(Q),
        .I1(load_en_sampled),
        .I2(f4),
        .O(data_3));
  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(data_4),
        .Q(f4),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "ff" *) 
module ff_4
   (data_4,
    SR,
    E,
    data_5,
    clk_IBUF_BUFG,
    Q,
    load_en_sampled);
  output data_4;
  input [0:0]SR;
  input [0:0]E;
  input data_5;
  input clk_IBUF_BUFG;
  input [0:0]Q;
  input load_en_sampled;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire data_4;
  wire data_5;
  wire f5;
  wire load_en_sampled;

  LUT3 #(
    .INIT(8'hB8)) 
    Q_i_1__3
       (.I0(Q),
        .I1(load_en_sampled),
        .I2(f5),
        .O(data_4));
  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(data_5),
        .Q(f5),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "ff" *) 
module ff_5
   (data_5,
    SR,
    E,
    data_6,
    clk_IBUF_BUFG,
    Q,
    load_en_sampled);
  output data_5;
  input [0:0]SR;
  input [0:0]E;
  input data_6;
  input clk_IBUF_BUFG;
  input [0:0]Q;
  input load_en_sampled;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire data_5;
  wire data_6;
  wire f6;
  wire load_en_sampled;

  LUT3 #(
    .INIT(8'hB8)) 
    Q_i_1__4
       (.I0(Q),
        .I1(load_en_sampled),
        .I2(f6),
        .O(data_5));
  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(data_6),
        .Q(f6),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "ff" *) 
module ff_6
   (data_6,
    SR,
    E,
    clk_IBUF_BUFG,
    Q,
    load_en_sampled);
  output data_6;
  input [0:0]SR;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [1:0]Q;
  input load_en_sampled;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire data_6;
  wire data_7;
  wire f7;
  wire load_en_sampled;

  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Q_i_1__5
       (.I0(Q[0]),
        .I1(load_en_sampled),
        .I2(f7),
        .O(data_6));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'hB)) 
    Q_i_1__6
       (.I0(Q[1]),
        .I1(load_en_sampled),
        .O(data_7));
  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(data_7),
        .Q(f7),
        .S(SR));
endmodule

module piso
   (tx_OBUF,
    SR,
    E,
    clk_IBUF_BUFG,
    Q,
    load_d0_sampled,
    load_en_sampled);
  output tx_OBUF;
  input [0:0]SR;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [7:0]Q;
  input load_d0_sampled;
  input load_en_sampled;

  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire data_0;
  wire data_1;
  wire data_2;
  wire data_3;
  wire data_4;
  wire data_5;
  wire data_6;
  wire load_d0_sampled;
  wire load_en_sampled;
  wire tx_OBUF;

  ff ff_1_inst
       (.E(E),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_0(data_0),
        .tx_OBUF(tx_OBUF));
  ff_0 ff_2_inst
       (.E(E),
        .Q(Q[0]),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_0(data_0),
        .data_1(data_1),
        .load_d0_sampled(load_d0_sampled),
        .load_en_sampled(load_en_sampled));
  ff_1 ff_3_inst
       (.E(E),
        .Q(Q[1]),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_1(data_1),
        .data_2(data_2),
        .load_en_sampled(load_en_sampled));
  ff_2 ff_4_inst
       (.E(E),
        .Q(Q[2]),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_2(data_2),
        .data_3(data_3),
        .load_en_sampled(load_en_sampled));
  ff_3 ff_5_inst
       (.E(E),
        .Q(Q[3]),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_3(data_3),
        .data_4(data_4),
        .load_en_sampled(load_en_sampled));
  ff_4 ff_6_inst
       (.E(E),
        .Q(Q[4]),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_4(data_4),
        .data_5(data_5),
        .load_en_sampled(load_en_sampled));
  ff_5 ff_7_inst
       (.E(E),
        .Q(Q[5]),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_5(data_5),
        .data_6(data_6),
        .load_en_sampled(load_en_sampled));
  ff_6 ff_8_inst
       (.E(E),
        .Q(Q[7:6]),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_6(data_6),
        .load_en_sampled(load_en_sampled));
endmodule

module receiver_controller
   (Q,
    E,
    parity_check,
    p_4_in,
    stop_bit_2_check,
    stop_bit_1_check,
    SR,
    \total_data_size_sampled_reg[3] ,
    \fcr_d_reg[0] ,
    \FSM_sequential_current_state_reg[0]_0 ,
    data_valid,
    \fcr_d_reg[1] ,
    \FSM_sequential_current_state_reg[0]_1 ,
    \FSM_sequential_current_state_reg[0]_2 ,
    \count_data_reg[0] ,
    \count_data_reg[0]_0 ,
    \FSM_sequential_current_state_reg[0]_3 ,
    \FSM_sequential_current_state_reg[0]_4 ,
    ocr,
    stop_bit_2_check_sampled_reg,
    stop_bit_2_check_sampled_reg_0,
    stop_bit_2_check_sampled_reg_1,
    stop_bit_1_check_sampled_reg,
    rst_n_IBUF,
    mem_reg_0_15_6_7__0,
    fifo_rx_full_o,
    fifo_rx_pop_d,
    fifo_rx_pop,
    fifo_rx_empty,
    \data_o_reg[0] ,
    \FSM_sequential_current_state_reg[0]_5 ,
    clk_IBUF_BUFG);
  output [0:0]Q;
  output [0:0]E;
  output parity_check;
  output p_4_in;
  output stop_bit_2_check;
  output stop_bit_1_check;
  output [0:0]SR;
  output [0:0]\total_data_size_sampled_reg[3] ;
  output [0:0]\fcr_d_reg[0] ;
  output \FSM_sequential_current_state_reg[0]_0 ;
  output data_valid;
  output \fcr_d_reg[1] ;
  input \FSM_sequential_current_state_reg[0]_1 ;
  input [0:0]\FSM_sequential_current_state_reg[0]_2 ;
  input [0:0]\count_data_reg[0] ;
  input [3:0]\count_data_reg[0]_0 ;
  input \FSM_sequential_current_state_reg[0]_3 ;
  input \FSM_sequential_current_state_reg[0]_4 ;
  input [0:0]ocr;
  input [3:0]stop_bit_2_check_sampled_reg;
  input stop_bit_2_check_sampled_reg_0;
  input [3:0]stop_bit_2_check_sampled_reg_1;
  input stop_bit_1_check_sampled_reg;
  input rst_n_IBUF;
  input [1:0]mem_reg_0_15_6_7__0;
  input fifo_rx_full_o;
  input fifo_rx_pop_d;
  input fifo_rx_pop;
  input fifo_rx_empty;
  input [3:0]\data_o_reg[0] ;
  input [0:0]\FSM_sequential_current_state_reg[0]_5 ;
  input clk_IBUF_BUFG;

  wire [0:0]E;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[0]_i_4_n_0 ;
  wire \FSM_sequential_current_state[1]_i_2__0_n_0 ;
  wire \FSM_sequential_current_state[1]_i_3_n_0 ;
  wire \FSM_sequential_current_state[1]_i_5_n_0 ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[0]_1 ;
  wire [0:0]\FSM_sequential_current_state_reg[0]_2 ;
  wire \FSM_sequential_current_state_reg[0]_3 ;
  wire \FSM_sequential_current_state_reg[0]_4 ;
  wire [0:0]\FSM_sequential_current_state_reg[0]_5 ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk_1x__3;
  wire clk_2x__3;
  wire clk_IBUF_BUFG;
  wire [0:0]\count_data_reg[0] ;
  wire [3:0]\count_data_reg[0]_0 ;
  wire [2:1]current_state;
  wire \data_o[7]_i_3_n_0 ;
  wire [3:0]\data_o_reg[0] ;
  wire data_valid;
  wire data_valid_d_i_2_n_0;
  wire [0:0]\fcr_d_reg[0] ;
  wire \fcr_d_reg[1] ;
  wire fifo_rx_empty;
  wire fifo_rx_full_o;
  wire fifo_rx_pop;
  wire fifo_rx_pop_d;
  wire [1:0]mem_reg_0_15_6_7__0;
  wire [2:0]next_state;
  wire [0:0]ocr;
  wire p_4_in;
  wire parity_check;
  wire parity_check_sampled_i_3_n_0;
  wire receive_data_fi__6;
  wire rst_n_IBUF;
  wire stop_bit_1_check;
  wire stop_bit_1_check_sampled_i_2_n_0;
  wire stop_bit_1_check_sampled_reg;
  wire stop_bit_2_check;
  wire stop_bit_2_check_sampled_i_2_n_0;
  wire [3:0]stop_bit_2_check_sampled_reg;
  wire stop_bit_2_check_sampled_reg_0;
  wire [3:0]stop_bit_2_check_sampled_reg_1;
  wire [0:0]\total_data_size_sampled_reg[3] ;

  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I1(current_state[1]),
        .I2(\FSM_sequential_current_state_reg[0]_1 ),
        .I3(current_state[2]),
        .I4(\FSM_sequential_current_state[0]_i_4_n_0 ),
        .O(next_state[0]));
  LUT5 #(
    .INIT(32'h005500C0)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(clk_2x__3),
        .I1(receive_data_fi__6),
        .I2(\FSM_sequential_current_state_reg[0]_2 ),
        .I3(current_state[1]),
        .I4(Q),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBAABBAAF0FF0000)) 
    \FSM_sequential_current_state[0]_i_4 
       (.I0(\FSM_sequential_current_state_reg[0]_3 ),
        .I1(clk_1x__3),
        .I2(\FSM_sequential_current_state_reg[0]_4 ),
        .I3(Q),
        .I4(ocr),
        .I5(current_state[1]),
        .O(\FSM_sequential_current_state[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0F445500)) 
    \FSM_sequential_current_state[1]_i_2__0 
       (.I0(\FSM_sequential_current_state_reg[0]_4 ),
        .I1(ocr),
        .I2(clk_1x__3),
        .I3(Q),
        .I4(current_state[1]),
        .O(\FSM_sequential_current_state[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF23220100)) 
    \FSM_sequential_current_state[1]_i_3 
       (.I0(Q),
        .I1(current_state[1]),
        .I2(\FSM_sequential_current_state_reg[0]_2 ),
        .I3(receive_data_fi__6),
        .I4(clk_2x__3),
        .I5(\FSM_sequential_current_state[1]_i_5_n_0 ),
        .O(\FSM_sequential_current_state[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \FSM_sequential_current_state[1]_i_4 
       (.I0(\count_data_reg[0] ),
        .I1(\count_data_reg[0]_0 [1]),
        .I2(\count_data_reg[0]_0 [0]),
        .I3(\count_data_reg[0]_0 [3]),
        .I4(\count_data_reg[0]_0 [2]),
        .O(clk_2x__3));
  LUT4 #(
    .INIT(16'h4F00)) 
    \FSM_sequential_current_state[1]_i_5 
       (.I0(\FSM_sequential_current_state_reg[0]_4 ),
        .I1(ocr),
        .I2(Q),
        .I3(current_state[1]),
        .O(\FSM_sequential_current_state[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h3F80)) 
    \FSM_sequential_current_state[2]_i_1__0 
       (.I0(clk_1x__3),
        .I1(current_state[1]),
        .I2(Q),
        .I3(current_state[2]),
        .O(next_state[2]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_sequential_current_state[2]_i_2 
       (.I0(\count_data_reg[0] ),
        .I1(\count_data_reg[0]_0 [0]),
        .I2(\count_data_reg[0]_0 [1]),
        .I3(\count_data_reg[0]_0 [3]),
        .I4(\count_data_reg[0]_0 [2]),
        .O(clk_1x__3));
  (* FSM_ENCODED_STATES = "RECEIVE_DATA:100,RECEIVE_PARITY:101,RECEIVE_STOP:110,FINISH:111,WAIT_START:011,SCAN:010,IDLE:000,RTS:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(Q),
        .R(\FSM_sequential_current_state_reg[0]_5 ));
  (* FSM_ENCODED_STATES = "RECEIVE_DATA:100,RECEIVE_PARITY:101,RECEIVE_STOP:110,FINISH:111,WAIT_START:011,SCAN:010,IDLE:000,RTS:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(\FSM_sequential_current_state_reg[0]_5 ));
  MUXF7 \FSM_sequential_current_state_reg[1]_i_1__0 
       (.I0(\FSM_sequential_current_state[1]_i_2__0_n_0 ),
        .I1(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .O(next_state[1]),
        .S(current_state[2]));
  (* FSM_ENCODED_STATES = "RECEIVE_DATA:100,RECEIVE_PARITY:101,RECEIVE_STOP:110,FINISH:111,WAIT_START:011,SCAN:010,IDLE:000,RTS:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[2]),
        .Q(current_state[2]),
        .R(\FSM_sequential_current_state_reg[0]_5 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \count_data[3]_i_1 
       (.I0(p_4_in),
        .I1(\total_data_size_sampled_reg[3] ),
        .I2(rst_n_IBUF),
        .O(SR));
  LUT4 #(
    .INIT(16'h2A00)) 
    \count_data[3]_i_2 
       (.I0(current_state[2]),
        .I1(Q),
        .I2(current_state[1]),
        .I3(clk_1x__3),
        .O(p_4_in));
  LUT5 #(
    .INIT(32'h90090000)) 
    \data_o[7]_i_1__0 
       (.I0(\data_o_reg[0] [3]),
        .I1(stop_bit_2_check_sampled_reg[3]),
        .I2(\data_o_reg[0] [2]),
        .I3(stop_bit_2_check_sampled_reg[2]),
        .I4(\data_o[7]_i_3_n_0 ),
        .O(\total_data_size_sampled_reg[3] ));
  LUT4 #(
    .INIT(16'h9009)) 
    \data_o[7]_i_3 
       (.I0(stop_bit_2_check_sampled_reg[0]),
        .I1(\data_o_reg[0] [0]),
        .I2(stop_bit_2_check_sampled_reg[1]),
        .I3(\data_o_reg[0] [1]),
        .O(\data_o[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00F0222200F000F0)) 
    data_valid_d_i_1
       (.I0(fifo_rx_pop_d),
        .I1(fifo_rx_pop),
        .I2(current_state[2]),
        .I3(data_valid_d_i_2_n_0),
        .I4(fifo_rx_empty),
        .I5(mem_reg_0_15_6_7__0[0]),
        .O(data_valid));
  LUT2 #(
    .INIT(4'h7)) 
    data_valid_d_i_2
       (.I0(Q),
        .I1(current_state[1]),
        .O(data_valid_d_i_2_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \lsr[6]_i_3 
       (.I0(Q),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(mem_reg_0_15_6_7__0[0]),
        .O(\FSM_sequential_current_state_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_0_15_0_5_i_1__0
       (.I0(\fcr_d_reg[0] ),
        .I1(rst_n_IBUF),
        .I2(mem_reg_0_15_6_7__0[1]),
        .O(\fcr_d_reg[1] ));
  LUT2 #(
    .INIT(4'h8)) 
    parity_check_sampled_i_1
       (.I0(receive_data_fi__6),
        .I1(p_4_in),
        .O(parity_check));
  LUT5 #(
    .INIT(32'h90090000)) 
    parity_check_sampled_i_2
       (.I0(stop_bit_2_check_sampled_reg_1[3]),
        .I1(stop_bit_2_check_sampled_reg[3]),
        .I2(stop_bit_2_check_sampled_reg_1[2]),
        .I3(stop_bit_2_check_sampled_reg[2]),
        .I4(parity_check_sampled_i_3_n_0),
        .O(receive_data_fi__6));
  LUT4 #(
    .INIT(16'h9009)) 
    parity_check_sampled_i_3
       (.I0(stop_bit_2_check_sampled_reg[0]),
        .I1(stop_bit_2_check_sampled_reg_1[0]),
        .I2(stop_bit_2_check_sampled_reg[1]),
        .I3(stop_bit_2_check_sampled_reg_1[1]),
        .O(parity_check_sampled_i_3_n_0));
  LUT4 #(
    .INIT(16'h0400)) 
    \shift_regs[7]_i_1 
       (.I0(Q),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(clk_1x__3),
        .O(E));
  LUT6 #(
    .INIT(64'h0480804040080804)) 
    stop_bit_1_check_sampled_i_1
       (.I0(stop_bit_2_check_sampled_reg[2]),
        .I1(stop_bit_1_check_sampled_i_2_n_0),
        .I2(stop_bit_2_check_sampled_reg[3]),
        .I3(stop_bit_1_check_sampled_reg),
        .I4(stop_bit_2_check_sampled_reg_1[2]),
        .I5(stop_bit_2_check_sampled_reg_1[3]),
        .O(stop_bit_1_check));
  LUT6 #(
    .INIT(64'h6108086100000000)) 
    stop_bit_1_check_sampled_i_2
       (.I0(\FSM_sequential_current_state_reg[0]_2 ),
        .I1(stop_bit_2_check_sampled_reg_1[0]),
        .I2(stop_bit_2_check_sampled_reg[0]),
        .I3(stop_bit_2_check_sampled_reg_1[1]),
        .I4(stop_bit_2_check_sampled_reg[1]),
        .I5(p_4_in),
        .O(stop_bit_1_check_sampled_i_2_n_0));
  LUT6 #(
    .INIT(64'h0080802020080802)) 
    stop_bit_2_check_sampled_i_1
       (.I0(stop_bit_2_check_sampled_i_2_n_0),
        .I1(stop_bit_2_check_sampled_reg[2]),
        .I2(stop_bit_2_check_sampled_reg[3]),
        .I3(stop_bit_2_check_sampled_reg_0),
        .I4(stop_bit_2_check_sampled_reg_1[2]),
        .I5(stop_bit_2_check_sampled_reg_1[3]),
        .O(stop_bit_2_check));
  LUT6 #(
    .INIT(64'h4281142800000000)) 
    stop_bit_2_check_sampled_i_2
       (.I0(stop_bit_2_check_sampled_reg_1[1]),
        .I1(stop_bit_2_check_sampled_reg_1[0]),
        .I2(\FSM_sequential_current_state_reg[0]_2 ),
        .I3(stop_bit_2_check_sampled_reg[1]),
        .I4(stop_bit_2_check_sampled_reg[0]),
        .I5(p_4_in),
        .O(stop_bit_2_check_sampled_i_2_n_0));
  LUT5 #(
    .INIT(32'h00008000)) 
    \wr_ptr[3]_i_2 
       (.I0(mem_reg_0_15_6_7__0[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(Q),
        .I4(fifo_rx_full_o),
        .O(\fcr_d_reg[0] ));
endmodule

module receiver_fifo
   (\lsr_reg[6] ,
    fifo_rx_full_o,
    fifo_rx_pop_ready,
    fifo_rx_empty,
    fifo_rx_triggered,
    D,
    \rd_ptr_reg[0]_0 ,
    clk_IBUF_BUFG,
    Q,
    \data_o_reg[1] ,
    E,
    rst_n_IBUF,
    \lsr_reg[6]_0 ,
    \lsr_reg[6]_1 ,
    \lsr_reg[6]_2 ,
    lsr6_reset,
    p_38_in,
    fifo_rx_pop,
    rts_no_i_2);
  output \lsr_reg[6] ;
  output fifo_rx_full_o;
  output fifo_rx_pop_ready;
  output fifo_rx_empty;
  output fifo_rx_triggered;
  output [7:0]D;
  input \rd_ptr_reg[0]_0 ;
  input clk_IBUF_BUFG;
  input [7:0]Q;
  input \data_o_reg[1] ;
  input [0:0]E;
  input rst_n_IBUF;
  input \lsr_reg[6]_0 ;
  input \lsr_reg[6]_1 ;
  input [0:0]\lsr_reg[6]_2 ;
  input lsr6_reset;
  input p_38_in;
  input fifo_rx_pop;
  input [2:0]rts_no_i_2;

  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire clk_IBUF_BUFG;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[1]_i_1__0_n_0 ;
  wire \count[2]_i_1__0_n_0 ;
  wire \count[3]_i_1__0_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[4]_i_2__0_n_0 ;
  wire [4:0]count_reg;
  wire \data_o_reg[1] ;
  wire fifo_rx_empty;
  wire fifo_rx_full_o;
  wire [7:0]fifo_rx_o;
  wire fifo_rx_pop;
  wire fifo_rx_pop_ready;
  wire fifo_rx_triggered;
  wire lsr6_reset;
  wire \lsr_reg[6] ;
  wire \lsr_reg[6]_0 ;
  wire \lsr_reg[6]_1 ;
  wire [0:0]\lsr_reg[6]_2 ;
  wire [3:0]p_0_in__1;
  wire p_38_in;
  wire [3:0]rd_ptr;
  wire rd_ptr0;
  wire \rd_ptr[0]_i_1__0_n_0 ;
  wire \rd_ptr[1]_i_1__0_n_0 ;
  wire \rd_ptr[2]_i_2__0_n_0 ;
  wire \rd_ptr[3]_i_1__0_n_0 ;
  wire \rd_ptr_reg[0]_0 ;
  wire rst_n_IBUF;
  wire [2:0]rts_no_i_2;
  wire rts_no_i_5_n_0;
  wire \wr_ptr_reg_n_0_[0] ;
  wire \wr_ptr_reg_n_0_[1] ;
  wire \wr_ptr_reg_n_0_[2] ;
  wire \wr_ptr_reg_n_0_[3] ;
  wire [1:0]NLW_mem_reg_0_15_0_5_DOD_UNCONNECTED;
  wire NLW_mem_reg_0_15_6_7_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_6_7__0_SPO_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(count_reg[0]),
        .O(\count[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA55555554AAAA)) 
    \count[1]_i_1__0 
       (.I0(count_reg[0]),
        .I1(count_reg[2]),
        .I2(count_reg[4]),
        .I3(count_reg[3]),
        .I4(fifo_rx_pop),
        .I5(count_reg[1]),
        .O(\count[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAFF5500FF5500A8)) 
    \count[2]_i_1__0 
       (.I0(fifo_rx_pop),
        .I1(count_reg[3]),
        .I2(count_reg[4]),
        .I3(count_reg[0]),
        .I4(count_reg[2]),
        .I5(count_reg[1]),
        .O(\count[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hDDFF2200FFBB0040)) 
    \count[3]_i_1__0 
       (.I0(count_reg[1]),
        .I1(fifo_rx_pop),
        .I2(count_reg[4]),
        .I3(count_reg[0]),
        .I4(count_reg[3]),
        .I5(count_reg[2]),
        .O(\count[3]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count[4]_i_1 
       (.I0(rd_ptr0),
        .I1(E),
        .O(\count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFF2000FFFB0000)) 
    \count[4]_i_2__0 
       (.I0(count_reg[1]),
        .I1(fifo_rx_pop),
        .I2(count_reg[2]),
        .I3(count_reg[0]),
        .I4(count_reg[4]),
        .I5(count_reg[3]),
        .O(\count[4]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\count[4]_i_1_n_0 ),
        .D(\count[0]_i_1__0_n_0 ),
        .Q(count_reg[0]),
        .R(\rd_ptr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\count[4]_i_1_n_0 ),
        .D(\count[1]_i_1__0_n_0 ),
        .Q(count_reg[1]),
        .R(\rd_ptr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\count[4]_i_1_n_0 ),
        .D(\count[2]_i_1__0_n_0 ),
        .Q(count_reg[2]),
        .R(\rd_ptr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\count[4]_i_1_n_0 ),
        .D(\count[3]_i_1__0_n_0 ),
        .Q(count_reg[3]),
        .R(\rd_ptr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\count[4]_i_1_n_0 ),
        .D(\count[4]_i_2__0_n_0 ),
        .Q(count_reg[4]),
        .R(\rd_ptr_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o[0]_i_1 
       (.I0(fifo_rx_o[0]),
        .I1(rts_no_i_2[0]),
        .I2(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o[1]_i_1 
       (.I0(fifo_rx_o[1]),
        .I1(rts_no_i_2[0]),
        .I2(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o[2]_i_1 
       (.I0(fifo_rx_o[2]),
        .I1(rts_no_i_2[0]),
        .I2(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o[3]_i_1 
       (.I0(fifo_rx_o[3]),
        .I1(rts_no_i_2[0]),
        .I2(Q[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o[4]_i_1 
       (.I0(fifo_rx_o[4]),
        .I1(rts_no_i_2[0]),
        .I2(Q[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o[5]_i_1 
       (.I0(fifo_rx_o[5]),
        .I1(rts_no_i_2[0]),
        .I2(Q[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o[6]_i_1 
       (.I0(fifo_rx_o[6]),
        .I1(rts_no_i_2[0]),
        .I2(Q[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o[7]_i_1 
       (.I0(fifo_rx_o[7]),
        .I1(rts_no_i_2[0]),
        .I2(Q[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h00000001)) 
    data_valid_d_i_3
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .I3(count_reg[4]),
        .I4(count_reg[3]),
        .O(fifo_rx_empty));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    fifo_rx_pop_i_1
       (.I0(p_38_in),
        .I1(count_reg[3]),
        .I2(count_reg[4]),
        .I3(count_reg[2]),
        .I4(count_reg[1]),
        .I5(count_reg[0]),
        .O(fifo_rx_pop_ready));
  LUT6 #(
    .INIT(64'h00000000AAAAA888)) 
    \lsr[6]_i_1 
       (.I0(rst_n_IBUF),
        .I1(\lsr_reg[6]_0 ),
        .I2(fifo_rx_full_o),
        .I3(\lsr_reg[6]_1 ),
        .I4(\lsr_reg[6]_2 ),
        .I5(lsr6_reset),
        .O(\lsr_reg[6] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "uart_rx_top_inst/fifo_rx_inst/mem_reg_0_15_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    mem_reg_0_15_0_5
       (.ADDRA({1'b0,rd_ptr}),
        .ADDRB({1'b0,rd_ptr}),
        .ADDRC({1'b0,rd_ptr}),
        .ADDRD({1'b0,\wr_ptr_reg_n_0_[3] ,\wr_ptr_reg_n_0_[2] ,\wr_ptr_reg_n_0_[1] ,\wr_ptr_reg_n_0_[0] }),
        .DIA(Q[1:0]),
        .DIB(Q[3:2]),
        .DIC(Q[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(fifo_rx_o[1:0]),
        .DOB(fifo_rx_o[3:2]),
        .DOC(fifo_rx_o[5:4]),
        .DOD(NLW_mem_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(\data_o_reg[1] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "uart_rx_top_inst/fifo_rx_inst/mem_reg_0_15_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_6_7
       (.A0(\wr_ptr_reg_n_0_[0] ),
        .A1(\wr_ptr_reg_n_0_[1] ),
        .A2(\wr_ptr_reg_n_0_[2] ),
        .A3(\wr_ptr_reg_n_0_[3] ),
        .A4(1'b0),
        .D(Q[6]),
        .DPO(fifo_rx_o[6]),
        .DPRA0(rd_ptr[0]),
        .DPRA1(rd_ptr[1]),
        .DPRA2(rd_ptr[2]),
        .DPRA3(rd_ptr[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_6_7_SPO_UNCONNECTED),
        .WCLK(clk_IBUF_BUFG),
        .WE(\data_o_reg[1] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "uart_rx_top_inst/fifo_rx_inst/mem_reg_0_15_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_6_7__0
       (.A0(\wr_ptr_reg_n_0_[0] ),
        .A1(\wr_ptr_reg_n_0_[1] ),
        .A2(\wr_ptr_reg_n_0_[2] ),
        .A3(\wr_ptr_reg_n_0_[3] ),
        .A4(1'b0),
        .D(Q[7]),
        .DPO(fifo_rx_o[7]),
        .DPRA0(rd_ptr[0]),
        .DPRA1(rd_ptr[1]),
        .DPRA2(rd_ptr[2]),
        .DPRA3(rd_ptr[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_6_7__0_SPO_UNCONNECTED),
        .WCLK(clk_IBUF_BUFG),
        .WE(\data_o_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr[0]_i_1__0 
       (.I0(rd_ptr[0]),
        .O(\rd_ptr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr[1]_i_1__0 
       (.I0(rd_ptr[0]),
        .I1(rd_ptr[1]),
        .O(\rd_ptr[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \rd_ptr[2]_i_1__0 
       (.I0(fifo_rx_pop),
        .I1(count_reg[3]),
        .I2(count_reg[4]),
        .I3(count_reg[2]),
        .I4(count_reg[1]),
        .I5(count_reg[0]),
        .O(rd_ptr0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_ptr[2]_i_2__0 
       (.I0(rd_ptr[0]),
        .I1(rd_ptr[1]),
        .I2(rd_ptr[2]),
        .O(\rd_ptr[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rd_ptr[3]_i_1__0 
       (.I0(rd_ptr[1]),
        .I1(rd_ptr[0]),
        .I2(rd_ptr[2]),
        .I3(rd_ptr[3]),
        .O(\rd_ptr[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(rd_ptr0),
        .D(\rd_ptr[0]_i_1__0_n_0 ),
        .Q(rd_ptr[0]),
        .R(\rd_ptr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(rd_ptr0),
        .D(\rd_ptr[1]_i_1__0_n_0 ),
        .Q(rd_ptr[1]),
        .R(\rd_ptr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(rd_ptr0),
        .D(\rd_ptr[2]_i_2__0_n_0 ),
        .Q(rd_ptr[2]),
        .R(\rd_ptr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(rd_ptr0),
        .D(\rd_ptr[3]_i_1__0_n_0 ),
        .Q(rd_ptr[3]),
        .R(\rd_ptr_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hECFE)) 
    rts_no_i_4
       (.I0(rts_no_i_5_n_0),
        .I1(count_reg[4]),
        .I2(count_reg[3]),
        .I3(rts_no_i_2[2]),
        .O(fifo_rx_triggered));
  LUT5 #(
    .INIT(32'h8FAF8FAE)) 
    rts_no_i_5
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(rts_no_i_2[1]),
        .I3(rts_no_i_2[2]),
        .I4(count_reg[0]),
        .O(rts_no_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wr_ptr[0]_i_1 
       (.I0(\wr_ptr_reg_n_0_[0] ),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr[1]_i_1 
       (.I0(\wr_ptr_reg_n_0_[0] ),
        .I1(\wr_ptr_reg_n_0_[1] ),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_ptr[2]_i_1 
       (.I0(\wr_ptr_reg_n_0_[0] ),
        .I1(\wr_ptr_reg_n_0_[1] ),
        .I2(\wr_ptr_reg_n_0_[2] ),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_ptr[3]_i_3__0 
       (.I0(\wr_ptr_reg_n_0_[1] ),
        .I1(\wr_ptr_reg_n_0_[0] ),
        .I2(\wr_ptr_reg_n_0_[2] ),
        .I3(\wr_ptr_reg_n_0_[3] ),
        .O(p_0_in__1[3]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \wr_ptr[3]_i_4 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .O(fifo_rx_full_o));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__1[0]),
        .Q(\wr_ptr_reg_n_0_[0] ),
        .R(\rd_ptr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__1[1]),
        .Q(\wr_ptr_reg_n_0_[1] ),
        .R(\rd_ptr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__1[2]),
        .Q(\wr_ptr_reg_n_0_[2] ),
        .R(\rd_ptr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__1[3]),
        .Q(\wr_ptr_reg_n_0_[3] ),
        .R(\rd_ptr_reg[0]_0 ));
endmodule

module shift_register
   (\lcr_d_reg[3] ,
    D,
    Q,
    rst_n_IBUF,
    parity_err_o_reg,
    parity_check_sampled,
    parity_bit_sampled,
    SR,
    E,
    tx_sync,
    clk_IBUF_BUFG);
  output \lcr_d_reg[3] ;
  output [6:0]D;
  output [0:0]Q;
  input rst_n_IBUF;
  input [3:0]parity_err_o_reg;
  input parity_check_sampled;
  input parity_bit_sampled;
  input [0:0]SR;
  input [0:0]E;
  input tx_sync;
  input clk_IBUF_BUFG;

  wire [6:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire expected_parity_bit__0;
  wire \lcr_d_reg[3] ;
  wire parity_bit_sampled;
  wire parity_check_sampled;
  wire parity_err_o_i_3_n_0;
  wire [3:0]parity_err_o_reg;
  wire rst_n_IBUF;
  wire [6:0]shift_regs;
  wire tx_sync;

  LUT6 #(
    .INIT(64'hFFF0CCAA00F0CCAA)) 
    \data_o[0]_i_1__0 
       (.I0(shift_regs[3]),
        .I1(shift_regs[1]),
        .I2(shift_regs[2]),
        .I3(parity_err_o_reg[1]),
        .I4(parity_err_o_reg[0]),
        .I5(shift_regs[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[1]_i_1__0 
       (.I0(shift_regs[1]),
        .I1(shift_regs[3]),
        .I2(parity_err_o_reg[0]),
        .I3(shift_regs[2]),
        .I4(parity_err_o_reg[1]),
        .I5(shift_regs[4]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[2]_i_1__0 
       (.I0(shift_regs[2]),
        .I1(shift_regs[4]),
        .I2(parity_err_o_reg[0]),
        .I3(shift_regs[3]),
        .I4(parity_err_o_reg[1]),
        .I5(shift_regs[5]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[3]_i_1__0 
       (.I0(shift_regs[3]),
        .I1(shift_regs[5]),
        .I2(parity_err_o_reg[0]),
        .I3(shift_regs[4]),
        .I4(parity_err_o_reg[1]),
        .I5(shift_regs[6]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[4]_i_1__0 
       (.I0(shift_regs[4]),
        .I1(shift_regs[6]),
        .I2(parity_err_o_reg[0]),
        .I3(shift_regs[5]),
        .I4(parity_err_o_reg[1]),
        .I5(Q),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hAACCF000)) 
    \data_o[5]_i_1__0 
       (.I0(shift_regs[5]),
        .I1(Q),
        .I2(shift_regs[6]),
        .I3(parity_err_o_reg[1]),
        .I4(parity_err_o_reg[0]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \data_o[6]_i_1__0 
       (.I0(shift_regs[6]),
        .I1(Q),
        .I2(parity_err_o_reg[1]),
        .I3(parity_err_o_reg[0]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h40008000)) 
    parity_err_o_i_1
       (.I0(expected_parity_bit__0),
        .I1(rst_n_IBUF),
        .I2(parity_err_o_reg[2]),
        .I3(parity_check_sampled),
        .I4(parity_bit_sampled),
        .O(\lcr_d_reg[3] ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    parity_err_o_i_2
       (.I0(parity_err_o_reg[3]),
        .I1(D[2]),
        .I2(D[3]),
        .I3(D[0]),
        .I4(D[1]),
        .I5(parity_err_o_i_3_n_0),
        .O(expected_parity_bit__0));
  LUT6 #(
    .INIT(64'h6C933F3F936CC0C0)) 
    parity_err_o_i_3
       (.I0(shift_regs[4]),
        .I1(shift_regs[6]),
        .I2(parity_err_o_reg[0]),
        .I3(shift_regs[5]),
        .I4(parity_err_o_reg[1]),
        .I5(Q),
        .O(parity_err_o_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_regs_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(shift_regs[1]),
        .Q(shift_regs[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shift_regs_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(shift_regs[2]),
        .Q(shift_regs[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shift_regs_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(shift_regs[3]),
        .Q(shift_regs[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shift_regs_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(shift_regs[4]),
        .Q(shift_regs[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shift_regs_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(shift_regs[5]),
        .Q(shift_regs[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shift_regs_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(shift_regs[6]),
        .Q(shift_regs[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shift_regs_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q),
        .Q(shift_regs[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shift_regs_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(tx_sync),
        .Q(Q),
        .R(SR));
endmodule

module synchronizer
   (sync_reg_0,
    cts_n__0,
    SR,
    cts_n_IBUF,
    clk_IBUF_BUFG,
    \FSM_sequential_current_state[0]_i_2__0 );
  output sync_reg_0;
  output cts_n__0;
  input [0:0]SR;
  input cts_n_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_current_state[0]_i_2__0 ;

  wire [0:0]\FSM_sequential_current_state[0]_i_2__0 ;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire cts_n_IBUF;
  wire cts_n__0;
  wire d1;
  wire sync_reg_0;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_current_state[0]_i_4__0 
       (.I0(sync_reg_0),
        .I1(\FSM_sequential_current_state[0]_i_2__0 ),
        .O(cts_n__0));
  FDRE #(
    .INIT(1'b0)) 
    d1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cts_n_IBUF),
        .Q(d1),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sync_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d1),
        .Q(sync_reg_0),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "synchronizer" *) 
module synchronizer_7
   (tx_sync,
    d1_reg_0,
    parity_bit,
    \ocr_d_reg[2] ,
    stop_bit_err_0,
    SR,
    rx_IBUF,
    clk_IBUF_BUFG,
    E,
    d1,
    ocr,
    \FSM_sequential_current_state_reg[0] ,
    Q,
    parity_check_sampled,
    stop_bit_2_check_sampled,
    stop_bit_err_o_reg,
    stop_bit_1_check_sampled);
  output tx_sync;
  output d1_reg_0;
  output parity_bit;
  output \ocr_d_reg[2] ;
  output stop_bit_err_0;
  input [0:0]SR;
  input rx_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]E;
  input d1;
  input [0:0]ocr;
  input \FSM_sequential_current_state_reg[0] ;
  input [0:0]Q;
  input parity_check_sampled;
  input stop_bit_2_check_sampled;
  input [0:0]stop_bit_err_o_reg;
  input stop_bit_1_check_sampled;

  wire [0:0]E;
  wire \FSM_sequential_current_state_reg[0] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire d1;
  wire d1_reg_0;
  wire d1_reg_n_0;
  wire [0:0]ocr;
  wire \ocr_d_reg[2] ;
  wire parity_bit;
  wire parity_check_sampled;
  wire rx_IBUF;
  wire stop_bit_1_check_sampled;
  wire stop_bit_2_check_sampled;
  wire stop_bit_err_0;
  wire [0:0]stop_bit_err_o_reg;
  wire tx_sync;

  LUT6 #(
    .INIT(64'hFF000C00AAAAAAAA)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(E),
        .I1(d1),
        .I2(tx_sync),
        .I3(ocr),
        .I4(\FSM_sequential_current_state_reg[0] ),
        .I5(Q),
        .O(d1_reg_0));
  LUT5 #(
    .INIT(32'h00FF0020)) 
    \FSM_sequential_current_state[0]_i_5__0 
       (.I0(ocr),
        .I1(tx_sync),
        .I2(d1),
        .I3(Q),
        .I4(\FSM_sequential_current_state_reg[0] ),
        .O(\ocr_d_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    d1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(rx_IBUF),
        .Q(d1_reg_n_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    parity_bit_sampled_i_1
       (.I0(parity_check_sampled),
        .I1(tx_sync),
        .O(parity_bit));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0F08)) 
    stop_bit_err_o_i_1
       (.I0(stop_bit_2_check_sampled),
        .I1(stop_bit_err_o_reg),
        .I2(tx_sync),
        .I3(stop_bit_1_check_sampled),
        .O(stop_bit_err_0));
  FDRE #(
    .INIT(1'b0)) 
    sync_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d1_reg_n_0),
        .Q(tx_sync),
        .R(SR));
endmodule

module transmitter_controller
   (\FSM_sequential_current_state_reg[2]_0 ,
    rd_ptr0,
    \ocr_d_reg[0] ,
    \FSM_sequential_current_state_reg[2]_1 ,
    lsr0_set,
    \FSM_sequential_current_state_reg[0]_0 ,
    SR,
    start_tx,
    clk_IBUF_BUFG,
    E,
    Q,
    fifo_tx_empty,
    ocr,
    tx_busy_pulse,
    rst_n_IBUF,
    tx_busy,
    cts_sync,
    \FSM_sequential_current_state_reg[1]_0 ,
    tick_d,
    baud_o,
    cts_n__0,
    \FSM_sequential_current_state_reg[0]_1 ,
    trans_data_fi_sampled,
    trans_stop_fi_sampled,
    p_2_in);
  output [0:0]\FSM_sequential_current_state_reg[2]_0 ;
  output rd_ptr0;
  output \ocr_d_reg[0] ;
  output [0:0]\FSM_sequential_current_state_reg[2]_1 ;
  output lsr0_set;
  output [0:0]\FSM_sequential_current_state_reg[0]_0 ;
  input [0:0]SR;
  input start_tx;
  input clk_IBUF_BUFG;
  input [0:0]E;
  input [0:0]Q;
  input fifo_tx_empty;
  input [1:0]ocr;
  input tx_busy_pulse;
  input rst_n_IBUF;
  input tx_busy;
  input cts_sync;
  input [0:0]\FSM_sequential_current_state_reg[1]_0 ;
  input tick_d;
  input baud_o;
  input cts_n__0;
  input [0:0]\FSM_sequential_current_state_reg[0]_1 ;
  input trans_data_fi_sampled;
  input trans_stop_fi_sampled;
  input p_2_in;

  wire [0:0]E;
  wire \FSM_sequential_current_state[0]_i_2__0_n_0 ;
  wire \FSM_sequential_current_state[0]_i_3__0_n_0 ;
  wire \FSM_sequential_current_state[0]_i_5_n_0 ;
  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire \FSM_sequential_current_state[1]_i_3__0_n_0 ;
  wire [0:0]\FSM_sequential_current_state_reg[0]_0 ;
  wire [0:0]\FSM_sequential_current_state_reg[0]_1 ;
  wire [0:0]\FSM_sequential_current_state_reg[1]_0 ;
  wire [0:0]\FSM_sequential_current_state_reg[2]_0 ;
  wire [0:0]\FSM_sequential_current_state_reg[2]_1 ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire baud_o;
  wire clk_IBUF_BUFG;
  wire cts_n__0;
  wire cts_sync;
  wire [2:0]current_state;
  wire fifo_tx_empty;
  wire lsr0_set;
  wire negedge_start;
  wire [2:0]next_state;
  wire [1:0]ocr;
  wire \ocr_d_reg[0] ;
  wire p_2_in;
  wire rd_ptr0;
  wire rst_n_IBUF;
  wire start_en_d;
  wire start_en_d1;
  wire start_tx;
  wire start_tx_d;
  wire tick_d;
  wire trans_data_fi_sampled;
  wire trans_stop_fi_sampled;
  wire tx_busy;
  wire tx_busy_i_2_n_0;
  wire tx_busy_pulse;

  LUT6 #(
    .INIT(64'h33FA33F0F0FF0000)) 
    \FSM_sequential_current_state[0]_i_2__0 
       (.I0(start_en_d1),
        .I1(tick_d),
        .I2(cts_n__0),
        .I3(current_state[0]),
        .I4(ocr[0]),
        .I5(current_state[1]),
        .O(\FSM_sequential_current_state[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF40EA000040EA)) 
    \FSM_sequential_current_state[0]_i_3__0 
       (.I0(current_state[0]),
        .I1(\FSM_sequential_current_state_reg[0]_1 ),
        .I2(trans_data_fi_sampled),
        .I3(tick_d),
        .I4(current_state[1]),
        .I5(\FSM_sequential_current_state[0]_i_5_n_0 ),
        .O(\FSM_sequential_current_state[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFCCC0000AAAAAAAA)) 
    \FSM_sequential_current_state[0]_i_5 
       (.I0(trans_stop_fi_sampled),
        .I1(start_en_d1),
        .I2(cts_sync),
        .I3(\FSM_sequential_current_state_reg[1]_0 ),
        .I4(ocr[0]),
        .I5(current_state[0]),
        .O(\FSM_sequential_current_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00FF777770700000)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(cts_sync),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(ocr[0]),
        .I3(tick_d),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF000F0FF44FF44)) 
    \FSM_sequential_current_state[1]_i_3__0 
       (.I0(\FSM_sequential_current_state_reg[0]_1 ),
        .I1(trans_data_fi_sampled),
        .I2(tick_d),
        .I3(current_state[1]),
        .I4(p_2_in),
        .I5(current_state[0]),
        .O(\FSM_sequential_current_state[1]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h7780)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(tick_d),
        .I3(current_state[2]),
        .O(next_state[2]));
  (* FSM_ENCODED_STATES = "TRANS_DATA:100,TRANS_PARITY:101,TRANS_STOP:110,FINISH:111,TRANS_START:011,WAIT:010,IDLE:000,CTS:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(current_state[0]),
        .R(SR));
  MUXF7 \FSM_sequential_current_state_reg[0]_i_1 
       (.I0(\FSM_sequential_current_state[0]_i_2__0_n_0 ),
        .I1(\FSM_sequential_current_state[0]_i_3__0_n_0 ),
        .O(next_state[0]),
        .S(current_state[2]));
  (* FSM_ENCODED_STATES = "TRANS_DATA:100,TRANS_PARITY:101,TRANS_STOP:110,FINISH:111,TRANS_START:011,WAIT:010,IDLE:000,CTS:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(SR));
  MUXF7 \FSM_sequential_current_state_reg[1]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_current_state[1]_i_3__0_n_0 ),
        .O(next_state[1]),
        .S(current_state[2]));
  (* FSM_ENCODED_STATES = "TRANS_DATA:100,TRANS_PARITY:101,TRANS_STOP:110,FINISH:111,TRANS_START:011,WAIT:010,IDLE:000,CTS:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[2]),
        .Q(current_state[2]),
        .R(SR));
  LUT4 #(
    .INIT(16'h6A00)) 
    Q_i_1
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(baud_o),
        .O(\FSM_sequential_current_state_reg[2]_1 ));
  LUT4 #(
    .INIT(16'h87FF)) 
    \cnt_data_trans[3]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(rst_n_IBUF),
        .O(\FSM_sequential_current_state_reg[0]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count[4]_i_2 
       (.I0(rd_ptr0),
        .I1(E),
        .O(\FSM_sequential_current_state_reg[2]_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \lsr[0]_i_2 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(lsr0_set));
  LUT5 #(
    .INIT(32'h00008000)) 
    \rd_ptr[2]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(Q),
        .I4(fifo_tx_empty),
        .O(rd_ptr0));
  FDRE #(
    .INIT(1'b0)) 
    start_en_d1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(start_en_d),
        .Q(start_en_d1),
        .R(SR));
  LUT5 #(
    .INIT(32'h20222222)) 
    start_en_d_i_1
       (.I0(start_tx_d),
        .I1(ocr[1]),
        .I2(fifo_tx_empty),
        .I3(Q),
        .I4(tx_busy_pulse),
        .O(negedge_start));
  FDRE #(
    .INIT(1'b0)) 
    start_en_d_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(negedge_start),
        .Q(start_en_d),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    start_tx_d_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(start_tx),
        .Q(start_tx_d),
        .R(SR));
  LUT6 #(
    .INIT(64'hAA800000AA80AA80)) 
    tx_busy_i_1
       (.I0(rst_n_IBUF),
        .I1(start_tx),
        .I2(ocr[0]),
        .I3(tx_busy),
        .I4(tx_busy_i_2_n_0),
        .I5(current_state[2]),
        .O(\ocr_d_reg[0] ));
  LUT2 #(
    .INIT(4'h7)) 
    tx_busy_i_2
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .O(tx_busy_i_2_n_0));
endmodule

module transmitter_fifo
   (fifo_tx_o,
    start_tx,
    \count_reg[0]_0 ,
    E,
    clk_IBUF_BUFG,
    \sampled_data_reg[7] ,
    \wr_ptr_reg[0]_0 ,
    rd_ptr0,
    tx_busy_pulse,
    Q,
    ocr,
    write_data_d1,
    write_data_d2,
    rst_n_IBUF,
    \count_reg[0]_1 );
  output [7:0]fifo_tx_o;
  output start_tx;
  output \count_reg[0]_0 ;
  output [0:0]E;
  input clk_IBUF_BUFG;
  input [7:0]\sampled_data_reg[7] ;
  input [0:0]\wr_ptr_reg[0]_0 ;
  input rd_ptr0;
  input tx_busy_pulse;
  input [1:0]Q;
  input [0:0]ocr;
  input write_data_d1;
  input write_data_d2;
  input rst_n_IBUF;
  input [0:0]\count_reg[0]_1 ;

  wire [0:0]E;
  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_3_n_0 ;
  wire [4:0]count_reg;
  wire \count_reg[0]_0 ;
  wire [0:0]\count_reg[0]_1 ;
  wire [7:0]fifo_tx_o;
  wire mem_reg_0_15_0_5_i_1_n_0;
  wire [0:0]ocr;
  wire [3:0]p_0_in__2;
  wire [3:0]rd_ptr;
  wire rd_ptr0;
  wire \rd_ptr[0]_i_1_n_0 ;
  wire \rd_ptr[1]_i_1_n_0 ;
  wire \rd_ptr[2]_i_2_n_0 ;
  wire \rd_ptr[3]_i_1_n_0 ;
  wire rst_n_IBUF;
  wire [7:0]\sampled_data_reg[7] ;
  wire start_tx;
  wire tx_busy_pulse;
  wire \wr_ptr[3]_i_3_n_0 ;
  wire [3:0]wr_ptr_reg;
  wire [0:0]\wr_ptr_reg[0]_0 ;
  wire write_data_d1;
  wire write_data_d2;
  wire [1:0]NLW_mem_reg_0_15_0_5_DOD_UNCONNECTED;
  wire NLW_mem_reg_0_15_6_7_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_6_7__0_SPO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(rd_ptr0),
        .I2(count_reg[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hB4D2)) 
    \count[2]_i_1 
       (.I0(rd_ptr0),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(count_reg[1]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hDF20FB04)) 
    \count[3]_i_1 
       (.I0(count_reg[1]),
        .I1(rd_ptr0),
        .I2(count_reg[0]),
        .I3(count_reg[3]),
        .I4(count_reg[2]),
        .O(\count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFF2000FFFB0004)) 
    \count[4]_i_3 
       (.I0(count_reg[1]),
        .I1(rd_ptr0),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .I4(count_reg[4]),
        .I5(count_reg[3]),
        .O(\count[4]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\count_reg[0]_1 ),
        .D(\count[0]_i_1_n_0 ),
        .Q(count_reg[0]),
        .R(\wr_ptr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\count_reg[0]_1 ),
        .D(\count[1]_i_1_n_0 ),
        .Q(count_reg[1]),
        .R(\wr_ptr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\count_reg[0]_1 ),
        .D(\count[2]_i_1_n_0 ),
        .Q(count_reg[2]),
        .R(\wr_ptr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\count_reg[0]_1 ),
        .D(\count[3]_i_1_n_0 ),
        .Q(count_reg[3]),
        .R(\wr_ptr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\count_reg[0]_1 ),
        .D(\count[4]_i_3_n_0 ),
        .Q(count_reg[4]),
        .R(\wr_ptr_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "uart_tx_top_inst/fifo_tx_inst/mem_reg_0_15_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    mem_reg_0_15_0_5
       (.ADDRA({1'b0,rd_ptr}),
        .ADDRB({1'b0,rd_ptr}),
        .ADDRC({1'b0,rd_ptr}),
        .ADDRD({1'b0,wr_ptr_reg}),
        .DIA(\sampled_data_reg[7] [1:0]),
        .DIB(\sampled_data_reg[7] [3:2]),
        .DIC(\sampled_data_reg[7] [5:4]),
        .DID({1'b0,1'b0}),
        .DOA(fifo_tx_o[1:0]),
        .DOB(fifo_tx_o[3:2]),
        .DOC(fifo_tx_o[5:4]),
        .DOD(NLW_mem_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_15_0_5_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_0_15_0_5_i_1
       (.I0(E),
        .I1(rst_n_IBUF),
        .I2(Q[1]),
        .O(mem_reg_0_15_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "uart_tx_top_inst/fifo_tx_inst/mem_reg_0_15_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_6_7
       (.A0(wr_ptr_reg[0]),
        .A1(wr_ptr_reg[1]),
        .A2(wr_ptr_reg[2]),
        .A3(wr_ptr_reg[3]),
        .A4(1'b0),
        .D(\sampled_data_reg[7] [6]),
        .DPO(fifo_tx_o[6]),
        .DPRA0(rd_ptr[0]),
        .DPRA1(rd_ptr[1]),
        .DPRA2(rd_ptr[2]),
        .DPRA3(rd_ptr[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_6_7_SPO_UNCONNECTED),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_15_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "uart_tx_top_inst/fifo_tx_inst/mem_reg_0_15_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_6_7__0
       (.A0(wr_ptr_reg[0]),
        .A1(wr_ptr_reg[1]),
        .A2(wr_ptr_reg[2]),
        .A3(wr_ptr_reg[3]),
        .A4(1'b0),
        .D(\sampled_data_reg[7] [7]),
        .DPO(fifo_tx_o[7]),
        .DPRA0(rd_ptr[0]),
        .DPRA1(rd_ptr[1]),
        .DPRA2(rd_ptr[2]),
        .DPRA3(rd_ptr[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_6_7__0_SPO_UNCONNECTED),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_15_0_5_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr[0]_i_1 
       (.I0(rd_ptr[0]),
        .O(\rd_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr[1]_i_1 
       (.I0(rd_ptr[0]),
        .I1(rd_ptr[1]),
        .O(\rd_ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_ptr[2]_i_2 
       (.I0(rd_ptr[0]),
        .I1(rd_ptr[1]),
        .I2(rd_ptr[2]),
        .O(\rd_ptr[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rd_ptr[3]_i_1 
       (.I0(rd_ptr[1]),
        .I1(rd_ptr[0]),
        .I2(rd_ptr[2]),
        .I3(rd_ptr[3]),
        .O(\rd_ptr[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(rd_ptr0),
        .D(\rd_ptr[0]_i_1_n_0 ),
        .Q(rd_ptr[0]),
        .R(\wr_ptr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(rd_ptr0),
        .D(\rd_ptr[1]_i_1_n_0 ),
        .Q(rd_ptr[1]),
        .R(\wr_ptr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(rd_ptr0),
        .D(\rd_ptr[2]_i_2_n_0 ),
        .Q(rd_ptr[2]),
        .R(\wr_ptr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(rd_ptr0),
        .D(\rd_ptr[3]_i_1_n_0 ),
        .Q(rd_ptr[3]),
        .R(\wr_ptr_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    start_tx_d_i_1
       (.I0(tx_busy_pulse),
        .I1(Q[0]),
        .I2(\count_reg[0]_0 ),
        .I3(ocr),
        .O(start_tx));
  LUT5 #(
    .INIT(32'h00000001)) 
    start_tx_d_i_2
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .I3(count_reg[4]),
        .I4(count_reg[3]),
        .O(\count_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wr_ptr[0]_i_1__0 
       (.I0(wr_ptr_reg[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr[1]_i_1__0 
       (.I0(wr_ptr_reg[0]),
        .I1(wr_ptr_reg[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_ptr[2]_i_1__0 
       (.I0(wr_ptr_reg[0]),
        .I1(wr_ptr_reg[1]),
        .I2(wr_ptr_reg[2]),
        .O(p_0_in__2[2]));
  LUT6 #(
    .INIT(64'h4040004040404040)) 
    \wr_ptr[3]_i_1 
       (.I0(write_data_d1),
        .I1(write_data_d2),
        .I2(Q[0]),
        .I3(count_reg[4]),
        .I4(count_reg[3]),
        .I5(\wr_ptr[3]_i_3_n_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_ptr[3]_i_2__0 
       (.I0(wr_ptr_reg[1]),
        .I1(wr_ptr_reg[0]),
        .I2(wr_ptr_reg[2]),
        .I3(wr_ptr_reg[3]),
        .O(p_0_in__2[3]));
  LUT3 #(
    .INIT(8'h01)) 
    \wr_ptr[3]_i_3 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(\wr_ptr[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__2[0]),
        .Q(wr_ptr_reg[0]),
        .R(\wr_ptr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__2[1]),
        .Q(wr_ptr_reg[1]),
        .R(\wr_ptr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__2[2]),
        .Q(wr_ptr_reg[2]),
        .R(\wr_ptr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__2[3]),
        .Q(wr_ptr_reg[3]),
        .R(\wr_ptr_reg[0]_0 ));
endmodule

module uart_receiver
   (stop_bit_err,
    parity_err,
    E,
    \FSM_sequential_current_state_reg[0] ,
    data_valid,
    \shift_regs_reg[7] ,
    \fcr_d_reg[0] ,
    \fcr_d_reg[1] ,
    \data_o_reg[7]_0 ,
    SR,
    rx_IBUF,
    clk_IBUF_BUFG,
    parity_err_o_reg_0,
    \clk_div_reg[0]_0 ,
    \FSM_sequential_current_state_reg[0]_0 ,
    ocr,
    stop_bit_2_check_sampled_reg_0,
    Q,
    stop_bit_1_check_sampled_reg_0,
    rst_n_IBUF,
    mem_reg_0_15_6_7__0,
    fifo_rx_full_o,
    fifo_rx_pop_d,
    fifo_rx_pop,
    fifo_rx_empty,
    \total_data_size_sampled_reg[3]_0 ,
    D);
  output stop_bit_err;
  output parity_err;
  output [0:0]E;
  output \FSM_sequential_current_state_reg[0] ;
  output data_valid;
  output [0:0]\shift_regs_reg[7] ;
  output \fcr_d_reg[0] ;
  output \fcr_d_reg[1] ;
  output [7:0]\data_o_reg[7]_0 ;
  input [0:0]SR;
  input rx_IBUF;
  input clk_IBUF_BUFG;
  input [4:0]parity_err_o_reg_0;
  input [0:0]\clk_div_reg[0]_0 ;
  input \FSM_sequential_current_state_reg[0]_0 ;
  input [0:0]ocr;
  input stop_bit_2_check_sampled_reg_0;
  input [3:0]Q;
  input stop_bit_1_check_sampled_reg_0;
  input rst_n_IBUF;
  input [1:0]mem_reg_0_15_6_7__0;
  input fifo_rx_full_o;
  input fifo_rx_pop_d;
  input fifo_rx_pop;
  input fifo_rx_empty;
  input [3:0]\total_data_size_sampled_reg[3]_0 ;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire [3:0]clk_div_reg;
  wire [0:0]\clk_div_reg[0]_0 ;
  wire [3:0]count_data_reg;
  wire [0:0]current_state;
  wire d1;
  wire [6:0]data;
  wire [7:0]\data_o_reg[7]_0 ;
  wire data_valid;
  wire \fcr_d_reg[0] ;
  wire \fcr_d_reg[1] ;
  wire fifo_rx_empty;
  wire fifo_rx_full_o;
  wire fifo_rx_pop;
  wire fifo_rx_pop_d;
  wire [1:0]mem_reg_0_15_6_7__0;
  wire [0:0]ocr;
  wire [3:0]p_0_in__0;
  wire [3:0]p_0_in__4;
  wire p_4_in;
  wire parity_bit;
  wire parity_bit_sampled;
  wire parity_check;
  wire parity_check_sampled;
  wire parity_err;
  wire [4:0]parity_err_o_reg_0;
  wire receive_total_fi_i;
  wire receiver_controller_inst_n_6;
  wire rst_n_IBUF;
  wire rx_IBUF;
  wire shift_receive_en;
  wire shift_register_inst_n_0;
  wire [0:0]\shift_regs_reg[7] ;
  wire stop_bit_1_check;
  wire stop_bit_1_check_sampled;
  wire stop_bit_1_check_sampled_reg_0;
  wire stop_bit_2_check;
  wire stop_bit_2_check_sampled;
  wire stop_bit_2_check_sampled_reg_0;
  wire stop_bit_err;
  wire stop_bit_err_0;
  wire sync_n_1;
  wire sync_n_3;
  wire [3:0]total_data_size_sampled;
  wire [3:0]\total_data_size_sampled_reg[3]_0 ;
  wire tx_sync;

  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clk_div[0]_i_1 
       (.I0(clk_div_reg[0]),
        .O(p_0_in__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clk_div[1]_i_1 
       (.I0(clk_div_reg[0]),
        .I1(clk_div_reg[1]),
        .O(p_0_in__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clk_div[2]_i_1 
       (.I0(clk_div_reg[0]),
        .I1(clk_div_reg[1]),
        .I2(clk_div_reg[2]),
        .O(p_0_in__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_div[3]_i_1 
       (.I0(clk_div_reg[1]),
        .I1(clk_div_reg[0]),
        .I2(clk_div_reg[2]),
        .I3(clk_div_reg[3]),
        .O(p_0_in__4[3]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_div_reg[0]_0 ),
        .D(p_0_in__4[0]),
        .Q(clk_div_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_div_reg[0]_0 ),
        .D(p_0_in__4[1]),
        .Q(clk_div_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_div_reg[0]_0 ),
        .D(p_0_in__4[2]),
        .Q(clk_div_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_div_reg[0]_0 ),
        .D(p_0_in__4[3]),
        .Q(clk_div_reg[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_data[0]_i_1 
       (.I0(count_data_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_data[1]_i_1 
       (.I0(count_data_reg[0]),
        .I1(count_data_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_data[2]_i_1 
       (.I0(count_data_reg[0]),
        .I1(count_data_reg[1]),
        .I2(count_data_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_data[3]_i_3 
       (.I0(count_data_reg[1]),
        .I1(count_data_reg[0]),
        .I2(count_data_reg[2]),
        .I3(count_data_reg[3]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \count_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(p_4_in),
        .D(p_0_in__0[0]),
        .Q(count_data_reg[0]),
        .R(receiver_controller_inst_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \count_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(p_4_in),
        .D(p_0_in__0[1]),
        .Q(count_data_reg[1]),
        .R(receiver_controller_inst_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \count_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(p_4_in),
        .D(p_0_in__0[2]),
        .Q(count_data_reg[2]),
        .R(receiver_controller_inst_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \count_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(p_4_in),
        .D(p_0_in__0[3]),
        .Q(count_data_reg[3]),
        .R(receiver_controller_inst_n_6));
  FDRE #(
    .INIT(1'b0)) 
    d1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_sync),
        .Q(d1),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(receive_total_fi_i),
        .D(data[0]),
        .Q(\data_o_reg[7]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(receive_total_fi_i),
        .D(data[1]),
        .Q(\data_o_reg[7]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(receive_total_fi_i),
        .D(data[2]),
        .Q(\data_o_reg[7]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(receive_total_fi_i),
        .D(data[3]),
        .Q(\data_o_reg[7]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(receive_total_fi_i),
        .D(data[4]),
        .Q(\data_o_reg[7]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(receive_total_fi_i),
        .D(data[5]),
        .Q(\data_o_reg[7]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(receive_total_fi_i),
        .D(data[6]),
        .Q(\data_o_reg[7]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(receive_total_fi_i),
        .D(D),
        .Q(\data_o_reg[7]_0 [7]),
        .R(SR));
  LUT3 #(
    .INIT(8'h80)) 
    \lsr[5]_i_2 
       (.I0(mem_reg_0_15_6_7__0[0]),
        .I1(stop_bit_err),
        .I2(parity_err),
        .O(\fcr_d_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    parity_bit_sampled_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(parity_bit),
        .Q(parity_bit_sampled),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    parity_check_sampled_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(parity_check),
        .Q(parity_check_sampled),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    parity_err_o_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(shift_register_inst_n_0),
        .Q(parity_err),
        .R(1'b0));
  receiver_controller receiver_controller_inst
       (.E(shift_receive_en),
        .\FSM_sequential_current_state_reg[0]_0 (\FSM_sequential_current_state_reg[0] ),
        .\FSM_sequential_current_state_reg[0]_1 (sync_n_1),
        .\FSM_sequential_current_state_reg[0]_2 (parity_err_o_reg_0[3]),
        .\FSM_sequential_current_state_reg[0]_3 (sync_n_3),
        .\FSM_sequential_current_state_reg[0]_4 (\FSM_sequential_current_state_reg[0]_0 ),
        .\FSM_sequential_current_state_reg[0]_5 (SR),
        .Q(current_state),
        .SR(receiver_controller_inst_n_6),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\count_data_reg[0] (\clk_div_reg[0]_0 ),
        .\count_data_reg[0]_0 (clk_div_reg),
        .\data_o_reg[0] (total_data_size_sampled),
        .data_valid(data_valid),
        .\fcr_d_reg[0] (E),
        .\fcr_d_reg[1] (\fcr_d_reg[1] ),
        .fifo_rx_empty(fifo_rx_empty),
        .fifo_rx_full_o(fifo_rx_full_o),
        .fifo_rx_pop(fifo_rx_pop),
        .fifo_rx_pop_d(fifo_rx_pop_d),
        .mem_reg_0_15_6_7__0(mem_reg_0_15_6_7__0),
        .ocr(ocr),
        .p_4_in(p_4_in),
        .parity_check(parity_check),
        .rst_n_IBUF(rst_n_IBUF),
        .stop_bit_1_check(stop_bit_1_check),
        .stop_bit_1_check_sampled_reg(stop_bit_1_check_sampled_reg_0),
        .stop_bit_2_check(stop_bit_2_check),
        .stop_bit_2_check_sampled_reg(count_data_reg),
        .stop_bit_2_check_sampled_reg_0(stop_bit_2_check_sampled_reg_0),
        .stop_bit_2_check_sampled_reg_1(Q),
        .\total_data_size_sampled_reg[3] (receive_total_fi_i));
  shift_register shift_register_inst
       (.D(data),
        .E(shift_receive_en),
        .Q(\shift_regs_reg[7] ),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\lcr_d_reg[3] (shift_register_inst_n_0),
        .parity_bit_sampled(parity_bit_sampled),
        .parity_check_sampled(parity_check_sampled),
        .parity_err_o_reg({parity_err_o_reg_0[4:3],parity_err_o_reg_0[1:0]}),
        .rst_n_IBUF(rst_n_IBUF),
        .tx_sync(tx_sync));
  FDRE #(
    .INIT(1'b0)) 
    stop_bit_1_check_sampled_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(stop_bit_1_check),
        .Q(stop_bit_1_check_sampled),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    stop_bit_2_check_sampled_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(stop_bit_2_check),
        .Q(stop_bit_2_check_sampled),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    stop_bit_err_o_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(stop_bit_err_0),
        .Q(stop_bit_err),
        .R(SR));
  synchronizer_7 sync
       (.E(receive_total_fi_i),
        .\FSM_sequential_current_state_reg[0] (\FSM_sequential_current_state_reg[0]_0 ),
        .Q(current_state),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .d1(d1),
        .d1_reg_0(sync_n_1),
        .ocr(ocr),
        .\ocr_d_reg[2] (sync_n_3),
        .parity_bit(parity_bit),
        .parity_check_sampled(parity_check_sampled),
        .rx_IBUF(rx_IBUF),
        .stop_bit_1_check_sampled(stop_bit_1_check_sampled),
        .stop_bit_2_check_sampled(stop_bit_2_check_sampled),
        .stop_bit_err_0(stop_bit_err_0),
        .stop_bit_err_o_reg(parity_err_o_reg_0[2]),
        .tx_sync(tx_sync));
  FDRE #(
    .INIT(1'b0)) 
    \total_data_size_sampled_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\total_data_size_sampled_reg[3]_0 [0]),
        .Q(total_data_size_sampled[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \total_data_size_sampled_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\total_data_size_sampled_reg[3]_0 [1]),
        .Q(total_data_size_sampled[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \total_data_size_sampled_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\total_data_size_sampled_reg[3]_0 [2]),
        .Q(total_data_size_sampled[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \total_data_size_sampled_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\total_data_size_sampled_reg[3]_0 [3]),
        .Q(total_data_size_sampled[3]),
        .R(SR));
endmodule

module uart_rx_top
   (E,
    stop_bit_err,
    parity_err,
    rts_n_OBUF,
    \lsr_reg[6] ,
    fifo_rx_empty,
    fifo_rx_pop_ready,
    fifo_rx_triggered,
    \shift_regs_reg[7] ,
    \fcr_d_reg[0] ,
    data_o,
    SR,
    clk_IBUF_BUFG,
    rx_IBUF,
    fifo_rx_pop,
    \rd_ptr_reg[0] ,
    rts_no_reg_0,
    parity_err_o_reg,
    \clk_div_reg[0] ,
    ocr,
    stop_bit_2_check_sampled_reg,
    Q,
    stop_bit_1_check_sampled_reg,
    rst_n_IBUF,
    rts_no_i_2,
    \lsr_reg[6]_0 ,
    lsr6_reset,
    p_38_in,
    D,
    \lsr_reg[6]_1 ,
    \total_data_size_sampled_reg[3] );
  output [0:0]E;
  output stop_bit_err;
  output parity_err;
  output rts_n_OBUF;
  output \lsr_reg[6] ;
  output fifo_rx_empty;
  output fifo_rx_pop_ready;
  output fifo_rx_triggered;
  output [0:0]\shift_regs_reg[7] ;
  output \fcr_d_reg[0] ;
  output [7:0]data_o;
  input [0:0]SR;
  input clk_IBUF_BUFG;
  input rx_IBUF;
  input fifo_rx_pop;
  input \rd_ptr_reg[0] ;
  input rts_no_reg_0;
  input [4:0]parity_err_o_reg;
  input [0:0]\clk_div_reg[0] ;
  input [0:0]ocr;
  input stop_bit_2_check_sampled_reg;
  input [3:0]Q;
  input stop_bit_1_check_sampled_reg;
  input rst_n_IBUF;
  input [3:0]rts_no_i_2;
  input [0:0]\lsr_reg[6]_0 ;
  input lsr6_reset;
  input p_38_in;
  input [0:0]D;
  input \lsr_reg[6]_1 ;
  input [3:0]\total_data_size_sampled_reg[3] ;

  wire [0:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire [0:0]\clk_div_reg[0] ;
  wire [7:0]data_o;
  wire data_valid;
  wire data_valid_d;
  wire \fcr_d_reg[0] ;
  wire fifo_rx_empty;
  wire fifo_rx_full_o;
  wire fifo_rx_pop;
  wire fifo_rx_pop_d;
  wire fifo_rx_pop_ready;
  wire fifo_rx_triggered;
  wire lsr6_reset;
  wire \lsr[6]_i_2_n_0 ;
  wire \lsr_reg[6] ;
  wire [0:0]\lsr_reg[6]_0 ;
  wire \lsr_reg[6]_1 ;
  wire [7:0]msg;
  wire [0:0]ocr;
  wire p_38_in;
  wire parity_err;
  wire [4:0]parity_err_o_reg;
  wire \rd_ptr_reg[0] ;
  wire rst_n_IBUF;
  wire rts_n_OBUF;
  wire [3:0]rts_no_i_2;
  wire rts_no_reg_0;
  wire rx_IBUF;
  wire [0:0]\shift_regs_reg[7] ;
  wire stop_bit_1_check_sampled_reg;
  wire stop_bit_2_check_sampled_reg;
  wire stop_bit_err;
  wire [3:0]\total_data_size_sampled_reg[3] ;
  wire uart_rx_inst_n_10;
  wire uart_rx_inst_n_11;
  wire uart_rx_inst_n_12;
  wire uart_rx_inst_n_13;
  wire uart_rx_inst_n_14;
  wire uart_rx_inst_n_15;
  wire uart_rx_inst_n_3;
  wire uart_rx_inst_n_7;
  wire uart_rx_inst_n_8;
  wire uart_rx_inst_n_9;
  wire wr_ptr0;

  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(data_valid_d),
        .D(msg[0]),
        .Q(data_o[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(data_valid_d),
        .D(msg[1]),
        .Q(data_o[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(data_valid_d),
        .D(msg[2]),
        .Q(data_o[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(data_valid_d),
        .D(msg[3]),
        .Q(data_o[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(data_valid_d),
        .D(msg[4]),
        .Q(data_o[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(data_valid_d),
        .D(msg[5]),
        .Q(data_o[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(data_valid_d),
        .D(msg[6]),
        .Q(data_o[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(data_valid_d),
        .D(msg[7]),
        .Q(data_o[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    data_o_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data_valid_d),
        .Q(E),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    data_valid_d_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data_valid),
        .Q(data_valid_d),
        .R(SR));
  receiver_fifo fifo_rx_inst
       (.D(msg),
        .E(wr_ptr0),
        .Q({uart_rx_inst_n_8,uart_rx_inst_n_9,uart_rx_inst_n_10,uart_rx_inst_n_11,uart_rx_inst_n_12,uart_rx_inst_n_13,uart_rx_inst_n_14,uart_rx_inst_n_15}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\data_o_reg[1] (uart_rx_inst_n_7),
        .fifo_rx_empty(fifo_rx_empty),
        .fifo_rx_full_o(fifo_rx_full_o),
        .fifo_rx_pop(fifo_rx_pop),
        .fifo_rx_pop_ready(fifo_rx_pop_ready),
        .fifo_rx_triggered(fifo_rx_triggered),
        .lsr6_reset(lsr6_reset),
        .\lsr_reg[6] (\lsr_reg[6] ),
        .\lsr_reg[6]_0 (\lsr[6]_i_2_n_0 ),
        .\lsr_reg[6]_1 (uart_rx_inst_n_3),
        .\lsr_reg[6]_2 (\lsr_reg[6]_0 ),
        .p_38_in(p_38_in),
        .\rd_ptr_reg[0]_0 (\rd_ptr_reg[0] ),
        .rst_n_IBUF(rst_n_IBUF),
        .rts_no_i_2({rts_no_i_2[3:2],rts_no_i_2[0]}));
  FDRE #(
    .INIT(1'b0)) 
    fifo_rx_pop_d_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(fifo_rx_pop),
        .Q(fifo_rx_pop_d),
        .R(SR));
  LUT3 #(
    .INIT(8'h04)) 
    \lsr[6]_i_2 
       (.I0(\lsr_reg[6]_1 ),
        .I1(E),
        .I2(rts_no_i_2[0]),
        .O(\lsr[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    rts_no_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(rts_no_reg_0),
        .Q(rts_n_OBUF),
        .R(1'b0));
  uart_receiver uart_rx_inst
       (.D(D),
        .E(wr_ptr0),
        .\FSM_sequential_current_state_reg[0] (uart_rx_inst_n_3),
        .\FSM_sequential_current_state_reg[0]_0 (rts_n_OBUF),
        .Q(Q),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\clk_div_reg[0]_0 (\clk_div_reg[0] ),
        .\data_o_reg[7]_0 ({uart_rx_inst_n_8,uart_rx_inst_n_9,uart_rx_inst_n_10,uart_rx_inst_n_11,uart_rx_inst_n_12,uart_rx_inst_n_13,uart_rx_inst_n_14,uart_rx_inst_n_15}),
        .data_valid(data_valid),
        .\fcr_d_reg[0] (\fcr_d_reg[0] ),
        .\fcr_d_reg[1] (uart_rx_inst_n_7),
        .fifo_rx_empty(fifo_rx_empty),
        .fifo_rx_full_o(fifo_rx_full_o),
        .fifo_rx_pop(fifo_rx_pop),
        .fifo_rx_pop_d(fifo_rx_pop_d),
        .mem_reg_0_15_6_7__0(rts_no_i_2[1:0]),
        .ocr(ocr),
        .parity_err(parity_err),
        .parity_err_o_reg_0(parity_err_o_reg),
        .rst_n_IBUF(rst_n_IBUF),
        .rx_IBUF(rx_IBUF),
        .\shift_regs_reg[7] (\shift_regs_reg[7] ),
        .stop_bit_1_check_sampled_reg_0(stop_bit_1_check_sampled_reg),
        .stop_bit_2_check_sampled_reg_0(stop_bit_2_check_sampled_reg),
        .stop_bit_err(stop_bit_err),
        .\total_data_size_sampled_reg[3]_0 (\total_data_size_sampled_reg[3] ));
endmodule

module uart_transmitter
   (tx_OBUF,
    \FSM_sequential_current_state_reg[2] ,
    rd_ptr0,
    \ocr_d_reg[0] ,
    lsr0_set,
    \data_size_sampled_reg[1]_0 ,
    \data_size_sampled_reg[3]_0 ,
    \data_size_sampled_reg[1]_1 ,
    SR,
    start_tx,
    clk_IBUF_BUFG,
    baud_o,
    E,
    Q,
    fifo_tx_empty,
    ocr,
    tx_busy_pulse,
    rst_n_IBUF,
    tx_busy,
    cts_sync,
    \FSM_sequential_current_state_reg[1] ,
    load_d0_sampled_reg_0,
    cts_n__0,
    p_2_in,
    D,
    \data_size_sampled_reg[3]_1 ,
    \total_data_sampled_reg[3]_0 );
  output tx_OBUF;
  output [0:0]\FSM_sequential_current_state_reg[2] ;
  output rd_ptr0;
  output \ocr_d_reg[0] ;
  output lsr0_set;
  output \data_size_sampled_reg[1]_0 ;
  output [3:0]\data_size_sampled_reg[3]_0 ;
  output \data_size_sampled_reg[1]_1 ;
  input [0:0]SR;
  input start_tx;
  input clk_IBUF_BUFG;
  input baud_o;
  input [0:0]E;
  input [0:0]Q;
  input fifo_tx_empty;
  input [1:0]ocr;
  input tx_busy_pulse;
  input rst_n_IBUF;
  input tx_busy;
  input cts_sync;
  input [0:0]\FSM_sequential_current_state_reg[1] ;
  input [3:0]load_d0_sampled_reg_0;
  input cts_n__0;
  input p_2_in;
  input [7:0]D;
  input [3:0]\data_size_sampled_reg[3]_1 ;
  input [3:0]\total_data_sampled_reg[3]_0 ;

  wire [7:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_current_state_reg[1] ;
  wire [0:0]\FSM_sequential_current_state_reg[2] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire baud_o;
  wire clk_IBUF_BUFG;
  wire [3:0]cnt_data_trans_reg;
  wire cts_n__0;
  wire cts_sync;
  wire \data_size_sampled_reg[1]_0 ;
  wire \data_size_sampled_reg[1]_1 ;
  wire [3:0]\data_size_sampled_reg[3]_0 ;
  wire [3:0]\data_size_sampled_reg[3]_1 ;
  wire fifo_tx_empty;
  wire load_d0;
  wire load_d0_sampled;
  wire load_d0_sampled_i_2_n_0;
  wire load_d0_sampled_i_3_n_0;
  wire load_d0_sampled_i_4_n_0;
  wire load_d0_sampled_i_5_n_0;
  wire load_d0_sampled_i_6_n_0;
  wire [3:0]load_d0_sampled_reg_0;
  wire load_en;
  wire load_en_sampled;
  wire lsr0_set;
  wire [1:0]ocr;
  wire \ocr_d_reg[0] ;
  wire [3:0]p_0_in__3;
  wire p_2_in;
  wire rd_ptr0;
  wire rst_n_IBUF;
  wire [7:0]sampled_data;
  wire shift_en;
  wire start_tx;
  wire tick_d;
  wire [3:0]total_data_sampled;
  wire [3:0]\total_data_sampled_reg[3]_0 ;
  wire trans_data_fi;
  wire trans_data_fi_sampled;
  wire trans_data_fi_sampled_i_2_n_0;
  wire trans_data_fi_sampled_i_3_n_0;
  wire trans_stop_fi;
  wire trans_stop_fi_sampled;
  wire trans_stop_fi_sampled_i_2_n_0;
  wire transmitter_controller_inst_n_5;
  wire tx_OBUF;
  wire tx_busy;
  wire tx_busy_pulse;

  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_data_trans[0]_i_1 
       (.I0(cnt_data_trans_reg[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_data_trans[1]_i_1 
       (.I0(cnt_data_trans_reg[0]),
        .I1(cnt_data_trans_reg[1]),
        .O(p_0_in__3[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_data_trans[2]_i_1 
       (.I0(cnt_data_trans_reg[0]),
        .I1(cnt_data_trans_reg[1]),
        .I2(cnt_data_trans_reg[2]),
        .O(p_0_in__3[2]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_data_trans[3]_i_2 
       (.I0(cnt_data_trans_reg[1]),
        .I1(cnt_data_trans_reg[0]),
        .I2(cnt_data_trans_reg[2]),
        .I3(cnt_data_trans_reg[3]),
        .O(p_0_in__3[3]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_data_trans_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_en),
        .D(p_0_in__3[0]),
        .Q(cnt_data_trans_reg[0]),
        .R(transmitter_controller_inst_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_data_trans_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_en),
        .D(p_0_in__3[1]),
        .Q(cnt_data_trans_reg[1]),
        .R(transmitter_controller_inst_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_data_trans_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_en),
        .D(p_0_in__3[2]),
        .Q(cnt_data_trans_reg[2]),
        .R(transmitter_controller_inst_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_data_trans_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_en),
        .D(p_0_in__3[3]),
        .Q(cnt_data_trans_reg[3]),
        .R(transmitter_controller_inst_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \data_size_sampled_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_size_sampled_reg[3]_1 [0]),
        .Q(\data_size_sampled_reg[3]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_size_sampled_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_size_sampled_reg[3]_1 [1]),
        .Q(\data_size_sampled_reg[3]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_size_sampled_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_size_sampled_reg[3]_1 [2]),
        .Q(\data_size_sampled_reg[3]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_size_sampled_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_size_sampled_reg[3]_1 [3]),
        .Q(\data_size_sampled_reg[3]_0 [3]),
        .R(SR));
  LUT6 #(
    .INIT(64'hEAEAEAAEAAAAAAAA)) 
    load_d0_sampled_i_1
       (.I0(load_d0_sampled_i_2_n_0),
        .I1(trans_data_fi),
        .I2(load_d0_sampled_reg_0[3]),
        .I3(load_d0_sampled_i_3_n_0),
        .I4(load_d0_sampled_i_4_n_0),
        .I5(load_d0_sampled_reg_0[2]),
        .O(load_d0));
  LUT4 #(
    .INIT(16'h0001)) 
    load_d0_sampled_i_2
       (.I0(cnt_data_trans_reg[1]),
        .I1(cnt_data_trans_reg[0]),
        .I2(cnt_data_trans_reg[3]),
        .I3(cnt_data_trans_reg[2]),
        .O(load_d0_sampled_i_2_n_0));
  LUT6 #(
    .INIT(64'h966900003CC30000)) 
    load_d0_sampled_i_3
       (.I0(sampled_data[7]),
        .I1(load_d0_sampled_i_5_n_0),
        .I2(sampled_data[6]),
        .I3(load_d0_sampled_i_6_n_0),
        .I4(load_d0_sampled_reg_0[1]),
        .I5(load_d0_sampled_reg_0[0]),
        .O(load_d0_sampled_i_3_n_0));
  LUT5 #(
    .INIT(32'h000069C3)) 
    load_d0_sampled_i_4
       (.I0(sampled_data[5]),
        .I1(sampled_data[4]),
        .I2(load_d0_sampled_i_6_n_0),
        .I3(load_d0_sampled_reg_0[0]),
        .I4(load_d0_sampled_reg_0[1]),
        .O(load_d0_sampled_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    load_d0_sampled_i_5
       (.I0(sampled_data[5]),
        .I1(sampled_data[4]),
        .O(load_d0_sampled_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    load_d0_sampled_i_6
       (.I0(sampled_data[2]),
        .I1(sampled_data[3]),
        .I2(sampled_data[0]),
        .I3(sampled_data[1]),
        .O(load_d0_sampled_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    load_d0_sampled_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(load_d0),
        .Q(load_d0_sampled),
        .R(SR));
  LUT4 #(
    .INIT(16'h0004)) 
    load_en_sampled_i_1
       (.I0(cnt_data_trans_reg[1]),
        .I1(cnt_data_trans_reg[0]),
        .I2(cnt_data_trans_reg[3]),
        .I3(cnt_data_trans_reg[2]),
        .O(load_en));
  FDRE #(
    .INIT(1'b0)) 
    load_en_sampled_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(load_en),
        .Q(load_en_sampled),
        .R(SR));
  piso piso_inst
       (.E(shift_en),
        .Q(sampled_data),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .load_d0_sampled(load_d0_sampled),
        .load_en_sampled(load_en_sampled),
        .tx_OBUF(tx_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sampled_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(sampled_data[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sampled_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(sampled_data[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sampled_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(sampled_data[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sampled_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(sampled_data[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sampled_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(sampled_data[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sampled_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(sampled_data[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sampled_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[6]),
        .Q(sampled_data[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sampled_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[7]),
        .Q(sampled_data[7]),
        .R(SR));
  LUT3 #(
    .INIT(8'h80)) 
    stop_bit_1_check_sampled_i_3
       (.I0(\data_size_sampled_reg[3]_0 [1]),
        .I1(\data_size_sampled_reg[3]_0 [0]),
        .I2(load_d0_sampled_reg_0[2]),
        .O(\data_size_sampled_reg[1]_1 ));
  LUT3 #(
    .INIT(8'hA8)) 
    stop_bit_2_check_sampled_i_3
       (.I0(\data_size_sampled_reg[3]_0 [1]),
        .I1(load_d0_sampled_reg_0[2]),
        .I2(\data_size_sampled_reg[3]_0 [0]),
        .O(\data_size_sampled_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    tick_d_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(baud_o),
        .Q(tick_d),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \total_data_sampled_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\total_data_sampled_reg[3]_0 [0]),
        .Q(total_data_sampled[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \total_data_sampled_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\total_data_sampled_reg[3]_0 [1]),
        .Q(total_data_sampled[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \total_data_sampled_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\total_data_sampled_reg[3]_0 [2]),
        .Q(total_data_sampled[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \total_data_sampled_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\total_data_sampled_reg[3]_0 [3]),
        .Q(total_data_sampled[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0480804040080804)) 
    trans_data_fi_sampled_i_1
       (.I0(cnt_data_trans_reg[2]),
        .I1(trans_data_fi_sampled_i_2_n_0),
        .I2(cnt_data_trans_reg[3]),
        .I3(trans_data_fi_sampled_i_3_n_0),
        .I4(\data_size_sampled_reg[3]_0 [2]),
        .I5(\data_size_sampled_reg[3]_0 [3]),
        .O(trans_data_fi));
  LUT6 #(
    .INIT(64'h0188442211884422)) 
    trans_data_fi_sampled_i_2
       (.I0(cnt_data_trans_reg[0]),
        .I1(cnt_data_trans_reg[1]),
        .I2(\data_size_sampled_reg[3]_0 [2]),
        .I3(\data_size_sampled_reg[3]_0 [0]),
        .I4(\data_size_sampled_reg[3]_0 [1]),
        .I5(\data_size_sampled_reg[3]_0 [3]),
        .O(trans_data_fi_sampled_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    trans_data_fi_sampled_i_3
       (.I0(\data_size_sampled_reg[3]_0 [1]),
        .I1(\data_size_sampled_reg[3]_0 [0]),
        .O(trans_data_fi_sampled_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    trans_data_fi_sampled_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(trans_data_fi),
        .Q(trans_data_fi_sampled),
        .R(SR));
  LUT5 #(
    .INIT(32'h90090000)) 
    trans_stop_fi_sampled_i_1
       (.I0(total_data_sampled[3]),
        .I1(cnt_data_trans_reg[3]),
        .I2(total_data_sampled[2]),
        .I3(cnt_data_trans_reg[2]),
        .I4(trans_stop_fi_sampled_i_2_n_0),
        .O(trans_stop_fi));
  LUT4 #(
    .INIT(16'h9009)) 
    trans_stop_fi_sampled_i_2
       (.I0(cnt_data_trans_reg[0]),
        .I1(total_data_sampled[0]),
        .I2(cnt_data_trans_reg[1]),
        .I3(total_data_sampled[1]),
        .O(trans_stop_fi_sampled_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    trans_stop_fi_sampled_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(trans_stop_fi),
        .Q(trans_stop_fi_sampled),
        .R(SR));
  transmitter_controller transmitter_controller_inst
       (.E(E),
        .\FSM_sequential_current_state_reg[0]_0 (transmitter_controller_inst_n_5),
        .\FSM_sequential_current_state_reg[0]_1 (load_d0_sampled_reg_0[2]),
        .\FSM_sequential_current_state_reg[1]_0 (\FSM_sequential_current_state_reg[1] ),
        .\FSM_sequential_current_state_reg[2]_0 (\FSM_sequential_current_state_reg[2] ),
        .\FSM_sequential_current_state_reg[2]_1 (shift_en),
        .Q(Q),
        .SR(SR),
        .baud_o(baud_o),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cts_n__0(cts_n__0),
        .cts_sync(cts_sync),
        .fifo_tx_empty(fifo_tx_empty),
        .lsr0_set(lsr0_set),
        .ocr(ocr),
        .\ocr_d_reg[0] (\ocr_d_reg[0] ),
        .p_2_in(p_2_in),
        .rd_ptr0(rd_ptr0),
        .rst_n_IBUF(rst_n_IBUF),
        .start_tx(start_tx),
        .tick_d(tick_d),
        .trans_data_fi_sampled(trans_data_fi_sampled),
        .trans_stop_fi_sampled(trans_stop_fi_sampled),
        .tx_busy(tx_busy),
        .tx_busy_pulse(tx_busy_pulse));
endmodule

module uart_tx_top
   (fifo_tx_o,
    cts_sync,
    tx_OBUF,
    fifo_tx_empty,
    lsr0_set,
    \data_size_sampled_reg[1] ,
    \data_size_sampled_reg[3] ,
    \data_size_sampled_reg[1]_0 ,
    clk_IBUF_BUFG,
    \sampled_data_reg[7] ,
    SR,
    baud_o,
    cpu_write_tdr_d,
    cts_n_IBUF,
    \wr_ptr_reg[0] ,
    Q,
    ocr,
    rst_n_IBUF,
    \FSM_sequential_current_state_reg[1] ,
    load_d0_sampled_reg,
    p_2_in,
    D,
    \data_size_sampled_reg[3]_0 ,
    \total_data_sampled_reg[3] );
  output [7:0]fifo_tx_o;
  output cts_sync;
  output tx_OBUF;
  output fifo_tx_empty;
  output lsr0_set;
  output \data_size_sampled_reg[1] ;
  output [3:0]\data_size_sampled_reg[3] ;
  output \data_size_sampled_reg[1]_0 ;
  input clk_IBUF_BUFG;
  input [7:0]\sampled_data_reg[7] ;
  input [0:0]SR;
  input baud_o;
  input cpu_write_tdr_d;
  input cts_n_IBUF;
  input [0:0]\wr_ptr_reg[0] ;
  input [1:0]Q;
  input [1:0]ocr;
  input rst_n_IBUF;
  input [0:0]\FSM_sequential_current_state_reg[1] ;
  input [3:0]load_d0_sampled_reg;
  input p_2_in;
  input [7:0]D;
  input [3:0]\data_size_sampled_reg[3]_0 ;
  input [3:0]\total_data_sampled_reg[3] ;

  wire [7:0]D;
  wire [0:0]\FSM_sequential_current_state_reg[1] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire baud_o;
  wire clk_IBUF_BUFG;
  wire cpu_write_tdr_d;
  wire cts_n_IBUF;
  wire cts_n__0;
  wire cts_sync;
  wire \data_size_sampled_reg[1] ;
  wire \data_size_sampled_reg[1]_0 ;
  wire [3:0]\data_size_sampled_reg[3] ;
  wire [3:0]\data_size_sampled_reg[3]_0 ;
  wire fifo_tx_empty;
  wire [7:0]fifo_tx_o;
  wire [3:0]load_d0_sampled_reg;
  wire lsr0_set;
  wire negedge_tx_busy;
  wire [1:0]ocr;
  wire p_2_in;
  wire rd_ptr0;
  wire rst_n_IBUF;
  wire [7:0]\sampled_data_reg[7] ;
  wire start_tx;
  wire [3:0]\total_data_sampled_reg[3] ;
  wire tx_OBUF;
  wire tx_busy;
  wire tx_busy_d;
  wire tx_busy_pulse;
  wire uart_tx_inst_n_1;
  wire uart_tx_inst_n_3;
  wire wr_ptr0;
  wire [0:0]\wr_ptr_reg[0] ;
  wire write_data_d1;
  wire write_data_d2;

  transmitter_fifo fifo_tx_inst
       (.E(wr_ptr0),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\count_reg[0]_0 (fifo_tx_empty),
        .\count_reg[0]_1 (uart_tx_inst_n_1),
        .fifo_tx_o(fifo_tx_o),
        .ocr(ocr[1]),
        .rd_ptr0(rd_ptr0),
        .rst_n_IBUF(rst_n_IBUF),
        .\sampled_data_reg[7] (\sampled_data_reg[7] ),
        .start_tx(start_tx),
        .tx_busy_pulse(tx_busy_pulse),
        .\wr_ptr_reg[0]_0 (\wr_ptr_reg[0] ),
        .write_data_d1(write_data_d1),
        .write_data_d2(write_data_d2));
  synchronizer inst_synchronizer
       (.\FSM_sequential_current_state[0]_i_2__0 (\FSM_sequential_current_state_reg[1] ),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cts_n_IBUF(cts_n_IBUF),
        .cts_n__0(cts_n__0),
        .sync_reg_0(cts_sync));
  FDRE #(
    .INIT(1'b0)) 
    tx_busy_d_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_busy),
        .Q(tx_busy_d),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    tx_busy_pulse_i_1
       (.I0(tx_busy_d),
        .I1(tx_busy),
        .O(negedge_tx_busy));
  FDRE #(
    .INIT(1'b0)) 
    tx_busy_pulse_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(negedge_tx_busy),
        .Q(tx_busy_pulse),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    tx_busy_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(uart_tx_inst_n_3),
        .Q(tx_busy),
        .R(1'b0));
  uart_transmitter uart_tx_inst
       (.D(D),
        .E(wr_ptr0),
        .\FSM_sequential_current_state_reg[1] (\FSM_sequential_current_state_reg[1] ),
        .\FSM_sequential_current_state_reg[2] (uart_tx_inst_n_1),
        .Q(Q[0]),
        .SR(SR),
        .baud_o(baud_o),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cts_n__0(cts_n__0),
        .cts_sync(cts_sync),
        .\data_size_sampled_reg[1]_0 (\data_size_sampled_reg[1] ),
        .\data_size_sampled_reg[1]_1 (\data_size_sampled_reg[1]_0 ),
        .\data_size_sampled_reg[3]_0 (\data_size_sampled_reg[3] ),
        .\data_size_sampled_reg[3]_1 (\data_size_sampled_reg[3]_0 ),
        .fifo_tx_empty(fifo_tx_empty),
        .load_d0_sampled_reg_0(load_d0_sampled_reg),
        .lsr0_set(lsr0_set),
        .ocr(ocr),
        .\ocr_d_reg[0] (uart_tx_inst_n_3),
        .p_2_in(p_2_in),
        .rd_ptr0(rd_ptr0),
        .rst_n_IBUF(rst_n_IBUF),
        .start_tx(start_tx),
        .\total_data_sampled_reg[3]_0 (\total_data_sampled_reg[3] ),
        .tx_OBUF(tx_OBUF),
        .tx_busy(tx_busy),
        .tx_busy_pulse(tx_busy_pulse));
  FDRE #(
    .INIT(1'b0)) 
    write_data_d1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cpu_write_tdr_d),
        .Q(write_data_d1),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    write_data_d2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(write_data_d1),
        .Q(write_data_d2),
        .R(SR));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
