// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sun Jun 22 12:03:41 2025
// Host        : hieu-virtual-machine running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi4_uart_0_0_sim_netlist.v
// Design      : design_1_axi4_uart_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4_lite
   (rst_n_0,
    rst_n_1,
    rst_n_2,
    \tdr_d_reg[7]_0 ,
    Q,
    \tdr_d_reg[7]_1 ,
    \lcr_d_reg[7]_0 ,
    rts_no_reg,
    \hcr_d_reg[0]_0 ,
    \lsr_reg[0]_0 ,
    s_axi_rdata,
    \fcr_d_reg[1]_0 ,
    rst_n_3,
    rst_n_4,
    rst_n_5,
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
    rst_n_6,
    rst_n_7,
    cpu_write_tdr_d_reg,
    rst_n,
    D,
    fifo_tx_o,
    rts_no_reg_0,
    \lsr_reg[6]_0 ,
    lsr0_set,
    \lsr_reg[6]_1 ,
    \lsr_reg[1]_0 ,
    fifo_rx_triggered,
    parity_err,
    stop_bit_err,
    \lsr_reg[5]_0 ,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_rready,
    tdr_empty_reg,
    \data_o_reg[7] ,
    s_axi_bready,
    s_axi_awvalid,
    cts_sync,
    s_axi_awaddr,
    s_axi_wstrb,
    s_axi_wvalid,
    fifo_tx_empty,
    fifo_rx_empty,
    cpu_write_tdr_d,
    clk,
    s_axi_wdata,
    \rdr_reg[7]_0 );
  output rst_n_0;
  output rst_n_1;
  output rst_n_2;
  output [7:0]\tdr_d_reg[7]_0 ;
  output [4:0]Q;
  output [7:0]\tdr_d_reg[7]_1 ;
  output [7:0]\lcr_d_reg[7]_0 ;
  output rts_no_reg;
  output [0:0]\hcr_d_reg[0]_0 ;
  output \lsr_reg[0]_0 ;
  output [31:0]s_axi_rdata;
  output \fcr_d_reg[1]_0 ;
  output rst_n_3;
  output rst_n_4;
  output rst_n_5;
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
  output rst_n_6;
  output rst_n_7;
  output cpu_write_tdr_d_reg;
  input rst_n;
  input [2:0]D;
  input [7:0]fifo_tx_o;
  input rts_no_reg_0;
  input [6:0]\lsr_reg[6]_0 ;
  input lsr0_set;
  input [4:0]\lsr_reg[6]_1 ;
  input \lsr_reg[1]_0 ;
  input fifo_rx_triggered;
  input parity_err;
  input stop_bit_err;
  input \lsr_reg[5]_0 ;
  input [11:0]s_axi_araddr;
  input s_axi_arvalid;
  input s_axi_rready;
  input tdr_empty_reg;
  input [0:0]\data_o_reg[7] ;
  input s_axi_bready;
  input s_axi_awvalid;
  input cts_sync;
  input [11:0]s_axi_awaddr;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  input fifo_tx_empty;
  input fifo_rx_empty;
  input cpu_write_tdr_d;
  input clk;
  input [31:0]s_axi_wdata;
  input [7:0]\rdr_reg[7]_0 ;

  wire [13:0]BIT_PERIOD_TX;
  wire [2:0]D;
  wire \FSM_onehot_rd_state[0]_i_1_n_0 ;
  wire \FSM_onehot_rd_state[1]_i_1_n_0 ;
  wire \FSM_onehot_rd_state[2]_i_1_n_0 ;
  wire [1:0]\FSM_onehot_rd_state_reg[2]_0 ;
  wire \FSM_onehot_rd_state_reg_n_0_[0] ;
  wire \FSM_onehot_wr_state[0]_i_1_n_0 ;
  wire \FSM_onehot_wr_state[1]_i_2_n_0 ;
  wire \FSM_onehot_wr_state[2]_i_1_n_0 ;
  wire \FSM_onehot_wr_state[3]_i_1_n_0 ;
  wire [2:0]\FSM_onehot_wr_state_reg[3]_0 ;
  wire \FSM_onehot_wr_state_reg_n_0_[0] ;
  wire [4:0]Q;
  wire [0:0]SR;
  wire clk;
  wire cpu_read_iir;
  wire cpu_write_tdr;
  wire cpu_write_tdr_d;
  wire cpu_write_tdr_d_i_2_n_0;
  wire cpu_write_tdr_d_i_3_n_0;
  wire cpu_write_tdr_d_reg;
  wire cts_sync;
  wire [0:0]\data_o_reg[7] ;
  wire [31:7]fcr;
  wire fcr1__5;
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
  wire \lsr_reg[1]_0 ;
  wire \lsr_reg[5]_0 ;
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
  wire [11:0]r_offset_r;
  wire [7:0]rdr;
  wire [7:0]\rdr_reg[7]_0 ;
  wire rst_n;
  wire rst_n_0;
  wire rst_n_1;
  wire rst_n_2;
  wire rst_n_3;
  wire rst_n_4;
  wire rst_n_5;
  wire rst_n_6;
  wire rst_n_7;
  wire rts_no_i_2_n_0;
  wire rts_no_reg;
  wire rts_no_reg_0;
  wire [11:0]s_axi_araddr;
  wire s_axi_arvalid;
  wire [11:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[0]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[0]_INST_0_i_3_n_0 ;
  wire \s_axi_rdata[10]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[10]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[11]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[11]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[12]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[12]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[13]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[13]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[14]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[14]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[15]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[15]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[16]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[16]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[17]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[17]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[18]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[18]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[19]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[19]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[1]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[1]_INST_0_i_3_n_0 ;
  wire \s_axi_rdata[20]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[20]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[21]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[21]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[22]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[22]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[23]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[23]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[24]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[24]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[25]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[25]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[26]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[26]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[27]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[27]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[28]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[28]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[29]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[29]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[2]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[2]_INST_0_i_3_n_0 ;
  wire \s_axi_rdata[30]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[30]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[31]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[31]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[31]_INST_0_i_3_n_0 ;
  wire \s_axi_rdata[31]_INST_0_i_4_n_0 ;
  wire \s_axi_rdata[31]_INST_0_i_5_n_0 ;
  wire \s_axi_rdata[31]_INST_0_i_6_n_0 ;
  wire \s_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[3]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[4]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[5]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[6]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[6]_INST_0_i_3_n_0 ;
  wire \s_axi_rdata[6]_INST_0_i_4_n_0 ;
  wire \s_axi_rdata[6]_INST_0_i_5_n_0 ;
  wire \s_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[7]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[8]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[9]_INST_0_i_2_n_0 ;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]\shift_regs_reg[7] ;
  wire stop_bit_err;
  wire [31:7]tdr;
  wire [31:8]tdr_d;
  wire [7:0]\tdr_d_reg[7]_0 ;
  wire [7:0]\tdr_d_reg[7]_1 ;
  wire tdr_empty_reg;
  wire \uart_rx_top_inst/rts_no04_out ;
  wire [11:0]w_offset_r;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \BIT_PERIOD_TX[0]_i_1 
       (.I0(\lcr_d_reg[7]_0 [7]),
        .I1(\lcr_d_reg[7]_0 [6]),
        .I2(rst_n),
        .I3(\lcr_d_reg[7]_0 [5]),
        .O(BIT_PERIOD_TX[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h1060)) 
    \BIT_PERIOD_TX[10]_i_1 
       (.I0(\lcr_d_reg[7]_0 [6]),
        .I1(\lcr_d_reg[7]_0 [7]),
        .I2(rst_n),
        .I3(\lcr_d_reg[7]_0 [5]),
        .O(BIT_PERIOD_TX[10]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h3100)) 
    \BIT_PERIOD_TX[11]_i_1 
       (.I0(\lcr_d_reg[7]_0 [5]),
        .I1(\lcr_d_reg[7]_0 [7]),
        .I2(\lcr_d_reg[7]_0 [6]),
        .I3(rst_n),
        .O(BIT_PERIOD_TX[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \BIT_PERIOD_TX[12]_i_1 
       (.I0(\lcr_d_reg[7]_0 [7]),
        .I1(\lcr_d_reg[7]_0 [6]),
        .I2(rst_n),
        .I3(\lcr_d_reg[7]_0 [5]),
        .O(BIT_PERIOD_TX[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \BIT_PERIOD_TX[13]_i_1 
       (.I0(\lcr_d_reg[7]_0 [6]),
        .I1(\lcr_d_reg[7]_0 [5]),
        .I2(\lcr_d_reg[7]_0 [7]),
        .I3(rst_n),
        .O(BIT_PERIOD_TX[13]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \BIT_PERIOD_TX[1]_i_1 
       (.I0(\lcr_d_reg[7]_0 [5]),
        .I1(\lcr_d_reg[7]_0 [7]),
        .I2(rst_n),
        .O(BIT_PERIOD_TX[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6200)) 
    \BIT_PERIOD_TX[2]_i_1 
       (.I0(\lcr_d_reg[7]_0 [7]),
        .I1(\lcr_d_reg[7]_0 [6]),
        .I2(\lcr_d_reg[7]_0 [5]),
        .I3(rst_n),
        .O(BIT_PERIOD_TX[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \BIT_PERIOD_TX[3]_i_2 
       (.I0(\lcr_d_reg[7]_0 [7]),
        .I1(\lcr_d_reg[7]_0 [6]),
        .I2(rst_n),
        .I3(\lcr_d_reg[7]_0 [5]),
        .O(BIT_PERIOD_TX[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF77F)) 
    \BIT_PERIOD_TX[4]_i_1 
       (.I0(rst_n),
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
        .I3(rst_n),
        .O(BIT_PERIOD_TX[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \BIT_PERIOD_TX[6]_i_1 
       (.I0(\lcr_d_reg[7]_0 [6]),
        .I1(\lcr_d_reg[7]_0 [7]),
        .I2(rst_n),
        .I3(\lcr_d_reg[7]_0 [5]),
        .O(BIT_PERIOD_TX[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hF757)) 
    \BIT_PERIOD_TX[7]_i_1 
       (.I0(rst_n),
        .I1(\lcr_d_reg[7]_0 [5]),
        .I2(\lcr_d_reg[7]_0 [7]),
        .I3(\lcr_d_reg[7]_0 [6]),
        .O(BIT_PERIOD_TX[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h3FBB)) 
    \BIT_PERIOD_TX[8]_i_1 
       (.I0(\lcr_d_reg[7]_0 [7]),
        .I1(rst_n),
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
        .I3(rst_n),
        .O(BIT_PERIOD_TX[9]));
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_rd_state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_rd_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_rd_state_reg[2]_0 [1]),
        .O(\FSM_onehot_rd_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_rd_state[1]_i_1 
       (.I0(s_axi_rready),
        .I1(\FSM_onehot_rd_state_reg[2]_0 [0]),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_rd_state_reg_n_0_[0] ),
        .O(\FSM_onehot_rd_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_rd_state[2]_i_1 
       (.I0(\FSM_onehot_rd_state_reg[2]_0 [0]),
        .I1(s_axi_rready),
        .O(\FSM_onehot_rd_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RD_IDLE:001,RD_READY:010,RD_DONE:100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rd_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_rd_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_rd_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "RD_IDLE:001,RD_READY:010,RD_DONE:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rd_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_rd_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rd_state_reg[2]_0 [0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "RD_IDLE:001,RD_READY:010,RD_DONE:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rd_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_rd_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_rd_state_reg[2]_0 [1]),
        .R(SR));
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_wr_state[0]_i_1 
       (.I0(s_axi_awvalid),
        .I1(\FSM_onehot_wr_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_wr_state_reg[3]_0 [2]),
        .O(\FSM_onehot_wr_state[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wr_state[1]_i_1 
       (.I0(rst_n),
        .O(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_wr_state[1]_i_2 
       (.I0(\FSM_onehot_wr_state_reg_n_0_[0] ),
        .I1(s_axi_awvalid),
        .O(\FSM_onehot_wr_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_wr_state[2]_i_1 
       (.I0(s_axi_bready),
        .I1(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I2(\FSM_onehot_wr_state_reg[3]_0 [0]),
        .O(\FSM_onehot_wr_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_wr_state[3]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_bready),
        .O(\FSM_onehot_wr_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WR_IDLE:0001,WR_READY:0010,WR_DATA:0100,WR_DONE:1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_wr_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_wr_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_wr_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "WR_IDLE:0001,WR_READY:0010,WR_DATA:0100,WR_DONE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wr_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_wr_state[1]_i_2_n_0 ),
        .Q(\FSM_onehot_wr_state_reg[3]_0 [0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "WR_IDLE:0001,WR_READY:0010,WR_DATA:0100,WR_DONE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wr_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_wr_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "WR_IDLE:0001,WR_READY:0010,WR_DATA:0100,WR_DONE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wr_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_wr_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_wr_state_reg[3]_0 [2]),
        .R(SR));
  LUT3 #(
    .INIT(8'h2A)) 
    \FSM_sequential_current_state[1]_i_4__0 
       (.I0(ocr[0]),
        .I1(\hcr_d_reg[0]_0 ),
        .I2(cts_sync),
        .O(p_2_in));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \count[4]_i_1__0 
       (.I0(Q[2]),
        .I1(rst_n),
        .O(\fcr_d_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    cpu_write_tdr_d_i_1
       (.I0(cpu_write_tdr_d_i_2_n_0),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awaddr[3]),
        .I4(s_axi_awaddr[2]),
        .I5(cpu_write_tdr_d_i_3_n_0),
        .O(cpu_write_tdr));
  LUT4 #(
    .INIT(16'h0001)) 
    cpu_write_tdr_d_i_2
       (.I0(s_axi_awaddr[7]),
        .I1(s_axi_awaddr[6]),
        .I2(s_axi_awaddr[5]),
        .I3(s_axi_awaddr[4]),
        .O(cpu_write_tdr_d_i_2_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    cpu_write_tdr_d_i_3
       (.I0(s_axi_awaddr[8]),
        .I1(s_axi_awaddr[9]),
        .I2(s_axi_awaddr[10]),
        .I3(s_axi_awaddr[11]),
        .I4(\FSM_onehot_wr_state_reg[3]_0 [0]),
        .I5(s_axi_awvalid),
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
        .I1(s_axi_wstrb[1]),
        .I2(fcr1__5),
        .O(fcr[15]));
  LUT3 #(
    .INIT(8'h80)) 
    \fcr_d[23]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb[2]),
        .I2(fcr1__5),
        .O(fcr[23]));
  LUT3 #(
    .INIT(8'h80)) 
    \fcr_d[31]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb[3]),
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
        .I1(s_axi_wstrb[0]),
        .I2(fcr1__5),
        .O(fcr[7]));
  FDRE \fcr_d_reg[0] 
       (.C(clk),
        .CE(fcr[7]),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \fcr_d_reg[10] 
       (.C(clk),
        .CE(fcr[15]),
        .D(s_axi_wdata[10]),
        .Q(\fcr_d_reg_n_0_[10] ),
        .R(SR));
  FDRE \fcr_d_reg[11] 
       (.C(clk),
        .CE(fcr[15]),
        .D(s_axi_wdata[11]),
        .Q(\fcr_d_reg_n_0_[11] ),
        .R(SR));
  FDRE \fcr_d_reg[12] 
       (.C(clk),
        .CE(fcr[15]),
        .D(s_axi_wdata[12]),
        .Q(\fcr_d_reg_n_0_[12] ),
        .R(SR));
  FDRE \fcr_d_reg[13] 
       (.C(clk),
        .CE(fcr[15]),
        .D(s_axi_wdata[13]),
        .Q(\fcr_d_reg_n_0_[13] ),
        .R(SR));
  FDRE \fcr_d_reg[14] 
       (.C(clk),
        .CE(fcr[15]),
        .D(s_axi_wdata[14]),
        .Q(\fcr_d_reg_n_0_[14] ),
        .R(SR));
  FDRE \fcr_d_reg[15] 
       (.C(clk),
        .CE(fcr[15]),
        .D(s_axi_wdata[15]),
        .Q(\fcr_d_reg_n_0_[15] ),
        .R(SR));
  FDRE \fcr_d_reg[16] 
       (.C(clk),
        .CE(fcr[23]),
        .D(s_axi_wdata[16]),
        .Q(\fcr_d_reg_n_0_[16] ),
        .R(SR));
  FDRE \fcr_d_reg[17] 
       (.C(clk),
        .CE(fcr[23]),
        .D(s_axi_wdata[17]),
        .Q(\fcr_d_reg_n_0_[17] ),
        .R(SR));
  FDRE \fcr_d_reg[18] 
       (.C(clk),
        .CE(fcr[23]),
        .D(s_axi_wdata[18]),
        .Q(\fcr_d_reg_n_0_[18] ),
        .R(SR));
  FDRE \fcr_d_reg[19] 
       (.C(clk),
        .CE(fcr[23]),
        .D(s_axi_wdata[19]),
        .Q(\fcr_d_reg_n_0_[19] ),
        .R(SR));
  FDRE \fcr_d_reg[1] 
       (.C(clk),
        .CE(fcr[7]),
        .D(s_axi_wdata[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \fcr_d_reg[20] 
       (.C(clk),
        .CE(fcr[23]),
        .D(s_axi_wdata[20]),
        .Q(\fcr_d_reg_n_0_[20] ),
        .R(SR));
  FDRE \fcr_d_reg[21] 
       (.C(clk),
        .CE(fcr[23]),
        .D(s_axi_wdata[21]),
        .Q(\fcr_d_reg_n_0_[21] ),
        .R(SR));
  FDRE \fcr_d_reg[22] 
       (.C(clk),
        .CE(fcr[23]),
        .D(s_axi_wdata[22]),
        .Q(\fcr_d_reg_n_0_[22] ),
        .R(SR));
  FDRE \fcr_d_reg[23] 
       (.C(clk),
        .CE(fcr[23]),
        .D(s_axi_wdata[23]),
        .Q(\fcr_d_reg_n_0_[23] ),
        .R(SR));
  FDRE \fcr_d_reg[24] 
       (.C(clk),
        .CE(fcr[31]),
        .D(s_axi_wdata[24]),
        .Q(\fcr_d_reg_n_0_[24] ),
        .R(SR));
  FDRE \fcr_d_reg[25] 
       (.C(clk),
        .CE(fcr[31]),
        .D(s_axi_wdata[25]),
        .Q(\fcr_d_reg_n_0_[25] ),
        .R(SR));
  FDRE \fcr_d_reg[26] 
       (.C(clk),
        .CE(fcr[31]),
        .D(s_axi_wdata[26]),
        .Q(\fcr_d_reg_n_0_[26] ),
        .R(SR));
  FDRE \fcr_d_reg[27] 
       (.C(clk),
        .CE(fcr[31]),
        .D(s_axi_wdata[27]),
        .Q(\fcr_d_reg_n_0_[27] ),
        .R(SR));
  FDRE \fcr_d_reg[28] 
       (.C(clk),
        .CE(fcr[31]),
        .D(s_axi_wdata[28]),
        .Q(\fcr_d_reg_n_0_[28] ),
        .R(SR));
  FDRE \fcr_d_reg[29] 
       (.C(clk),
        .CE(fcr[31]),
        .D(s_axi_wdata[29]),
        .Q(\fcr_d_reg_n_0_[29] ),
        .R(SR));
  FDRE \fcr_d_reg[2] 
       (.C(clk),
        .CE(fcr[7]),
        .D(s_axi_wdata[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \fcr_d_reg[30] 
       (.C(clk),
        .CE(fcr[31]),
        .D(s_axi_wdata[30]),
        .Q(\fcr_d_reg_n_0_[30] ),
        .R(SR));
  FDRE \fcr_d_reg[31] 
       (.C(clk),
        .CE(fcr[31]),
        .D(s_axi_wdata[31]),
        .Q(\fcr_d_reg_n_0_[31] ),
        .R(SR));
  FDRE \fcr_d_reg[3] 
       (.C(clk),
        .CE(fcr[7]),
        .D(s_axi_wdata[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \fcr_d_reg[4] 
       (.C(clk),
        .CE(fcr[7]),
        .D(s_axi_wdata[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \fcr_d_reg[5] 
       (.C(clk),
        .CE(fcr[7]),
        .D(s_axi_wdata[5]),
        .Q(\fcr_d_reg_n_0_[5] ),
        .R(SR));
  FDRE \fcr_d_reg[6] 
       (.C(clk),
        .CE(fcr[7]),
        .D(s_axi_wdata[6]),
        .Q(\fcr_d_reg_n_0_[6] ),
        .R(SR));
  FDRE \fcr_d_reg[7] 
       (.C(clk),
        .CE(fcr[7]),
        .D(s_axi_wdata[7]),
        .Q(\fcr_d_reg_n_0_[7] ),
        .R(SR));
  FDRE \fcr_d_reg[8] 
       (.C(clk),
        .CE(fcr[15]),
        .D(s_axi_wdata[8]),
        .Q(\fcr_d_reg_n_0_[8] ),
        .R(SR));
  FDRE \fcr_d_reg[9] 
       (.C(clk),
        .CE(fcr[15]),
        .D(s_axi_wdata[9]),
        .Q(\fcr_d_reg_n_0_[9] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    fifo_rx_pop_i_2
       (.I0(\iir[2]_i_6_n_0 ),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(fifo_rx_pop_i_3_n_0),
        .O(p_38_in));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    fifo_rx_pop_i_3
       (.I0(s_axi_araddr[7]),
        .I1(s_axi_araddr[6]),
        .I2(s_axi_araddr[4]),
        .I3(s_axi_araddr[5]),
        .I4(s_axi_arvalid),
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
       (.I0(s_axi_wstrb[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hcr_d[23]_i_2 
       (.I0(s_axi_wstrb[2]),
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
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hcr_d[31]_i_2 
       (.I0(s_axi_wstrb[3]),
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hcr_d[7]_i_2 
       (.I0(s_axi_wstrb[0]),
        .I1(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .O(\hcr_d[7]_i_2_n_0 ));
  FDRE \hcr_d_reg[0] 
       (.C(clk),
        .CE(hcr_1[7]),
        .D(s_axi_wdata[0]),
        .Q(\hcr_d_reg[0]_0 ),
        .R(SR));
  FDRE \hcr_d_reg[10] 
       (.C(clk),
        .CE(hcr_1[15]),
        .D(s_axi_wdata[10]),
        .Q(\hcr_d_reg_n_0_[10] ),
        .R(SR));
  FDRE \hcr_d_reg[11] 
       (.C(clk),
        .CE(hcr_1[15]),
        .D(s_axi_wdata[11]),
        .Q(\hcr_d_reg_n_0_[11] ),
        .R(SR));
  FDRE \hcr_d_reg[12] 
       (.C(clk),
        .CE(hcr_1[15]),
        .D(s_axi_wdata[12]),
        .Q(\hcr_d_reg_n_0_[12] ),
        .R(SR));
  FDRE \hcr_d_reg[13] 
       (.C(clk),
        .CE(hcr_1[15]),
        .D(s_axi_wdata[13]),
        .Q(\hcr_d_reg_n_0_[13] ),
        .R(SR));
  FDRE \hcr_d_reg[14] 
       (.C(clk),
        .CE(hcr_1[15]),
        .D(s_axi_wdata[14]),
        .Q(\hcr_d_reg_n_0_[14] ),
        .R(SR));
  FDRE \hcr_d_reg[15] 
       (.C(clk),
        .CE(hcr_1[15]),
        .D(s_axi_wdata[15]),
        .Q(\hcr_d_reg_n_0_[15] ),
        .R(SR));
  FDRE \hcr_d_reg[16] 
       (.C(clk),
        .CE(hcr_1[23]),
        .D(s_axi_wdata[16]),
        .Q(\hcr_d_reg_n_0_[16] ),
        .R(SR));
  FDRE \hcr_d_reg[17] 
       (.C(clk),
        .CE(hcr_1[23]),
        .D(s_axi_wdata[17]),
        .Q(\hcr_d_reg_n_0_[17] ),
        .R(SR));
  FDRE \hcr_d_reg[18] 
       (.C(clk),
        .CE(hcr_1[23]),
        .D(s_axi_wdata[18]),
        .Q(\hcr_d_reg_n_0_[18] ),
        .R(SR));
  FDRE \hcr_d_reg[19] 
       (.C(clk),
        .CE(hcr_1[23]),
        .D(s_axi_wdata[19]),
        .Q(\hcr_d_reg_n_0_[19] ),
        .R(SR));
  FDRE \hcr_d_reg[1] 
       (.C(clk),
        .CE(hcr_1[7]),
        .D(s_axi_wdata[1]),
        .Q(hcr),
        .R(SR));
  FDRE \hcr_d_reg[20] 
       (.C(clk),
        .CE(hcr_1[23]),
        .D(s_axi_wdata[20]),
        .Q(\hcr_d_reg_n_0_[20] ),
        .R(SR));
  FDRE \hcr_d_reg[21] 
       (.C(clk),
        .CE(hcr_1[23]),
        .D(s_axi_wdata[21]),
        .Q(\hcr_d_reg_n_0_[21] ),
        .R(SR));
  FDRE \hcr_d_reg[22] 
       (.C(clk),
        .CE(hcr_1[23]),
        .D(s_axi_wdata[22]),
        .Q(\hcr_d_reg_n_0_[22] ),
        .R(SR));
  FDRE \hcr_d_reg[23] 
       (.C(clk),
        .CE(hcr_1[23]),
        .D(s_axi_wdata[23]),
        .Q(\hcr_d_reg_n_0_[23] ),
        .R(SR));
  FDRE \hcr_d_reg[24] 
       (.C(clk),
        .CE(hcr_1[31]),
        .D(s_axi_wdata[24]),
        .Q(\hcr_d_reg_n_0_[24] ),
        .R(SR));
  FDRE \hcr_d_reg[25] 
       (.C(clk),
        .CE(hcr_1[31]),
        .D(s_axi_wdata[25]),
        .Q(\hcr_d_reg_n_0_[25] ),
        .R(SR));
  FDRE \hcr_d_reg[26] 
       (.C(clk),
        .CE(hcr_1[31]),
        .D(s_axi_wdata[26]),
        .Q(\hcr_d_reg_n_0_[26] ),
        .R(SR));
  FDRE \hcr_d_reg[27] 
       (.C(clk),
        .CE(hcr_1[31]),
        .D(s_axi_wdata[27]),
        .Q(\hcr_d_reg_n_0_[27] ),
        .R(SR));
  FDRE \hcr_d_reg[28] 
       (.C(clk),
        .CE(hcr_1[31]),
        .D(s_axi_wdata[28]),
        .Q(\hcr_d_reg_n_0_[28] ),
        .R(SR));
  FDRE \hcr_d_reg[29] 
       (.C(clk),
        .CE(hcr_1[31]),
        .D(s_axi_wdata[29]),
        .Q(\hcr_d_reg_n_0_[29] ),
        .R(SR));
  FDRE \hcr_d_reg[2] 
       (.C(clk),
        .CE(hcr_1[7]),
        .D(s_axi_wdata[2]),
        .Q(\hcr_d_reg_n_0_[2] ),
        .R(SR));
  FDRE \hcr_d_reg[30] 
       (.C(clk),
        .CE(hcr_1[31]),
        .D(s_axi_wdata[30]),
        .Q(\hcr_d_reg_n_0_[30] ),
        .R(SR));
  FDRE \hcr_d_reg[31] 
       (.C(clk),
        .CE(hcr_1[31]),
        .D(s_axi_wdata[31]),
        .Q(\hcr_d_reg_n_0_[31] ),
        .R(SR));
  FDRE \hcr_d_reg[3] 
       (.C(clk),
        .CE(hcr_1[7]),
        .D(s_axi_wdata[3]),
        .Q(\hcr_d_reg_n_0_[3] ),
        .R(SR));
  FDRE \hcr_d_reg[4] 
       (.C(clk),
        .CE(hcr_1[7]),
        .D(s_axi_wdata[4]),
        .Q(\hcr_d_reg_n_0_[4] ),
        .R(SR));
  FDRE \hcr_d_reg[5] 
       (.C(clk),
        .CE(hcr_1[7]),
        .D(s_axi_wdata[5]),
        .Q(\hcr_d_reg_n_0_[5] ),
        .R(SR));
  FDRE \hcr_d_reg[6] 
       (.C(clk),
        .CE(hcr_1[7]),
        .D(s_axi_wdata[6]),
        .Q(\hcr_d_reg_n_0_[6] ),
        .R(SR));
  FDRE \hcr_d_reg[7] 
       (.C(clk),
        .CE(hcr_1[7]),
        .D(s_axi_wdata[7]),
        .Q(\hcr_d_reg_n_0_[7] ),
        .R(SR));
  FDRE \hcr_d_reg[8] 
       (.C(clk),
        .CE(hcr_1[15]),
        .D(s_axi_wdata[8]),
        .Q(\hcr_d_reg_n_0_[8] ),
        .R(SR));
  FDRE \hcr_d_reg[9] 
       (.C(clk),
        .CE(hcr_1[15]),
        .D(s_axi_wdata[9]),
        .Q(\hcr_d_reg_n_0_[9] ),
        .R(SR));
  LUT3 #(
    .INIT(8'h80)) 
    \ier_d[15]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb[1]),
        .I2(ier1__4),
        .O(ier_0[15]));
  LUT3 #(
    .INIT(8'h80)) 
    \ier_d[23]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb[2]),
        .I2(ier1__4),
        .O(ier_0[23]));
  LUT3 #(
    .INIT(8'h80)) 
    \ier_d[31]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb[3]),
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
        .I1(s_axi_wstrb[0]),
        .I2(ier1__4),
        .O(ier_0[7]));
  FDRE \ier_d_reg[0] 
       (.C(clk),
        .CE(ier_0[7]),
        .D(s_axi_wdata[0]),
        .Q(ier[0]),
        .R(SR));
  FDRE \ier_d_reg[10] 
       (.C(clk),
        .CE(ier_0[15]),
        .D(s_axi_wdata[10]),
        .Q(\ier_d_reg_n_0_[10] ),
        .R(SR));
  FDRE \ier_d_reg[11] 
       (.C(clk),
        .CE(ier_0[15]),
        .D(s_axi_wdata[11]),
        .Q(\ier_d_reg_n_0_[11] ),
        .R(SR));
  FDRE \ier_d_reg[12] 
       (.C(clk),
        .CE(ier_0[15]),
        .D(s_axi_wdata[12]),
        .Q(\ier_d_reg_n_0_[12] ),
        .R(SR));
  FDRE \ier_d_reg[13] 
       (.C(clk),
        .CE(ier_0[15]),
        .D(s_axi_wdata[13]),
        .Q(\ier_d_reg_n_0_[13] ),
        .R(SR));
  FDRE \ier_d_reg[14] 
       (.C(clk),
        .CE(ier_0[15]),
        .D(s_axi_wdata[14]),
        .Q(\ier_d_reg_n_0_[14] ),
        .R(SR));
  FDRE \ier_d_reg[15] 
       (.C(clk),
        .CE(ier_0[15]),
        .D(s_axi_wdata[15]),
        .Q(\ier_d_reg_n_0_[15] ),
        .R(SR));
  FDRE \ier_d_reg[16] 
       (.C(clk),
        .CE(ier_0[23]),
        .D(s_axi_wdata[16]),
        .Q(\ier_d_reg_n_0_[16] ),
        .R(SR));
  FDRE \ier_d_reg[17] 
       (.C(clk),
        .CE(ier_0[23]),
        .D(s_axi_wdata[17]),
        .Q(\ier_d_reg_n_0_[17] ),
        .R(SR));
  FDRE \ier_d_reg[18] 
       (.C(clk),
        .CE(ier_0[23]),
        .D(s_axi_wdata[18]),
        .Q(\ier_d_reg_n_0_[18] ),
        .R(SR));
  FDRE \ier_d_reg[19] 
       (.C(clk),
        .CE(ier_0[23]),
        .D(s_axi_wdata[19]),
        .Q(\ier_d_reg_n_0_[19] ),
        .R(SR));
  FDRE \ier_d_reg[1] 
       (.C(clk),
        .CE(ier_0[7]),
        .D(s_axi_wdata[1]),
        .Q(ier[1]),
        .R(SR));
  FDRE \ier_d_reg[20] 
       (.C(clk),
        .CE(ier_0[23]),
        .D(s_axi_wdata[20]),
        .Q(\ier_d_reg_n_0_[20] ),
        .R(SR));
  FDRE \ier_d_reg[21] 
       (.C(clk),
        .CE(ier_0[23]),
        .D(s_axi_wdata[21]),
        .Q(\ier_d_reg_n_0_[21] ),
        .R(SR));
  FDRE \ier_d_reg[22] 
       (.C(clk),
        .CE(ier_0[23]),
        .D(s_axi_wdata[22]),
        .Q(\ier_d_reg_n_0_[22] ),
        .R(SR));
  FDRE \ier_d_reg[23] 
       (.C(clk),
        .CE(ier_0[23]),
        .D(s_axi_wdata[23]),
        .Q(\ier_d_reg_n_0_[23] ),
        .R(SR));
  FDRE \ier_d_reg[24] 
       (.C(clk),
        .CE(ier_0[31]),
        .D(s_axi_wdata[24]),
        .Q(\ier_d_reg_n_0_[24] ),
        .R(SR));
  FDRE \ier_d_reg[25] 
       (.C(clk),
        .CE(ier_0[31]),
        .D(s_axi_wdata[25]),
        .Q(\ier_d_reg_n_0_[25] ),
        .R(SR));
  FDRE \ier_d_reg[26] 
       (.C(clk),
        .CE(ier_0[31]),
        .D(s_axi_wdata[26]),
        .Q(\ier_d_reg_n_0_[26] ),
        .R(SR));
  FDRE \ier_d_reg[27] 
       (.C(clk),
        .CE(ier_0[31]),
        .D(s_axi_wdata[27]),
        .Q(\ier_d_reg_n_0_[27] ),
        .R(SR));
  FDRE \ier_d_reg[28] 
       (.C(clk),
        .CE(ier_0[31]),
        .D(s_axi_wdata[28]),
        .Q(\ier_d_reg_n_0_[28] ),
        .R(SR));
  FDRE \ier_d_reg[29] 
       (.C(clk),
        .CE(ier_0[31]),
        .D(s_axi_wdata[29]),
        .Q(\ier_d_reg_n_0_[29] ),
        .R(SR));
  FDRE \ier_d_reg[2] 
       (.C(clk),
        .CE(ier_0[7]),
        .D(s_axi_wdata[2]),
        .Q(ier[2]),
        .R(SR));
  FDRE \ier_d_reg[30] 
       (.C(clk),
        .CE(ier_0[31]),
        .D(s_axi_wdata[30]),
        .Q(\ier_d_reg_n_0_[30] ),
        .R(SR));
  FDRE \ier_d_reg[31] 
       (.C(clk),
        .CE(ier_0[31]),
        .D(s_axi_wdata[31]),
        .Q(\ier_d_reg_n_0_[31] ),
        .R(SR));
  FDRE \ier_d_reg[3] 
       (.C(clk),
        .CE(ier_0[7]),
        .D(s_axi_wdata[3]),
        .Q(\ier_d_reg_n_0_[3] ),
        .R(SR));
  FDRE \ier_d_reg[4] 
       (.C(clk),
        .CE(ier_0[7]),
        .D(s_axi_wdata[4]),
        .Q(\ier_d_reg_n_0_[4] ),
        .R(SR));
  FDRE \ier_d_reg[5] 
       (.C(clk),
        .CE(ier_0[7]),
        .D(s_axi_wdata[5]),
        .Q(\ier_d_reg_n_0_[5] ),
        .R(SR));
  FDRE \ier_d_reg[6] 
       (.C(clk),
        .CE(ier_0[7]),
        .D(s_axi_wdata[6]),
        .Q(\ier_d_reg_n_0_[6] ),
        .R(SR));
  FDRE \ier_d_reg[7] 
       (.C(clk),
        .CE(ier_0[7]),
        .D(s_axi_wdata[7]),
        .Q(\ier_d_reg_n_0_[7] ),
        .R(SR));
  FDRE \ier_d_reg[8] 
       (.C(clk),
        .CE(ier_0[15]),
        .D(s_axi_wdata[8]),
        .Q(\ier_d_reg_n_0_[8] ),
        .R(SR));
  FDRE \ier_d_reg[9] 
       (.C(clk),
        .CE(ier_0[15]),
        .D(s_axi_wdata[9]),
        .Q(\ier_d_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hBFB0)) 
    \iir[0]_i_1 
       (.I0(cpu_read_iir),
        .I1(rst_n),
        .I2(\iir[2]_i_5_n_0 ),
        .I3(D[0]),
        .O(rst_n_2));
  LUT6 #(
    .INIT(64'h2202FFFF22020000)) 
    \iir[1]_i_1 
       (.I0(rst_n),
        .I1(cpu_read_iir),
        .I2(iir1),
        .I3(iir120_out),
        .I4(\iir[2]_i_5_n_0 ),
        .I5(D[1]),
        .O(rst_n_1));
  LUT6 #(
    .INIT(64'h2220FFFF22200000)) 
    \iir[2]_i_1 
       (.I0(rst_n),
        .I1(cpu_read_iir),
        .I2(iir1),
        .I3(iir120_out),
        .I4(\iir[2]_i_5_n_0 ),
        .I5(D[2]),
        .O(rst_n_0));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \iir[2]_i_2 
       (.I0(\iir[2]_i_6_n_0 ),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(\iir[2]_i_7_n_0 ),
        .O(cpu_read_iir));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \iir[2]_i_3 
       (.I0(ier[0]),
        .I1(\lsr_reg[1]_0 ),
        .O(iir1));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \iir[2]_i_4 
       (.I0(\lsr_reg[6]_0 [2]),
        .I1(\lsr_reg[6]_0 [6]),
        .I2(\lsr_reg[6]_0 [5]),
        .I3(\lsr_reg[6]_0 [3]),
        .I4(ier[2]),
        .O(iir120_out));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFBAFF)) 
    \iir[2]_i_5 
       (.I0(cpu_read_iir),
        .I1(\lsr_reg[1]_0 ),
        .I2(ier[0]),
        .I3(rst_n),
        .I4(\iir[2]_i_8_n_0 ),
        .O(\iir[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \iir[2]_i_6 
       (.I0(s_axi_araddr[8]),
        .I1(s_axi_araddr[9]),
        .I2(s_axi_araddr[11]),
        .I3(s_axi_araddr[10]),
        .O(\iir[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \iir[2]_i_7 
       (.I0(s_axi_araddr[7]),
        .I1(s_axi_araddr[6]),
        .I2(s_axi_araddr[4]),
        .I3(s_axi_araddr[5]),
        .I4(s_axi_arvalid),
        .I5(\FSM_onehot_rd_state_reg[2]_0 [0]),
        .O(\iir[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \iir[2]_i_8 
       (.I0(tdr_empty_reg),
        .I1(ier[1]),
        .I2(ocr[1]),
        .I3(iir120_out),
        .O(\iir[2]_i_8_n_0 ));
  FDRE \iir_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\iir_reg_n_0_[0] ),
        .R(SR));
  FDRE \iir_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\iir_reg_n_0_[1] ),
        .R(SR));
  FDRE \iir_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\iir_reg_n_0_[2] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \lcr_d[15]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb[1]),
        .I2(\lcr_d[31]_i_2_n_0 ),
        .I3(w_offset_r[2]),
        .I4(w_offset_r[3]),
        .I5(\lcr_d[31]_i_3_n_0 ),
        .O(lcr[15]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \lcr_d[23]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb[2]),
        .I2(\lcr_d[31]_i_2_n_0 ),
        .I3(w_offset_r[2]),
        .I4(w_offset_r[3]),
        .I5(\lcr_d[31]_i_3_n_0 ),
        .O(lcr[23]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \lcr_d[31]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb[3]),
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
       (.I0(s_axi_bready),
        .I1(s_axi_wvalid),
        .I2(w_offset_r[10]),
        .I3(w_offset_r[11]),
        .I4(w_offset_r[9]),
        .I5(w_offset_r[8]),
        .O(\lcr_d[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \lcr_d[7]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb[0]),
        .I2(\lcr_d[31]_i_2_n_0 ),
        .I3(w_offset_r[2]),
        .I4(w_offset_r[3]),
        .I5(\lcr_d[31]_i_3_n_0 ),
        .O(lcr[7]));
  FDRE \lcr_d_reg[0] 
       (.C(clk),
        .CE(lcr[7]),
        .D(s_axi_wdata[0]),
        .Q(\lcr_d_reg[7]_0 [0]),
        .R(SR));
  FDRE \lcr_d_reg[10] 
       (.C(clk),
        .CE(lcr[15]),
        .D(s_axi_wdata[10]),
        .Q(\lcr_d_reg_n_0_[10] ),
        .R(SR));
  FDRE \lcr_d_reg[11] 
       (.C(clk),
        .CE(lcr[15]),
        .D(s_axi_wdata[11]),
        .Q(\lcr_d_reg_n_0_[11] ),
        .R(SR));
  FDRE \lcr_d_reg[12] 
       (.C(clk),
        .CE(lcr[15]),
        .D(s_axi_wdata[12]),
        .Q(\lcr_d_reg_n_0_[12] ),
        .R(SR));
  FDRE \lcr_d_reg[13] 
       (.C(clk),
        .CE(lcr[15]),
        .D(s_axi_wdata[13]),
        .Q(\lcr_d_reg_n_0_[13] ),
        .R(SR));
  FDRE \lcr_d_reg[14] 
       (.C(clk),
        .CE(lcr[15]),
        .D(s_axi_wdata[14]),
        .Q(\lcr_d_reg_n_0_[14] ),
        .R(SR));
  FDRE \lcr_d_reg[15] 
       (.C(clk),
        .CE(lcr[15]),
        .D(s_axi_wdata[15]),
        .Q(\lcr_d_reg_n_0_[15] ),
        .R(SR));
  FDRE \lcr_d_reg[16] 
       (.C(clk),
        .CE(lcr[23]),
        .D(s_axi_wdata[16]),
        .Q(\lcr_d_reg_n_0_[16] ),
        .R(SR));
  FDRE \lcr_d_reg[17] 
       (.C(clk),
        .CE(lcr[23]),
        .D(s_axi_wdata[17]),
        .Q(\lcr_d_reg_n_0_[17] ),
        .R(SR));
  FDRE \lcr_d_reg[18] 
       (.C(clk),
        .CE(lcr[23]),
        .D(s_axi_wdata[18]),
        .Q(\lcr_d_reg_n_0_[18] ),
        .R(SR));
  FDRE \lcr_d_reg[19] 
       (.C(clk),
        .CE(lcr[23]),
        .D(s_axi_wdata[19]),
        .Q(\lcr_d_reg_n_0_[19] ),
        .R(SR));
  FDRE \lcr_d_reg[1] 
       (.C(clk),
        .CE(lcr[7]),
        .D(s_axi_wdata[1]),
        .Q(\lcr_d_reg[7]_0 [1]),
        .R(SR));
  FDRE \lcr_d_reg[20] 
       (.C(clk),
        .CE(lcr[23]),
        .D(s_axi_wdata[20]),
        .Q(\lcr_d_reg_n_0_[20] ),
        .R(SR));
  FDRE \lcr_d_reg[21] 
       (.C(clk),
        .CE(lcr[23]),
        .D(s_axi_wdata[21]),
        .Q(\lcr_d_reg_n_0_[21] ),
        .R(SR));
  FDRE \lcr_d_reg[22] 
       (.C(clk),
        .CE(lcr[23]),
        .D(s_axi_wdata[22]),
        .Q(\lcr_d_reg_n_0_[22] ),
        .R(SR));
  FDRE \lcr_d_reg[23] 
       (.C(clk),
        .CE(lcr[23]),
        .D(s_axi_wdata[23]),
        .Q(\lcr_d_reg_n_0_[23] ),
        .R(SR));
  FDRE \lcr_d_reg[24] 
       (.C(clk),
        .CE(lcr[31]),
        .D(s_axi_wdata[24]),
        .Q(\lcr_d_reg_n_0_[24] ),
        .R(SR));
  FDRE \lcr_d_reg[25] 
       (.C(clk),
        .CE(lcr[31]),
        .D(s_axi_wdata[25]),
        .Q(\lcr_d_reg_n_0_[25] ),
        .R(SR));
  FDRE \lcr_d_reg[26] 
       (.C(clk),
        .CE(lcr[31]),
        .D(s_axi_wdata[26]),
        .Q(\lcr_d_reg_n_0_[26] ),
        .R(SR));
  FDRE \lcr_d_reg[27] 
       (.C(clk),
        .CE(lcr[31]),
        .D(s_axi_wdata[27]),
        .Q(\lcr_d_reg_n_0_[27] ),
        .R(SR));
  FDRE \lcr_d_reg[28] 
       (.C(clk),
        .CE(lcr[31]),
        .D(s_axi_wdata[28]),
        .Q(\lcr_d_reg_n_0_[28] ),
        .R(SR));
  FDRE \lcr_d_reg[29] 
       (.C(clk),
        .CE(lcr[31]),
        .D(s_axi_wdata[29]),
        .Q(\lcr_d_reg_n_0_[29] ),
        .R(SR));
  FDRE \lcr_d_reg[2] 
       (.C(clk),
        .CE(lcr[7]),
        .D(s_axi_wdata[2]),
        .Q(\lcr_d_reg[7]_0 [2]),
        .R(SR));
  FDRE \lcr_d_reg[30] 
       (.C(clk),
        .CE(lcr[31]),
        .D(s_axi_wdata[30]),
        .Q(\lcr_d_reg_n_0_[30] ),
        .R(SR));
  FDRE \lcr_d_reg[31] 
       (.C(clk),
        .CE(lcr[31]),
        .D(s_axi_wdata[31]),
        .Q(\lcr_d_reg_n_0_[31] ),
        .R(SR));
  FDRE \lcr_d_reg[3] 
       (.C(clk),
        .CE(lcr[7]),
        .D(s_axi_wdata[3]),
        .Q(\lcr_d_reg[7]_0 [3]),
        .R(SR));
  FDRE \lcr_d_reg[4] 
       (.C(clk),
        .CE(lcr[7]),
        .D(s_axi_wdata[4]),
        .Q(\lcr_d_reg[7]_0 [4]),
        .R(SR));
  FDRE \lcr_d_reg[5] 
       (.C(clk),
        .CE(lcr[7]),
        .D(s_axi_wdata[5]),
        .Q(\lcr_d_reg[7]_0 [5]),
        .R(SR));
  FDRE \lcr_d_reg[6] 
       (.C(clk),
        .CE(lcr[7]),
        .D(s_axi_wdata[6]),
        .Q(\lcr_d_reg[7]_0 [6]),
        .R(SR));
  FDRE \lcr_d_reg[7] 
       (.C(clk),
        .CE(lcr[7]),
        .D(s_axi_wdata[7]),
        .Q(\lcr_d_reg[7]_0 [7]),
        .R(SR));
  FDRE \lcr_d_reg[8] 
       (.C(clk),
        .CE(lcr[15]),
        .D(s_axi_wdata[8]),
        .Q(\lcr_d_reg_n_0_[8] ),
        .R(SR));
  FDRE \lcr_d_reg[9] 
       (.C(clk),
        .CE(lcr[15]),
        .D(s_axi_wdata[9]),
        .Q(\lcr_d_reg_n_0_[9] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hE000E0E0E0E0E0E0)) 
    \lsr[0]_i_1 
       (.I0(\lsr_reg[6]_0 [0]),
        .I1(lsr0_set),
        .I2(rst_n),
        .I3(\lsr_reg[6]_1 [0]),
        .I4(p_35_in),
        .I5(s_axi_rdata[0]),
        .O(\lsr_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \lsr[1]_i_1 
       (.I0(rst_n),
        .I1(\lsr_reg[1]_0 ),
        .I2(Q[0]),
        .I3(fifo_rx_empty),
        .O(rst_n_7));
  LUT6 #(
    .INIT(64'hA8A8A8A800A8A8A8)) 
    \lsr[2]_i_1 
       (.I0(rst_n),
        .I1(parity_err),
        .I2(\lsr_reg[6]_0 [2]),
        .I3(s_axi_rdata[2]),
        .I4(p_35_in),
        .I5(\lsr_reg[6]_1 [1]),
        .O(rst_n_3));
  LUT6 #(
    .INIT(64'hA8A8A8A800A8A8A8)) 
    \lsr[3]_i_1 
       (.I0(rst_n),
        .I1(stop_bit_err),
        .I2(\lsr_reg[6]_0 [3]),
        .I3(s_axi_rdata[3]),
        .I4(p_35_in),
        .I5(\lsr_reg[6]_1 [2]),
        .O(rst_n_4));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hA280)) 
    \lsr[4]_i_1 
       (.I0(rst_n),
        .I1(Q[0]),
        .I2(fifo_tx_empty),
        .I3(tdr_empty_reg),
        .O(rst_n_6));
  LUT6 #(
    .INIT(64'hA8A8A8A800A8A8A8)) 
    \lsr[5]_i_1 
       (.I0(rst_n),
        .I1(\lsr_reg[5]_0 ),
        .I2(\lsr_reg[6]_0 [5]),
        .I3(s_axi_rdata[5]),
        .I4(p_35_in),
        .I5(\lsr_reg[6]_1 [3]),
        .O(rst_n_5));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \lsr[5]_i_3 
       (.I0(\iir[2]_i_6_n_0 ),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(\iir[2]_i_7_n_0 ),
        .O(p_35_in));
  LUT5 #(
    .INIT(32'h44400000)) 
    \lsr[6]_i_4 
       (.I0(\lsr_reg[6]_1 [4]),
        .I1(p_35_in),
        .I2(\lsr[6]_i_5_n_0 ),
        .I3(\s_axi_rdata[6]_INST_0_i_1_n_0 ),
        .I4(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(lsr6_reset));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \lsr[6]_i_5 
       (.I0(\hcr_d_reg_n_0_[6] ),
        .I1(\s_axi_rdata[6]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[6]_INST_0_i_3_n_0 ),
        .I3(r_offset_r[0]),
        .I4(r_offset_r[4]),
        .I5(r_offset_r[5]),
        .O(\lsr[6]_i_5_n_0 ));
  FDRE \lsr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\lsr_reg[6]_0 [0]),
        .Q(\lsr_reg_n_0_[0] ),
        .R(SR));
  FDRE \lsr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\lsr_reg[6]_0 [1]),
        .Q(\lsr_reg_n_0_[1] ),
        .R(SR));
  FDRE \lsr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\lsr_reg[6]_0 [2]),
        .Q(\lsr_reg_n_0_[2] ),
        .R(SR));
  FDRE \lsr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\lsr_reg[6]_0 [3]),
        .Q(\lsr_reg_n_0_[3] ),
        .R(SR));
  FDRE \lsr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\lsr_reg[6]_0 [4]),
        .Q(\lsr_reg_n_0_[4] ),
        .R(SR));
  FDRE \lsr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\lsr_reg[6]_0 [5]),
        .Q(\lsr_reg_n_0_[5] ),
        .R(SR));
  FDRE \lsr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\lsr_reg[6]_0 [6]),
        .Q(\lsr_reg_n_0_[6] ),
        .R(SR));
  LUT4 #(
    .INIT(16'h4000)) 
    \ocr_d[15]_i_1 
       (.I0(ocr[1]),
        .I1(s_axi_wstrb[1]),
        .I2(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I3(ocr1__4),
        .O(\ocr_d[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \ocr_d[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(ocr1__4),
        .I2(s_axi_wstrb[0]),
        .I3(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I4(ocr[1]),
        .O(\ocr_d[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \ocr_d[23]_i_1 
       (.I0(ocr[1]),
        .I1(s_axi_wstrb[2]),
        .I2(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I3(ocr1__4),
        .O(\ocr_d[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \ocr_d[31]_i_1 
       (.I0(ocr[1]),
        .I1(s_axi_wstrb[3]),
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
        .I1(s_axi_wstrb[0]),
        .I2(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I3(ocr[1]),
        .O(\ocr_d[7]_i_1_n_0 ));
  FDRE \ocr_d_reg[0] 
       (.C(clk),
        .CE(\ocr_d[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(ocr[0]),
        .R(SR));
  FDRE \ocr_d_reg[10] 
       (.C(clk),
        .CE(\ocr_d[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ocr_d_reg_n_0_[10] ),
        .R(SR));
  FDRE \ocr_d_reg[11] 
       (.C(clk),
        .CE(\ocr_d[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ocr_d_reg_n_0_[11] ),
        .R(SR));
  FDRE \ocr_d_reg[12] 
       (.C(clk),
        .CE(\ocr_d[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ocr_d_reg_n_0_[12] ),
        .R(SR));
  FDRE \ocr_d_reg[13] 
       (.C(clk),
        .CE(\ocr_d[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ocr_d_reg_n_0_[13] ),
        .R(SR));
  FDRE \ocr_d_reg[14] 
       (.C(clk),
        .CE(\ocr_d[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ocr_d_reg_n_0_[14] ),
        .R(SR));
  FDRE \ocr_d_reg[15] 
       (.C(clk),
        .CE(\ocr_d[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ocr_d_reg_n_0_[15] ),
        .R(SR));
  FDRE \ocr_d_reg[16] 
       (.C(clk),
        .CE(\ocr_d[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ocr_d_reg_n_0_[16] ),
        .R(SR));
  FDRE \ocr_d_reg[17] 
       (.C(clk),
        .CE(\ocr_d[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ocr_d_reg_n_0_[17] ),
        .R(SR));
  FDRE \ocr_d_reg[18] 
       (.C(clk),
        .CE(\ocr_d[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ocr_d_reg_n_0_[18] ),
        .R(SR));
  FDRE \ocr_d_reg[19] 
       (.C(clk),
        .CE(\ocr_d[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ocr_d_reg_n_0_[19] ),
        .R(SR));
  FDRE \ocr_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\ocr_d[1]_i_1_n_0 ),
        .Q(ocr[1]),
        .R(SR));
  FDRE \ocr_d_reg[20] 
       (.C(clk),
        .CE(\ocr_d[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ocr_d_reg_n_0_[20] ),
        .R(SR));
  FDRE \ocr_d_reg[21] 
       (.C(clk),
        .CE(\ocr_d[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ocr_d_reg_n_0_[21] ),
        .R(SR));
  FDRE \ocr_d_reg[22] 
       (.C(clk),
        .CE(\ocr_d[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ocr_d_reg_n_0_[22] ),
        .R(SR));
  FDRE \ocr_d_reg[23] 
       (.C(clk),
        .CE(\ocr_d[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ocr_d_reg_n_0_[23] ),
        .R(SR));
  FDRE \ocr_d_reg[24] 
       (.C(clk),
        .CE(\ocr_d[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ocr_d_reg_n_0_[24] ),
        .R(SR));
  FDRE \ocr_d_reg[25] 
       (.C(clk),
        .CE(\ocr_d[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ocr_d_reg_n_0_[25] ),
        .R(SR));
  FDRE \ocr_d_reg[26] 
       (.C(clk),
        .CE(\ocr_d[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ocr_d_reg_n_0_[26] ),
        .R(SR));
  FDRE \ocr_d_reg[27] 
       (.C(clk),
        .CE(\ocr_d[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ocr_d_reg_n_0_[27] ),
        .R(SR));
  FDRE \ocr_d_reg[28] 
       (.C(clk),
        .CE(\ocr_d[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ocr_d_reg_n_0_[28] ),
        .R(SR));
  FDRE \ocr_d_reg[29] 
       (.C(clk),
        .CE(\ocr_d[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ocr_d_reg_n_0_[29] ),
        .R(SR));
  FDRE \ocr_d_reg[2] 
       (.C(clk),
        .CE(\ocr_d[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(ocr[2]),
        .R(SR));
  FDRE \ocr_d_reg[30] 
       (.C(clk),
        .CE(\ocr_d[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ocr_d_reg_n_0_[30] ),
        .R(SR));
  FDRE \ocr_d_reg[31] 
       (.C(clk),
        .CE(\ocr_d[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ocr_d_reg_n_0_[31] ),
        .R(SR));
  FDRE \ocr_d_reg[3] 
       (.C(clk),
        .CE(\ocr_d[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ocr_d_reg_n_0_[3] ),
        .R(SR));
  FDRE \ocr_d_reg[4] 
       (.C(clk),
        .CE(\ocr_d[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ocr_d_reg_n_0_[4] ),
        .R(SR));
  FDRE \ocr_d_reg[5] 
       (.C(clk),
        .CE(\ocr_d[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ocr_d_reg_n_0_[5] ),
        .R(SR));
  FDRE \ocr_d_reg[6] 
       (.C(clk),
        .CE(\ocr_d[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ocr_d_reg_n_0_[6] ),
        .R(SR));
  FDRE \ocr_d_reg[7] 
       (.C(clk),
        .CE(\ocr_d[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ocr_d_reg_n_0_[7] ),
        .R(SR));
  FDRE \ocr_d_reg[8] 
       (.C(clk),
        .CE(\ocr_d[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ocr_d_reg_n_0_[8] ),
        .R(SR));
  FDRE \ocr_d_reg[9] 
       (.C(clk),
        .CE(\ocr_d[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ocr_d_reg_n_0_[9] ),
        .R(SR));
  FDRE \r_offset_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_araddr[0]),
        .Q(r_offset_r[0]),
        .R(SR));
  FDRE \r_offset_r_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_araddr[10]),
        .Q(r_offset_r[10]),
        .R(SR));
  FDRE \r_offset_r_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_araddr[11]),
        .Q(r_offset_r[11]),
        .R(SR));
  FDRE \r_offset_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_araddr[1]),
        .Q(r_offset_r[1]),
        .R(SR));
  FDRE \r_offset_r_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_araddr[2]),
        .Q(r_offset_r[2]),
        .R(SR));
  FDRE \r_offset_r_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_araddr[3]),
        .Q(r_offset_r[3]),
        .R(SR));
  FDRE \r_offset_r_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_araddr[4]),
        .Q(r_offset_r[4]),
        .R(SR));
  FDRE \r_offset_r_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_araddr[5]),
        .Q(r_offset_r[5]),
        .R(SR));
  FDRE \r_offset_r_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_araddr[6]),
        .Q(r_offset_r[6]),
        .R(SR));
  FDRE \r_offset_r_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_araddr[7]),
        .Q(r_offset_r[7]),
        .R(SR));
  FDRE \r_offset_r_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_araddr[8]),
        .Q(r_offset_r[8]),
        .R(SR));
  FDRE \r_offset_r_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_araddr[9]),
        .Q(r_offset_r[9]),
        .R(SR));
  FDRE \rdr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\rdr_reg[7]_0 [0]),
        .Q(rdr[0]),
        .R(SR));
  FDRE \rdr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\rdr_reg[7]_0 [1]),
        .Q(rdr[1]),
        .R(SR));
  FDRE \rdr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\rdr_reg[7]_0 [2]),
        .Q(rdr[2]),
        .R(SR));
  FDRE \rdr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\rdr_reg[7]_0 [3]),
        .Q(rdr[3]),
        .R(SR));
  FDRE \rdr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\rdr_reg[7]_0 [4]),
        .Q(rdr[4]),
        .R(SR));
  FDRE \rdr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\rdr_reg[7]_0 [5]),
        .Q(rdr[5]),
        .R(SR));
  FDRE \rdr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\rdr_reg[7]_0 [6]),
        .Q(rdr[6]),
        .R(SR));
  FDRE \rdr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\rdr_reg[7]_0 [7]),
        .Q(rdr[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000AA00E200AA00)) 
    rts_no_i_1
       (.I0(rts_no_reg_0),
        .I1(rts_no_i_2_n_0),
        .I2(\uart_rx_top_inst/rts_no04_out ),
        .I3(rst_n),
        .I4(\hcr_d_reg[0]_0 ),
        .I5(hcr),
        .O(rts_no_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFF888FFFF)) 
    rts_no_i_2
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(rts_no_reg_0),
        .I3(fifo_rx_empty),
        .I4(Q[0]),
        .I5(fifo_rx_triggered),
        .O(rts_no_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFD50055)) 
    rts_no_i_3
       (.I0(\lsr_reg[1]_0 ),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(fifo_rx_triggered),
        .O(\uart_rx_top_inst/rts_no04_out ));
  LUT6 #(
    .INIT(64'hAAAAAAAA02000000)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[0]),
        .I2(r_offset_r[5]),
        .I3(r_offset_r[4]),
        .I4(\s_axi_rdata[0]_INST_0_i_1_n_0 ),
        .I5(\s_axi_rdata[0]_INST_0_i_2_n_0 ),
        .O(s_axi_rdata[0]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[0]_INST_0_i_1 
       (.I0(Q[0]),
        .I1(\iir_reg_n_0_[0] ),
        .I2(r_offset_r[3]),
        .I3(r_offset_r[2]),
        .I4(\lsr_reg_n_0_[0] ),
        .I5(ier[0]),
        .O(\s_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \s_axi_rdata[0]_INST_0_i_2 
       (.I0(\hcr_d_reg[0]_0 ),
        .I1(\s_axi_rdata[6]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[0]_INST_0_i_3_n_0 ),
        .I3(r_offset_r[0]),
        .I4(r_offset_r[4]),
        .I5(r_offset_r[5]),
        .O(\s_axi_rdata[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[0]_INST_0_i_3 
       (.I0(rdr[0]),
        .I1(ocr[0]),
        .I2(r_offset_r[3]),
        .I3(r_offset_r[2]),
        .I4(\tdr_d_reg[7]_1 [0]),
        .I5(\lcr_d_reg[7]_0 [0]),
        .O(\s_axi_rdata[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[10] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[10]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[10]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[10]_INST_0_i_1 
       (.I0(\s_axi_rdata[10]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[10] ),
        .I2(\fcr_d_reg_n_0_[10] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[10]_INST_0_i_2 
       (.I0(tdr_d[10]),
        .I1(\lcr_d_reg_n_0_[10] ),
        .I2(\ocr_d_reg_n_0_[10] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[11] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[11]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[11]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[11]_INST_0_i_1 
       (.I0(\s_axi_rdata[11]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[11] ),
        .I2(\fcr_d_reg_n_0_[11] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[11]_INST_0_i_2 
       (.I0(tdr_d[11]),
        .I1(\lcr_d_reg_n_0_[11] ),
        .I2(\ocr_d_reg_n_0_[11] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[12] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[12]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[12]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[12]_INST_0_i_1 
       (.I0(\s_axi_rdata[12]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[12] ),
        .I2(\fcr_d_reg_n_0_[12] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[12]_INST_0_i_2 
       (.I0(tdr_d[12]),
        .I1(\lcr_d_reg_n_0_[12] ),
        .I2(\ocr_d_reg_n_0_[12] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[13] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[13]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[13]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[13]_INST_0_i_1 
       (.I0(\s_axi_rdata[13]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[13] ),
        .I2(\fcr_d_reg_n_0_[13] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[13]_INST_0_i_2 
       (.I0(tdr_d[13]),
        .I1(\lcr_d_reg_n_0_[13] ),
        .I2(\ocr_d_reg_n_0_[13] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[14] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[14]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[14]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[14]_INST_0_i_1 
       (.I0(\s_axi_rdata[14]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[14] ),
        .I2(\fcr_d_reg_n_0_[14] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[14]_INST_0_i_2 
       (.I0(tdr_d[14]),
        .I1(\lcr_d_reg_n_0_[14] ),
        .I2(\ocr_d_reg_n_0_[14] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[15] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[15]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[15]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[15]_INST_0_i_1 
       (.I0(\s_axi_rdata[15]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[15] ),
        .I2(\fcr_d_reg_n_0_[15] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[15]_INST_0_i_2 
       (.I0(tdr_d[15]),
        .I1(\lcr_d_reg_n_0_[15] ),
        .I2(\ocr_d_reg_n_0_[15] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[16] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[16]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[16]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[16]_INST_0_i_1 
       (.I0(\s_axi_rdata[16]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[16] ),
        .I2(\fcr_d_reg_n_0_[16] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[16]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[16]_INST_0_i_2 
       (.I0(tdr_d[16]),
        .I1(\lcr_d_reg_n_0_[16] ),
        .I2(\ocr_d_reg_n_0_[16] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[17] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[17]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[17]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[17]_INST_0_i_1 
       (.I0(\s_axi_rdata[17]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[17] ),
        .I2(\fcr_d_reg_n_0_[17] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[17]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[17]_INST_0_i_2 
       (.I0(tdr_d[17]),
        .I1(\lcr_d_reg_n_0_[17] ),
        .I2(\ocr_d_reg_n_0_[17] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[17]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[18] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[18]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[18]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[18]_INST_0_i_1 
       (.I0(\s_axi_rdata[18]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[18] ),
        .I2(\fcr_d_reg_n_0_[18] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[18]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[18]_INST_0_i_2 
       (.I0(tdr_d[18]),
        .I1(\lcr_d_reg_n_0_[18] ),
        .I2(\ocr_d_reg_n_0_[18] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[19] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[19]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[19]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[19]_INST_0_i_1 
       (.I0(\s_axi_rdata[19]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[19] ),
        .I2(\fcr_d_reg_n_0_[19] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[19]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[19]_INST_0_i_2 
       (.I0(tdr_d[19]),
        .I1(\lcr_d_reg_n_0_[19] ),
        .I2(\ocr_d_reg_n_0_[19] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[19]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA02000000)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[0]),
        .I2(r_offset_r[5]),
        .I3(r_offset_r[4]),
        .I4(\s_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I5(\s_axi_rdata[1]_INST_0_i_2_n_0 ),
        .O(s_axi_rdata[1]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[1]_INST_0_i_1 
       (.I0(Q[1]),
        .I1(\iir_reg_n_0_[1] ),
        .I2(r_offset_r[3]),
        .I3(r_offset_r[2]),
        .I4(\lsr_reg_n_0_[1] ),
        .I5(ier[1]),
        .O(\s_axi_rdata[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \s_axi_rdata[1]_INST_0_i_2 
       (.I0(hcr),
        .I1(\s_axi_rdata[6]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[1]_INST_0_i_3_n_0 ),
        .I3(r_offset_r[0]),
        .I4(r_offset_r[4]),
        .I5(r_offset_r[5]),
        .O(\s_axi_rdata[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[1]_INST_0_i_3 
       (.I0(rdr[1]),
        .I1(ocr[1]),
        .I2(r_offset_r[3]),
        .I3(r_offset_r[2]),
        .I4(\tdr_d_reg[7]_1 [1]),
        .I5(\lcr_d_reg[7]_0 [1]),
        .O(\s_axi_rdata[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[20] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[20]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[20]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[20]_INST_0_i_1 
       (.I0(\s_axi_rdata[20]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[20] ),
        .I2(\fcr_d_reg_n_0_[20] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[20]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[20]_INST_0_i_2 
       (.I0(tdr_d[20]),
        .I1(\lcr_d_reg_n_0_[20] ),
        .I2(\ocr_d_reg_n_0_[20] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[20]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[21] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[21]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[21]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[21]_INST_0_i_1 
       (.I0(\s_axi_rdata[21]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[21] ),
        .I2(\fcr_d_reg_n_0_[21] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[21]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[21]_INST_0_i_2 
       (.I0(tdr_d[21]),
        .I1(\lcr_d_reg_n_0_[21] ),
        .I2(\ocr_d_reg_n_0_[21] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[22] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[22]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[22]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[22]_INST_0_i_1 
       (.I0(\s_axi_rdata[22]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[22] ),
        .I2(\fcr_d_reg_n_0_[22] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[22]_INST_0_i_2 
       (.I0(tdr_d[22]),
        .I1(\lcr_d_reg_n_0_[22] ),
        .I2(\ocr_d_reg_n_0_[22] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[22]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[23] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[23]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[23]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[23]_INST_0_i_1 
       (.I0(\s_axi_rdata[23]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[23] ),
        .I2(\fcr_d_reg_n_0_[23] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[23]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[23]_INST_0_i_2 
       (.I0(tdr_d[23]),
        .I1(\lcr_d_reg_n_0_[23] ),
        .I2(\ocr_d_reg_n_0_[23] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[24] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[24]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[24]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[24]_INST_0_i_1 
       (.I0(\s_axi_rdata[24]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[24] ),
        .I2(\fcr_d_reg_n_0_[24] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[24]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[24]_INST_0_i_2 
       (.I0(tdr_d[24]),
        .I1(\lcr_d_reg_n_0_[24] ),
        .I2(\ocr_d_reg_n_0_[24] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[25] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[25]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[25]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[25]_INST_0_i_1 
       (.I0(\s_axi_rdata[25]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[25] ),
        .I2(\fcr_d_reg_n_0_[25] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[25]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[25]_INST_0_i_2 
       (.I0(tdr_d[25]),
        .I1(\lcr_d_reg_n_0_[25] ),
        .I2(\ocr_d_reg_n_0_[25] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[26] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[26]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[26]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[26]_INST_0_i_1 
       (.I0(\s_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[26] ),
        .I2(\fcr_d_reg_n_0_[26] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[26]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[26]_INST_0_i_2 
       (.I0(tdr_d[26]),
        .I1(\lcr_d_reg_n_0_[26] ),
        .I2(\ocr_d_reg_n_0_[26] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[27] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[27]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[27]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[27]_INST_0_i_1 
       (.I0(\s_axi_rdata[27]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[27] ),
        .I2(\fcr_d_reg_n_0_[27] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[27]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[27]_INST_0_i_2 
       (.I0(tdr_d[27]),
        .I1(\lcr_d_reg_n_0_[27] ),
        .I2(\ocr_d_reg_n_0_[27] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[27]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[28] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[28]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[28]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[28]_INST_0_i_1 
       (.I0(\s_axi_rdata[28]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[28] ),
        .I2(\fcr_d_reg_n_0_[28] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[28]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[28]_INST_0_i_2 
       (.I0(tdr_d[28]),
        .I1(\lcr_d_reg_n_0_[28] ),
        .I2(\ocr_d_reg_n_0_[28] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[28]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[29]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[29] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[29]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[29]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[29]_INST_0_i_1 
       (.I0(\s_axi_rdata[29]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[29] ),
        .I2(\fcr_d_reg_n_0_[29] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[29]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[29]_INST_0_i_2 
       (.I0(tdr_d[29]),
        .I1(\lcr_d_reg_n_0_[29] ),
        .I2(\ocr_d_reg_n_0_[29] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[29]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA02000000)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[0]),
        .I2(r_offset_r[5]),
        .I3(r_offset_r[4]),
        .I4(\s_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I5(\s_axi_rdata[2]_INST_0_i_2_n_0 ),
        .O(s_axi_rdata[2]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[2]_INST_0_i_1 
       (.I0(Q[2]),
        .I1(\iir_reg_n_0_[2] ),
        .I2(r_offset_r[3]),
        .I3(r_offset_r[2]),
        .I4(\lsr_reg_n_0_[2] ),
        .I5(ier[2]),
        .O(\s_axi_rdata[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \s_axi_rdata[2]_INST_0_i_2 
       (.I0(\hcr_d_reg_n_0_[2] ),
        .I1(\s_axi_rdata[6]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[2]_INST_0_i_3_n_0 ),
        .I3(r_offset_r[0]),
        .I4(r_offset_r[4]),
        .I5(r_offset_r[5]),
        .O(\s_axi_rdata[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[2]_INST_0_i_3 
       (.I0(rdr[2]),
        .I1(ocr[2]),
        .I2(r_offset_r[3]),
        .I3(r_offset_r[2]),
        .I4(\tdr_d_reg[7]_1 [2]),
        .I5(\lcr_d_reg[7]_0 [2]),
        .O(\s_axi_rdata[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[30] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[30]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[30]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[30]_INST_0_i_1 
       (.I0(\s_axi_rdata[30]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[30] ),
        .I2(\fcr_d_reg_n_0_[30] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[30]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[30]_INST_0_i_2 
       (.I0(tdr_d[30]),
        .I1(\lcr_d_reg_n_0_[30] ),
        .I2(\ocr_d_reg_n_0_[30] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[30]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[31] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s_axi_rdata[31]));
  LUT4 #(
    .INIT(16'h1000)) 
    \s_axi_rdata[31]_INST_0_i_1 
       (.I0(r_offset_r[1]),
        .I1(\s_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I2(s_axi_rready),
        .I3(\FSM_onehot_rd_state_reg[2]_0 [1]),
        .O(\s_axi_rdata[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \s_axi_rdata[31]_INST_0_i_2 
       (.I0(r_offset_r[5]),
        .I1(r_offset_r[0]),
        .I2(r_offset_r[4]),
        .I3(r_offset_r[3]),
        .I4(r_offset_r[2]),
        .I5(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(\s_axi_rdata[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[31]_INST_0_i_3 
       (.I0(\s_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I1(\ier_d_reg_n_0_[31] ),
        .I2(\fcr_d_reg_n_0_[31] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_axi_rdata[31]_INST_0_i_4 
       (.I0(r_offset_r[11]),
        .I1(r_offset_r[10]),
        .I2(r_offset_r[9]),
        .I3(r_offset_r[8]),
        .I4(r_offset_r[6]),
        .I5(r_offset_r[7]),
        .O(\s_axi_rdata[31]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[31]_INST_0_i_5 
       (.I0(tdr_d[31]),
        .I1(\lcr_d_reg_n_0_[31] ),
        .I2(\ocr_d_reg_n_0_[31] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[31]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \s_axi_rdata[31]_INST_0_i_6 
       (.I0(r_offset_r[5]),
        .I1(r_offset_r[4]),
        .I2(r_offset_r[0]),
        .O(\s_axi_rdata[31]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\s_axi_rdata[3]_INST_0_i_1_n_0 ),
        .I2(\hcr_d_reg_n_0_[3] ),
        .I3(\s_axi_rdata[6]_INST_0_i_2_n_0 ),
        .I4(\s_axi_rdata[3]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[6]_INST_0_i_4_n_0 ),
        .O(s_axi_rdata[3]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \s_axi_rdata[3]_INST_0_i_1 
       (.I0(\s_axi_rdata[6]_INST_0_i_5_n_0 ),
        .I1(Q[3]),
        .I2(r_offset_r[2]),
        .I3(r_offset_r[3]),
        .I4(\ier_d_reg_n_0_[3] ),
        .I5(\lsr_reg_n_0_[3] ),
        .O(\s_axi_rdata[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[3]_INST_0_i_2 
       (.I0(rdr[3]),
        .I1(\ocr_d_reg_n_0_[3] ),
        .I2(r_offset_r[3]),
        .I3(r_offset_r[2]),
        .I4(\tdr_d_reg[7]_1 [3]),
        .I5(\lcr_d_reg[7]_0 [3]),
        .O(\s_axi_rdata[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\s_axi_rdata[4]_INST_0_i_1_n_0 ),
        .I2(\hcr_d_reg_n_0_[4] ),
        .I3(\s_axi_rdata[6]_INST_0_i_2_n_0 ),
        .I4(\s_axi_rdata[4]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[6]_INST_0_i_4_n_0 ),
        .O(s_axi_rdata[4]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \s_axi_rdata[4]_INST_0_i_1 
       (.I0(\s_axi_rdata[6]_INST_0_i_5_n_0 ),
        .I1(Q[4]),
        .I2(r_offset_r[2]),
        .I3(r_offset_r[3]),
        .I4(\ier_d_reg_n_0_[4] ),
        .I5(\lsr_reg_n_0_[4] ),
        .O(\s_axi_rdata[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[4]_INST_0_i_2 
       (.I0(rdr[4]),
        .I1(\ocr_d_reg_n_0_[4] ),
        .I2(r_offset_r[3]),
        .I3(r_offset_r[2]),
        .I4(\tdr_d_reg[7]_1 [4]),
        .I5(\lcr_d_reg[7]_0 [4]),
        .O(\s_axi_rdata[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\s_axi_rdata[5]_INST_0_i_1_n_0 ),
        .I2(\hcr_d_reg_n_0_[5] ),
        .I3(\s_axi_rdata[6]_INST_0_i_2_n_0 ),
        .I4(\s_axi_rdata[5]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[6]_INST_0_i_4_n_0 ),
        .O(s_axi_rdata[5]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \s_axi_rdata[5]_INST_0_i_1 
       (.I0(\s_axi_rdata[6]_INST_0_i_5_n_0 ),
        .I1(\fcr_d_reg_n_0_[5] ),
        .I2(r_offset_r[2]),
        .I3(r_offset_r[3]),
        .I4(\ier_d_reg_n_0_[5] ),
        .I5(\lsr_reg_n_0_[5] ),
        .O(\s_axi_rdata[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[5]_INST_0_i_2 
       (.I0(rdr[5]),
        .I1(\ocr_d_reg_n_0_[5] ),
        .I2(r_offset_r[3]),
        .I3(r_offset_r[2]),
        .I4(\tdr_d_reg[7]_1 [5]),
        .I5(\lcr_d_reg[7]_0 [5]),
        .O(\s_axi_rdata[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\s_axi_rdata[6]_INST_0_i_1_n_0 ),
        .I2(\hcr_d_reg_n_0_[6] ),
        .I3(\s_axi_rdata[6]_INST_0_i_2_n_0 ),
        .I4(\s_axi_rdata[6]_INST_0_i_3_n_0 ),
        .I5(\s_axi_rdata[6]_INST_0_i_4_n_0 ),
        .O(s_axi_rdata[6]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \s_axi_rdata[6]_INST_0_i_1 
       (.I0(\s_axi_rdata[6]_INST_0_i_5_n_0 ),
        .I1(\fcr_d_reg_n_0_[6] ),
        .I2(r_offset_r[2]),
        .I3(r_offset_r[3]),
        .I4(\ier_d_reg_n_0_[6] ),
        .I5(\lsr_reg_n_0_[6] ),
        .O(\s_axi_rdata[6]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \s_axi_rdata[6]_INST_0_i_2 
       (.I0(r_offset_r[2]),
        .I1(r_offset_r[3]),
        .I2(r_offset_r[4]),
        .I3(r_offset_r[0]),
        .I4(r_offset_r[5]),
        .O(\s_axi_rdata[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[6]_INST_0_i_3 
       (.I0(rdr[6]),
        .I1(\ocr_d_reg_n_0_[6] ),
        .I2(r_offset_r[3]),
        .I3(r_offset_r[2]),
        .I4(\tdr_d_reg[7]_1 [6]),
        .I5(\lcr_d_reg[7]_0 [6]),
        .O(\s_axi_rdata[6]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \s_axi_rdata[6]_INST_0_i_4 
       (.I0(r_offset_r[0]),
        .I1(r_offset_r[4]),
        .I2(r_offset_r[5]),
        .O(\s_axi_rdata[6]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axi_rdata[6]_INST_0_i_5 
       (.I0(r_offset_r[4]),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .O(\s_axi_rdata[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[7] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[7]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[7]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[7]_INST_0_i_1 
       (.I0(\s_axi_rdata[7]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[7] ),
        .I2(\fcr_d_reg_n_0_[7] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[7]_INST_0_i_2 
       (.I0(rdr[7]),
        .I1(\ocr_d_reg_n_0_[7] ),
        .I2(r_offset_r[3]),
        .I3(r_offset_r[2]),
        .I4(\tdr_d_reg[7]_1 [7]),
        .I5(\lcr_d_reg[7]_0 [7]),
        .O(\s_axi_rdata[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[8] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[8]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[8]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[8]_INST_0_i_1 
       (.I0(\s_axi_rdata[8]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[8] ),
        .I2(\fcr_d_reg_n_0_[8] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[8]_INST_0_i_2 
       (.I0(tdr_d[8]),
        .I1(\lcr_d_reg_n_0_[8] ),
        .I2(\ocr_d_reg_n_0_[8] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF020202FF000000)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(r_offset_r[5]),
        .I2(r_offset_r[0]),
        .I3(\hcr_d_reg_n_0_[9] ),
        .I4(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s_axi_rdata[9]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[9]));
  LUT6 #(
    .INIT(64'h00AACCAAF0AA00AA)) 
    \s_axi_rdata[9]_INST_0_i_1 
       (.I0(\s_axi_rdata[9]_INST_0_i_2_n_0 ),
        .I1(\ier_d_reg_n_0_[9] ),
        .I2(\fcr_d_reg_n_0_[9] ),
        .I3(\s_axi_rdata[31]_INST_0_i_6_n_0 ),
        .I4(r_offset_r[2]),
        .I5(r_offset_r[3]),
        .O(\s_axi_rdata[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s_axi_rdata[9]_INST_0_i_2 
       (.I0(tdr_d[9]),
        .I1(\lcr_d_reg_n_0_[9] ),
        .I2(\ocr_d_reg_n_0_[9] ),
        .I3(r_offset_r[2]),
        .I4(r_offset_r[3]),
        .O(\s_axi_rdata[9]_INST_0_i_2_n_0 ));
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
        .I1(s_axi_wstrb[1]),
        .I2(\lcr_d[31]_i_2_n_0 ),
        .I3(w_offset_r[3]),
        .I4(w_offset_r[2]),
        .I5(\lcr_d[31]_i_3_n_0 ),
        .O(tdr[15]));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \tdr_d[23]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb[2]),
        .I2(\lcr_d[31]_i_2_n_0 ),
        .I3(w_offset_r[3]),
        .I4(w_offset_r[2]),
        .I5(\lcr_d[31]_i_3_n_0 ),
        .O(tdr[23]));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \tdr_d[31]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb[3]),
        .I2(\lcr_d[31]_i_2_n_0 ),
        .I3(w_offset_r[3]),
        .I4(w_offset_r[2]),
        .I5(\lcr_d[31]_i_3_n_0 ),
        .O(tdr[31]));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \tdr_d[7]_i_1 
       (.I0(\FSM_onehot_wr_state_reg[3]_0 [1]),
        .I1(s_axi_wstrb[0]),
        .I2(\lcr_d[31]_i_2_n_0 ),
        .I3(w_offset_r[3]),
        .I4(w_offset_r[2]),
        .I5(\lcr_d[31]_i_3_n_0 ),
        .O(tdr[7]));
  FDRE \tdr_d_reg[0] 
       (.C(clk),
        .CE(tdr[7]),
        .D(s_axi_wdata[0]),
        .Q(\tdr_d_reg[7]_1 [0]),
        .R(SR));
  FDRE \tdr_d_reg[10] 
       (.C(clk),
        .CE(tdr[15]),
        .D(s_axi_wdata[10]),
        .Q(tdr_d[10]),
        .R(SR));
  FDRE \tdr_d_reg[11] 
       (.C(clk),
        .CE(tdr[15]),
        .D(s_axi_wdata[11]),
        .Q(tdr_d[11]),
        .R(SR));
  FDRE \tdr_d_reg[12] 
       (.C(clk),
        .CE(tdr[15]),
        .D(s_axi_wdata[12]),
        .Q(tdr_d[12]),
        .R(SR));
  FDRE \tdr_d_reg[13] 
       (.C(clk),
        .CE(tdr[15]),
        .D(s_axi_wdata[13]),
        .Q(tdr_d[13]),
        .R(SR));
  FDRE \tdr_d_reg[14] 
       (.C(clk),
        .CE(tdr[15]),
        .D(s_axi_wdata[14]),
        .Q(tdr_d[14]),
        .R(SR));
  FDRE \tdr_d_reg[15] 
       (.C(clk),
        .CE(tdr[15]),
        .D(s_axi_wdata[15]),
        .Q(tdr_d[15]),
        .R(SR));
  FDRE \tdr_d_reg[16] 
       (.C(clk),
        .CE(tdr[23]),
        .D(s_axi_wdata[16]),
        .Q(tdr_d[16]),
        .R(SR));
  FDRE \tdr_d_reg[17] 
       (.C(clk),
        .CE(tdr[23]),
        .D(s_axi_wdata[17]),
        .Q(tdr_d[17]),
        .R(SR));
  FDRE \tdr_d_reg[18] 
       (.C(clk),
        .CE(tdr[23]),
        .D(s_axi_wdata[18]),
        .Q(tdr_d[18]),
        .R(SR));
  FDRE \tdr_d_reg[19] 
       (.C(clk),
        .CE(tdr[23]),
        .D(s_axi_wdata[19]),
        .Q(tdr_d[19]),
        .R(SR));
  FDRE \tdr_d_reg[1] 
       (.C(clk),
        .CE(tdr[7]),
        .D(s_axi_wdata[1]),
        .Q(\tdr_d_reg[7]_1 [1]),
        .R(SR));
  FDRE \tdr_d_reg[20] 
       (.C(clk),
        .CE(tdr[23]),
        .D(s_axi_wdata[20]),
        .Q(tdr_d[20]),
        .R(SR));
  FDRE \tdr_d_reg[21] 
       (.C(clk),
        .CE(tdr[23]),
        .D(s_axi_wdata[21]),
        .Q(tdr_d[21]),
        .R(SR));
  FDRE \tdr_d_reg[22] 
       (.C(clk),
        .CE(tdr[23]),
        .D(s_axi_wdata[22]),
        .Q(tdr_d[22]),
        .R(SR));
  FDRE \tdr_d_reg[23] 
       (.C(clk),
        .CE(tdr[23]),
        .D(s_axi_wdata[23]),
        .Q(tdr_d[23]),
        .R(SR));
  FDRE \tdr_d_reg[24] 
       (.C(clk),
        .CE(tdr[31]),
        .D(s_axi_wdata[24]),
        .Q(tdr_d[24]),
        .R(SR));
  FDRE \tdr_d_reg[25] 
       (.C(clk),
        .CE(tdr[31]),
        .D(s_axi_wdata[25]),
        .Q(tdr_d[25]),
        .R(SR));
  FDRE \tdr_d_reg[26] 
       (.C(clk),
        .CE(tdr[31]),
        .D(s_axi_wdata[26]),
        .Q(tdr_d[26]),
        .R(SR));
  FDRE \tdr_d_reg[27] 
       (.C(clk),
        .CE(tdr[31]),
        .D(s_axi_wdata[27]),
        .Q(tdr_d[27]),
        .R(SR));
  FDRE \tdr_d_reg[28] 
       (.C(clk),
        .CE(tdr[31]),
        .D(s_axi_wdata[28]),
        .Q(tdr_d[28]),
        .R(SR));
  FDRE \tdr_d_reg[29] 
       (.C(clk),
        .CE(tdr[31]),
        .D(s_axi_wdata[29]),
        .Q(tdr_d[29]),
        .R(SR));
  FDRE \tdr_d_reg[2] 
       (.C(clk),
        .CE(tdr[7]),
        .D(s_axi_wdata[2]),
        .Q(\tdr_d_reg[7]_1 [2]),
        .R(SR));
  FDRE \tdr_d_reg[30] 
       (.C(clk),
        .CE(tdr[31]),
        .D(s_axi_wdata[30]),
        .Q(tdr_d[30]),
        .R(SR));
  FDRE \tdr_d_reg[31] 
       (.C(clk),
        .CE(tdr[31]),
        .D(s_axi_wdata[31]),
        .Q(tdr_d[31]),
        .R(SR));
  FDRE \tdr_d_reg[3] 
       (.C(clk),
        .CE(tdr[7]),
        .D(s_axi_wdata[3]),
        .Q(\tdr_d_reg[7]_1 [3]),
        .R(SR));
  FDRE \tdr_d_reg[4] 
       (.C(clk),
        .CE(tdr[7]),
        .D(s_axi_wdata[4]),
        .Q(\tdr_d_reg[7]_1 [4]),
        .R(SR));
  FDRE \tdr_d_reg[5] 
       (.C(clk),
        .CE(tdr[7]),
        .D(s_axi_wdata[5]),
        .Q(\tdr_d_reg[7]_1 [5]),
        .R(SR));
  FDRE \tdr_d_reg[6] 
       (.C(clk),
        .CE(tdr[7]),
        .D(s_axi_wdata[6]),
        .Q(\tdr_d_reg[7]_1 [6]),
        .R(SR));
  FDRE \tdr_d_reg[7] 
       (.C(clk),
        .CE(tdr[7]),
        .D(s_axi_wdata[7]),
        .Q(\tdr_d_reg[7]_1 [7]),
        .R(SR));
  FDRE \tdr_d_reg[8] 
       (.C(clk),
        .CE(tdr[15]),
        .D(s_axi_wdata[8]),
        .Q(tdr_d[8]),
        .R(SR));
  FDRE \tdr_d_reg[9] 
       (.C(clk),
        .CE(tdr[15]),
        .D(s_axi_wdata[9]),
        .Q(tdr_d[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h55444544)) 
    tdr_empty_i_1
       (.I0(cpu_write_tdr_d),
        .I1(tdr_empty_reg),
        .I2(Q[0]),
        .I3(ocr[1]),
        .I4(fifo_tx_empty),
        .O(cpu_write_tdr_d_reg));
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
  FDRE \w_offset_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_awaddr[0]),
        .Q(w_offset_r[0]),
        .R(SR));
  FDRE \w_offset_r_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_awaddr[10]),
        .Q(w_offset_r[10]),
        .R(SR));
  FDRE \w_offset_r_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_awaddr[11]),
        .Q(w_offset_r[11]),
        .R(SR));
  FDRE \w_offset_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_awaddr[1]),
        .Q(w_offset_r[1]),
        .R(SR));
  FDRE \w_offset_r_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_awaddr[2]),
        .Q(w_offset_r[2]),
        .R(SR));
  FDRE \w_offset_r_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_awaddr[3]),
        .Q(w_offset_r[3]),
        .R(SR));
  FDRE \w_offset_r_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_awaddr[4]),
        .Q(w_offset_r[4]),
        .R(SR));
  FDRE \w_offset_r_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_awaddr[5]),
        .Q(w_offset_r[5]),
        .R(SR));
  FDRE \w_offset_r_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_awaddr[6]),
        .Q(w_offset_r[6]),
        .R(SR));
  FDRE \w_offset_r_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_awaddr[7]),
        .Q(w_offset_r[7]),
        .R(SR));
  FDRE \w_offset_r_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_awaddr[8]),
        .Q(w_offset_r[8]),
        .R(SR));
  FDRE \w_offset_r_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_awaddr[9]),
        .Q(w_offset_r[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \wr_ptr[3]_i_1__0 
       (.I0(Q[1]),
        .I1(rst_n),
        .O(\fcr_d_reg[1]_0 ));
endmodule

(* SAMPLING_RATE = "16" *) (* SYSTEM_FREQUENCY = "50000000" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4_uart
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

  wire \<const0> ;
  wire [13:0]BIT_PERIOD_TX;
  wire baud_o;
  wire clk;
  wire cpu_write_tdr;
  wire cpu_write_tdr_d;
  wire cts_n;
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
  wire [4:0]lcr;
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
  wire rts_n;
  wire rx;
  wire [31:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata_prev_reg_n_0_[0] ;
  wire \s_axi_rdata_prev_reg_n_0_[2] ;
  wire \s_axi_rdata_prev_reg_n_0_[3] ;
  wire \s_axi_rdata_prev_reg_n_0_[5] ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [7:7]shift_regs;
  wire stop_bit_err;
  wire [7:0]tdr_d;
  wire tdr_empty_reg_n_0;
  wire tick_rx;
  wire [2:0]total_data_size;
  wire tx;
  wire uart_rx_top_inst_n_10;
  wire uart_rx_top_inst_n_4;
  wire uart_rx_top_inst_n_9;
  wire \uart_tx_inst/transmitter_controller_inst/p_2_in ;
  wire uart_tx_top_inst_n_12;
  wire uart_tx_top_inst_n_17;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baud_generator baud_gen_inst
       (.BIT_PERIOD_TX(BIT_PERIOD_TX),
        .E(tick_rx),
        .Q({inst_axi4_lite_n_24,inst_axi4_lite_n_25,inst_axi4_lite_n_26}),
        .SR(inst_axi4_lite_n_75),
        .baud_o(baud_o),
        .clk(clk),
        .rst_n(rst_n));
  FDRE cpu_write_tdr_d_reg
       (.C(clk),
        .CE(1'b1),
        .D(cpu_write_tdr),
        .Q(cpu_write_tdr_d),
        .R(inst_axi4_lite_n_75));
  FDRE fifo_rx_pop_reg
       (.C(clk),
        .CE(1'b1),
        .D(fifo_rx_pop_ready),
        .Q(fifo_rx_pop),
        .R(inst_axi4_lite_n_75));
  FDRE \iir_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_axi4_lite_n_2),
        .Q(\iir_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \iir_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_axi4_lite_n_1),
        .Q(\iir_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \iir_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_axi4_lite_n_0),
        .Q(\iir_reg_n_0_[2] ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4_lite inst_axi4_lite
       (.BIT_PERIOD_TX(BIT_PERIOD_TX),
        .D({\iir_reg_n_0_[2] ,\iir_reg_n_0_[1] ,\iir_reg_n_0_[0] }),
        .\FSM_onehot_rd_state_reg[2]_0 ({s_axi_rvalid,s_axi_arready}),
        .\FSM_onehot_wr_state_reg[3]_0 ({s_axi_bvalid,s_axi_wready,s_axi_awready}),
        .Q({fifo_rx_trig_level_i,fcr}),
        .SR(inst_axi4_lite_n_75),
        .clk(clk),
        .cpu_write_tdr(cpu_write_tdr),
        .cpu_write_tdr_d(cpu_write_tdr_d),
        .cpu_write_tdr_d_reg(inst_axi4_lite_n_114),
        .cts_sync(cts_sync),
        .\data_o_reg[7] (shift_regs),
        .\fcr_d_reg[1]_0 (inst_axi4_lite_n_67),
        .\fcr_d_reg[2]_0 (\fifo_tx_inst/count ),
        .fifo_rx_empty(fifo_rx_empty),
        .fifo_rx_triggered(fifo_rx_triggered),
        .fifo_tx_empty(fifo_tx_empty),
        .fifo_tx_o(fifo_tx_o),
        .\hcr_d_reg[0]_0 (hcr),
        .\lcr_d_reg[0]_0 ({inst_axi4_lite_n_88,data_size}),
        .\lcr_d_reg[2]_0 ({inst_axi4_lite_n_79,total_data_size}),
        .\lcr_d_reg[2]_1 ({inst_axi4_lite_n_83,inst_axi4_lite_n_84,inst_axi4_lite_n_85,inst_axi4_lite_n_86}),
        .\lcr_d_reg[7]_0 ({inst_axi4_lite_n_24,inst_axi4_lite_n_25,inst_axi4_lite_n_26,lcr}),
        .lsr0_set(lsr0_set),
        .lsr6_reset(lsr6_reset),
        .\lsr_reg[0]_0 (inst_axi4_lite_n_34),
        .\lsr_reg[1]_0 (rdr_empty_reg_n_0),
        .\lsr_reg[5]_0 (uart_rx_top_inst_n_9),
        .\lsr_reg[6]_0 ({p_2_in,\lsr_reg_n_0_[5] ,\lsr_reg_n_0_[4] ,\lsr_reg_n_0_[3] ,\lsr_reg_n_0_[2] ,\lsr_reg_n_0_[1] ,\lsr_reg_n_0_[0] }),
        .\lsr_reg[6]_1 ({p_0_in,\s_axi_rdata_prev_reg_n_0_[5] ,\s_axi_rdata_prev_reg_n_0_[3] ,\s_axi_rdata_prev_reg_n_0_[2] ,\s_axi_rdata_prev_reg_n_0_[0] }),
        .ocr(ocr),
        .p_2_in(\uart_tx_inst/transmitter_controller_inst/p_2_in ),
        .p_38_in(p_38_in),
        .parity_err(parity_err),
        .\rdr_reg[7]_0 ({\rdr_reg_n_0_[7] ,\rdr_reg_n_0_[6] ,\rdr_reg_n_0_[5] ,\rdr_reg_n_0_[4] ,\rdr_reg_n_0_[3] ,\rdr_reg_n_0_[2] ,\rdr_reg_n_0_[1] ,\rdr_reg_n_0_[0] }),
        .rst_n(rst_n),
        .rst_n_0(inst_axi4_lite_n_0),
        .rst_n_1(inst_axi4_lite_n_1),
        .rst_n_2(inst_axi4_lite_n_2),
        .rst_n_3(inst_axi4_lite_n_68),
        .rst_n_4(inst_axi4_lite_n_69),
        .rst_n_5(inst_axi4_lite_n_70),
        .rst_n_6(inst_axi4_lite_n_112),
        .rst_n_7(inst_axi4_lite_n_113),
        .rts_no_reg(inst_axi4_lite_n_32),
        .rts_no_reg_0(rts_n),
        .s_axi_araddr(s_axi_araddr[11:0]),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[11:0]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .\shift_regs_reg[7] (data),
        .stop_bit_err(stop_bit_err),
        .\tdr_d_reg[7]_0 ({inst_axi4_lite_n_3,data__0}),
        .\tdr_d_reg[7]_1 (tdr_d),
        .tdr_empty_reg(tdr_empty_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    irq_INST_0
       (.I0(\iir_reg_n_0_[0] ),
        .O(irq));
  FDRE \lsr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_axi4_lite_n_34),
        .Q(\lsr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \lsr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_axi4_lite_n_113),
        .Q(\lsr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \lsr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_axi4_lite_n_68),
        .Q(\lsr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \lsr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_axi4_lite_n_69),
        .Q(\lsr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \lsr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_axi4_lite_n_112),
        .Q(\lsr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \lsr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_axi4_lite_n_70),
        .Q(\lsr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \lsr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(uart_rx_top_inst_n_4),
        .Q(p_2_in),
        .R(1'b0));
  FDSE rdr_empty_reg
       (.C(clk),
        .CE(1'b1),
        .D(uart_rx_top_inst_n_10),
        .Q(rdr_empty_reg_n_0),
        .S(inst_axi4_lite_n_75));
  FDRE \rdr_reg[0] 
       (.C(clk),
        .CE(data_o_valid),
        .D(data_o[0]),
        .Q(\rdr_reg_n_0_[0] ),
        .R(inst_axi4_lite_n_75));
  FDRE \rdr_reg[1] 
       (.C(clk),
        .CE(data_o_valid),
        .D(data_o[1]),
        .Q(\rdr_reg_n_0_[1] ),
        .R(inst_axi4_lite_n_75));
  FDRE \rdr_reg[2] 
       (.C(clk),
        .CE(data_o_valid),
        .D(data_o[2]),
        .Q(\rdr_reg_n_0_[2] ),
        .R(inst_axi4_lite_n_75));
  FDRE \rdr_reg[3] 
       (.C(clk),
        .CE(data_o_valid),
        .D(data_o[3]),
        .Q(\rdr_reg_n_0_[3] ),
        .R(inst_axi4_lite_n_75));
  FDRE \rdr_reg[4] 
       (.C(clk),
        .CE(data_o_valid),
        .D(data_o[4]),
        .Q(\rdr_reg_n_0_[4] ),
        .R(inst_axi4_lite_n_75));
  FDRE \rdr_reg[5] 
       (.C(clk),
        .CE(data_o_valid),
        .D(data_o[5]),
        .Q(\rdr_reg_n_0_[5] ),
        .R(inst_axi4_lite_n_75));
  FDRE \rdr_reg[6] 
       (.C(clk),
        .CE(data_o_valid),
        .D(data_o[6]),
        .Q(\rdr_reg_n_0_[6] ),
        .R(inst_axi4_lite_n_75));
  FDRE \rdr_reg[7] 
       (.C(clk),
        .CE(data_o_valid),
        .D(data_o[7]),
        .Q(\rdr_reg_n_0_[7] ),
        .R(inst_axi4_lite_n_75));
  FDRE \s_axi_rdata_prev_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_rdata[0]),
        .Q(\s_axi_rdata_prev_reg_n_0_[0] ),
        .R(inst_axi4_lite_n_75));
  FDRE \s_axi_rdata_prev_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_rdata[2]),
        .Q(\s_axi_rdata_prev_reg_n_0_[2] ),
        .R(inst_axi4_lite_n_75));
  FDRE \s_axi_rdata_prev_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_rdata[3]),
        .Q(\s_axi_rdata_prev_reg_n_0_[3] ),
        .R(inst_axi4_lite_n_75));
  FDRE \s_axi_rdata_prev_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_rdata[5]),
        .Q(\s_axi_rdata_prev_reg_n_0_[5] ),
        .R(inst_axi4_lite_n_75));
  FDRE \s_axi_rdata_prev_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_rdata[6]),
        .Q(p_0_in),
        .R(inst_axi4_lite_n_75));
  FDSE tdr_empty_reg
       (.C(clk),
        .CE(1'b1),
        .D(inst_axi4_lite_n_114),
        .Q(tdr_empty_reg_n_0),
        .S(inst_axi4_lite_n_75));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx_top uart_rx_top_inst
       (.D(data),
        .E(data_o_valid),
        .Q(data_size_sampled),
        .SR(inst_axi4_lite_n_75),
        .clk(clk),
        .\clk_div_reg[0] (tick_rx),
        .data_o(data_o),
        .data_o_valid_reg_0(uart_rx_top_inst_n_10),
        .\fcr_d_reg[0] (uart_rx_top_inst_n_9),
        .fifo_rx_empty(fifo_rx_empty),
        .fifo_rx_pop(fifo_rx_pop),
        .fifo_rx_pop_ready(fifo_rx_pop_ready),
        .fifo_rx_triggered(fifo_rx_triggered),
        .lsr6_reset(lsr6_reset),
        .\lsr_reg[6] (p_2_in),
        .ocr(ocr[2]),
        .p_38_in(p_38_in),
        .parity_err(parity_err),
        .parity_err_o_reg(lcr),
        .\rd_ptr_reg[0] (inst_axi4_lite_n_67),
        .rdr_empty_reg(rdr_empty_reg_n_0),
        .rst_n(rst_n),
        .rst_n_0(uart_rx_top_inst_n_4),
        .rts_no_i_2({fifo_rx_trig_level_i,fcr[1:0]}),
        .rts_no_reg_0(rts_n),
        .rts_no_reg_1(inst_axi4_lite_n_32),
        .rx(rx),
        .\shift_regs_reg[7] (shift_regs),
        .stop_bit_1_check_sampled_reg(uart_tx_top_inst_n_17),
        .stop_bit_2_check_sampled_reg(uart_tx_top_inst_n_12),
        .stop_bit_err(stop_bit_err),
        .\total_data_size_sampled_reg[3] ({inst_axi4_lite_n_79,total_data_size}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx_top uart_tx_top_inst
       (.D({inst_axi4_lite_n_3,data__0}),
        .\FSM_sequential_current_state_reg[1] (hcr),
        .Q({fcr[2],fcr[0]}),
        .SR(inst_axi4_lite_n_75),
        .baud_o(baud_o),
        .clk(clk),
        .cpu_write_tdr_d(cpu_write_tdr_d),
        .cts_n(cts_n),
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
        .rst_n(rst_n),
        .\sampled_data_reg[7] (tdr_d),
        .\total_data_sampled_reg[3] ({inst_axi4_lite_n_83,inst_axi4_lite_n_84,inst_axi4_lite_n_85,inst_axi4_lite_n_86}),
        .tx(tx),
        .\wr_ptr_reg[0] (\fifo_tx_inst/count ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baud_generator
   (baud_o,
    E,
    SR,
    clk,
    BIT_PERIOD_TX,
    rst_n,
    Q);
  output baud_o;
  output [0:0]E;
  input [0:0]SR;
  input clk;
  input [13:0]BIT_PERIOD_TX;
  input rst_n;
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
  wire clk;
  wire counter_rx0;
  wire counter_rx0_carry__0_i_1_n_0;
  wire counter_rx0_carry__0_i_2_n_0;
  wire counter_rx0_carry__0_i_3_n_0;
  wire counter_rx0_carry__0_i_4_n_0;
  wire counter_rx0_carry__0_i_5_n_0;
  wire counter_rx0_carry__0_n_0;
  wire counter_rx0_carry__0_n_1;
  wire counter_rx0_carry__0_n_2;
  wire counter_rx0_carry__0_n_3;
  wire counter_rx0_carry__1_i_1_n_0;
  wire counter_rx0_carry__1_i_2_n_0;
  wire counter_rx0_carry__1_i_3_n_0;
  wire counter_rx0_carry__1_n_2;
  wire counter_rx0_carry__1_n_3;
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
  wire counter_rx0_carry_n_1;
  wire counter_rx0_carry_n_2;
  wire counter_rx0_carry_n_3;
  wire \counter_rx[0]_i_1_n_0 ;
  wire \counter_rx[0]_i_3_n_0 ;
  wire [31:0]counter_rx_reg;
  wire \counter_rx_reg[0]_i_2_n_0 ;
  wire \counter_rx_reg[0]_i_2_n_1 ;
  wire \counter_rx_reg[0]_i_2_n_2 ;
  wire \counter_rx_reg[0]_i_2_n_3 ;
  wire \counter_rx_reg[0]_i_2_n_4 ;
  wire \counter_rx_reg[0]_i_2_n_5 ;
  wire \counter_rx_reg[0]_i_2_n_6 ;
  wire \counter_rx_reg[0]_i_2_n_7 ;
  wire \counter_rx_reg[12]_i_1_n_0 ;
  wire \counter_rx_reg[12]_i_1_n_1 ;
  wire \counter_rx_reg[12]_i_1_n_2 ;
  wire \counter_rx_reg[12]_i_1_n_3 ;
  wire \counter_rx_reg[12]_i_1_n_4 ;
  wire \counter_rx_reg[12]_i_1_n_5 ;
  wire \counter_rx_reg[12]_i_1_n_6 ;
  wire \counter_rx_reg[12]_i_1_n_7 ;
  wire \counter_rx_reg[16]_i_1_n_0 ;
  wire \counter_rx_reg[16]_i_1_n_1 ;
  wire \counter_rx_reg[16]_i_1_n_2 ;
  wire \counter_rx_reg[16]_i_1_n_3 ;
  wire \counter_rx_reg[16]_i_1_n_4 ;
  wire \counter_rx_reg[16]_i_1_n_5 ;
  wire \counter_rx_reg[16]_i_1_n_6 ;
  wire \counter_rx_reg[16]_i_1_n_7 ;
  wire \counter_rx_reg[20]_i_1_n_0 ;
  wire \counter_rx_reg[20]_i_1_n_1 ;
  wire \counter_rx_reg[20]_i_1_n_2 ;
  wire \counter_rx_reg[20]_i_1_n_3 ;
  wire \counter_rx_reg[20]_i_1_n_4 ;
  wire \counter_rx_reg[20]_i_1_n_5 ;
  wire \counter_rx_reg[20]_i_1_n_6 ;
  wire \counter_rx_reg[20]_i_1_n_7 ;
  wire \counter_rx_reg[24]_i_1_n_0 ;
  wire \counter_rx_reg[24]_i_1_n_1 ;
  wire \counter_rx_reg[24]_i_1_n_2 ;
  wire \counter_rx_reg[24]_i_1_n_3 ;
  wire \counter_rx_reg[24]_i_1_n_4 ;
  wire \counter_rx_reg[24]_i_1_n_5 ;
  wire \counter_rx_reg[24]_i_1_n_6 ;
  wire \counter_rx_reg[24]_i_1_n_7 ;
  wire \counter_rx_reg[28]_i_1_n_1 ;
  wire \counter_rx_reg[28]_i_1_n_2 ;
  wire \counter_rx_reg[28]_i_1_n_3 ;
  wire \counter_rx_reg[28]_i_1_n_4 ;
  wire \counter_rx_reg[28]_i_1_n_5 ;
  wire \counter_rx_reg[28]_i_1_n_6 ;
  wire \counter_rx_reg[28]_i_1_n_7 ;
  wire \counter_rx_reg[4]_i_1_n_0 ;
  wire \counter_rx_reg[4]_i_1_n_1 ;
  wire \counter_rx_reg[4]_i_1_n_2 ;
  wire \counter_rx_reg[4]_i_1_n_3 ;
  wire \counter_rx_reg[4]_i_1_n_4 ;
  wire \counter_rx_reg[4]_i_1_n_5 ;
  wire \counter_rx_reg[4]_i_1_n_6 ;
  wire \counter_rx_reg[4]_i_1_n_7 ;
  wire \counter_rx_reg[8]_i_1_n_0 ;
  wire \counter_rx_reg[8]_i_1_n_1 ;
  wire \counter_rx_reg[8]_i_1_n_2 ;
  wire \counter_rx_reg[8]_i_1_n_3 ;
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
  wire counter_tx0_carry__0_n_1;
  wire counter_tx0_carry__0_n_2;
  wire counter_tx0_carry__0_n_3;
  wire counter_tx0_carry__1_i_1_n_0;
  wire counter_tx0_carry__1_i_2_n_0;
  wire counter_tx0_carry__1_i_3_n_0;
  wire counter_tx0_carry__1_n_2;
  wire counter_tx0_carry__1_n_3;
  wire counter_tx0_carry_i_1_n_0;
  wire counter_tx0_carry_i_2_n_0;
  wire counter_tx0_carry_i_3_n_0;
  wire counter_tx0_carry_i_4_n_0;
  wire counter_tx0_carry_n_0;
  wire counter_tx0_carry_n_1;
  wire counter_tx0_carry_n_2;
  wire counter_tx0_carry_n_3;
  wire [13:1]counter_tx1;
  wire counter_tx1_carry__0_i_1_n_0;
  wire counter_tx1_carry__0_i_2_n_0;
  wire counter_tx1_carry__0_i_3_n_0;
  wire counter_tx1_carry__0_i_4_n_0;
  wire counter_tx1_carry__0_n_0;
  wire counter_tx1_carry__0_n_1;
  wire counter_tx1_carry__0_n_2;
  wire counter_tx1_carry__0_n_3;
  wire counter_tx1_carry__1_i_1_n_0;
  wire counter_tx1_carry__1_i_2_n_0;
  wire counter_tx1_carry__1_i_3_n_0;
  wire counter_tx1_carry__1_i_4_n_0;
  wire counter_tx1_carry__1_n_0;
  wire counter_tx1_carry__1_n_1;
  wire counter_tx1_carry__1_n_2;
  wire counter_tx1_carry__1_n_3;
  wire counter_tx1_carry__2_i_1_n_0;
  wire counter_tx1_carry__2_n_2;
  wire counter_tx1_carry_i_1_n_0;
  wire counter_tx1_carry_i_2_n_0;
  wire counter_tx1_carry_i_3_n_0;
  wire counter_tx1_carry_i_4_n_0;
  wire counter_tx1_carry_n_0;
  wire counter_tx1_carry_n_1;
  wire counter_tx1_carry_n_2;
  wire counter_tx1_carry_n_3;
  wire \counter_tx[0]_i_1_n_0 ;
  wire \counter_tx[0]_i_3_n_0 ;
  wire [31:0]counter_tx_reg;
  wire \counter_tx_reg[0]_i_2_n_0 ;
  wire \counter_tx_reg[0]_i_2_n_1 ;
  wire \counter_tx_reg[0]_i_2_n_2 ;
  wire \counter_tx_reg[0]_i_2_n_3 ;
  wire \counter_tx_reg[0]_i_2_n_4 ;
  wire \counter_tx_reg[0]_i_2_n_5 ;
  wire \counter_tx_reg[0]_i_2_n_6 ;
  wire \counter_tx_reg[0]_i_2_n_7 ;
  wire \counter_tx_reg[12]_i_1_n_0 ;
  wire \counter_tx_reg[12]_i_1_n_1 ;
  wire \counter_tx_reg[12]_i_1_n_2 ;
  wire \counter_tx_reg[12]_i_1_n_3 ;
  wire \counter_tx_reg[12]_i_1_n_4 ;
  wire \counter_tx_reg[12]_i_1_n_5 ;
  wire \counter_tx_reg[12]_i_1_n_6 ;
  wire \counter_tx_reg[12]_i_1_n_7 ;
  wire \counter_tx_reg[16]_i_1_n_0 ;
  wire \counter_tx_reg[16]_i_1_n_1 ;
  wire \counter_tx_reg[16]_i_1_n_2 ;
  wire \counter_tx_reg[16]_i_1_n_3 ;
  wire \counter_tx_reg[16]_i_1_n_4 ;
  wire \counter_tx_reg[16]_i_1_n_5 ;
  wire \counter_tx_reg[16]_i_1_n_6 ;
  wire \counter_tx_reg[16]_i_1_n_7 ;
  wire \counter_tx_reg[20]_i_1_n_0 ;
  wire \counter_tx_reg[20]_i_1_n_1 ;
  wire \counter_tx_reg[20]_i_1_n_2 ;
  wire \counter_tx_reg[20]_i_1_n_3 ;
  wire \counter_tx_reg[20]_i_1_n_4 ;
  wire \counter_tx_reg[20]_i_1_n_5 ;
  wire \counter_tx_reg[20]_i_1_n_6 ;
  wire \counter_tx_reg[20]_i_1_n_7 ;
  wire \counter_tx_reg[24]_i_1_n_0 ;
  wire \counter_tx_reg[24]_i_1_n_1 ;
  wire \counter_tx_reg[24]_i_1_n_2 ;
  wire \counter_tx_reg[24]_i_1_n_3 ;
  wire \counter_tx_reg[24]_i_1_n_4 ;
  wire \counter_tx_reg[24]_i_1_n_5 ;
  wire \counter_tx_reg[24]_i_1_n_6 ;
  wire \counter_tx_reg[24]_i_1_n_7 ;
  wire \counter_tx_reg[28]_i_1_n_1 ;
  wire \counter_tx_reg[28]_i_1_n_2 ;
  wire \counter_tx_reg[28]_i_1_n_3 ;
  wire \counter_tx_reg[28]_i_1_n_4 ;
  wire \counter_tx_reg[28]_i_1_n_5 ;
  wire \counter_tx_reg[28]_i_1_n_6 ;
  wire \counter_tx_reg[28]_i_1_n_7 ;
  wire \counter_tx_reg[4]_i_1_n_0 ;
  wire \counter_tx_reg[4]_i_1_n_1 ;
  wire \counter_tx_reg[4]_i_1_n_2 ;
  wire \counter_tx_reg[4]_i_1_n_3 ;
  wire \counter_tx_reg[4]_i_1_n_4 ;
  wire \counter_tx_reg[4]_i_1_n_5 ;
  wire \counter_tx_reg[4]_i_1_n_6 ;
  wire \counter_tx_reg[4]_i_1_n_7 ;
  wire \counter_tx_reg[8]_i_1_n_0 ;
  wire \counter_tx_reg[8]_i_1_n_1 ;
  wire \counter_tx_reg[8]_i_1_n_2 ;
  wire \counter_tx_reg[8]_i_1_n_3 ;
  wire \counter_tx_reg[8]_i_1_n_4 ;
  wire \counter_tx_reg[8]_i_1_n_5 ;
  wire \counter_tx_reg[8]_i_1_n_6 ;
  wire \counter_tx_reg[8]_i_1_n_7 ;
  wire rst_n;
  wire tick_rx_i_1_n_0;
  wire tick_tx_i_1_n_0;
  wire [3:0]NLW_counter_rx0_carry_O_UNCONNECTED;
  wire [3:0]NLW_counter_rx0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_counter_rx0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_counter_rx0_carry__1_O_UNCONNECTED;
  wire [3:3]\NLW_counter_rx_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_counter_tx0_carry_O_UNCONNECTED;
  wire [3:0]NLW_counter_tx0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_counter_tx0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_counter_tx0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_counter_tx1_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_counter_tx1_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_counter_tx_reg[28]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hB)) 
    \BIT_PERIOD_TX[3]_i_1 
       (.I0(baud_changed),
        .I1(rst_n),
        .O(BIT_PERIOD_RX));
  FDRE \BIT_PERIOD_TX_reg[0] 
       (.C(clk),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[0]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \BIT_PERIOD_TX_reg[10] 
       (.C(clk),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[10]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \BIT_PERIOD_TX_reg[11] 
       (.C(clk),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[11]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \BIT_PERIOD_TX_reg[12] 
       (.C(clk),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[12]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \BIT_PERIOD_TX_reg[13] 
       (.C(clk),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[13]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \BIT_PERIOD_TX_reg[1] 
       (.C(clk),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[1]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \BIT_PERIOD_TX_reg[2] 
       (.C(clk),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[2]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \BIT_PERIOD_TX_reg[3] 
       (.C(clk),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[3]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \BIT_PERIOD_TX_reg[4] 
       (.C(clk),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[4]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \BIT_PERIOD_TX_reg[5] 
       (.C(clk),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[5]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \BIT_PERIOD_TX_reg[6] 
       (.C(clk),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[6]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \BIT_PERIOD_TX_reg[7] 
       (.C(clk),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[7]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \BIT_PERIOD_TX_reg[8] 
       (.C(clk),
        .CE(BIT_PERIOD_RX),
        .D(BIT_PERIOD_TX[8]),
        .Q(\BIT_PERIOD_TX_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \BIT_PERIOD_TX_reg[9] 
       (.C(clk),
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
  FDRE baud_changed_reg
       (.C(clk),
        .CE(1'b1),
        .D(baud_changed_i_1_n_0),
        .Q(baud_changed),
        .R(SR));
  FDRE \baud_sl_prev_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(baud_sl_prev[0]),
        .R(SR));
  FDRE \baud_sl_prev_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(baud_sl_prev[1]),
        .R(SR));
  FDRE \baud_sl_prev_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(baud_sl_prev[2]),
        .R(SR));
  CARRY4 counter_rx0_carry
       (.CI(1'b0),
        .CO({counter_rx0_carry_n_0,counter_rx0_carry_n_1,counter_rx0_carry_n_2,counter_rx0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter_rx0_carry_O_UNCONNECTED[3:0]),
        .S({counter_rx0_carry_i_1_n_0,counter_rx0_carry_i_2_n_0,counter_rx0_carry_i_3_n_0,counter_rx0_carry_i_4_n_0}));
  CARRY4 counter_rx0_carry__0
       (.CI(counter_rx0_carry_n_0),
        .CO({counter_rx0_carry__0_n_0,counter_rx0_carry__0_n_1,counter_rx0_carry__0_n_2,counter_rx0_carry__0_n_3}),
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
        .CO({NLW_counter_rx0_carry__1_CO_UNCONNECTED[3],counter_rx0,counter_rx0_carry__1_n_2,counter_rx0_carry__1_n_3}),
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAA95556)) 
    counter_rx0_carry_i_8
       (.I0(\BIT_PERIOD_TX_reg_n_0_[7] ),
        .I1(\BIT_PERIOD_TX_reg_n_0_[5] ),
        .I2(\BIT_PERIOD_TX_reg_n_0_[4] ),
        .I3(\BIT_PERIOD_TX_reg_n_0_[6] ),
        .I4(counter_rx_reg[3]),
        .O(counter_rx0_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
       (.I0(rst_n),
        .I1(baud_changed),
        .I2(counter_rx0),
        .O(\counter_rx[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_rx[0]_i_3 
       (.I0(counter_rx_reg[0]),
        .O(\counter_rx[0]_i_3_n_0 ));
  FDRE \counter_rx_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[0]_i_2_n_7 ),
        .Q(counter_rx_reg[0]),
        .R(\counter_rx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_rx_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_rx_reg[0]_i_2_n_0 ,\counter_rx_reg[0]_i_2_n_1 ,\counter_rx_reg[0]_i_2_n_2 ,\counter_rx_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_rx_reg[0]_i_2_n_4 ,\counter_rx_reg[0]_i_2_n_5 ,\counter_rx_reg[0]_i_2_n_6 ,\counter_rx_reg[0]_i_2_n_7 }),
        .S({counter_rx_reg[3:1],\counter_rx[0]_i_3_n_0 }));
  FDRE \counter_rx_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[8]_i_1_n_5 ),
        .Q(counter_rx_reg[10]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE \counter_rx_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[8]_i_1_n_4 ),
        .Q(counter_rx_reg[11]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE \counter_rx_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[12]_i_1_n_7 ),
        .Q(counter_rx_reg[12]),
        .R(\counter_rx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_rx_reg[12]_i_1 
       (.CI(\counter_rx_reg[8]_i_1_n_0 ),
        .CO({\counter_rx_reg[12]_i_1_n_0 ,\counter_rx_reg[12]_i_1_n_1 ,\counter_rx_reg[12]_i_1_n_2 ,\counter_rx_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_rx_reg[12]_i_1_n_4 ,\counter_rx_reg[12]_i_1_n_5 ,\counter_rx_reg[12]_i_1_n_6 ,\counter_rx_reg[12]_i_1_n_7 }),
        .S(counter_rx_reg[15:12]));
  FDRE \counter_rx_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[12]_i_1_n_6 ),
        .Q(counter_rx_reg[13]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE \counter_rx_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[12]_i_1_n_5 ),
        .Q(counter_rx_reg[14]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE \counter_rx_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[12]_i_1_n_4 ),
        .Q(counter_rx_reg[15]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE \counter_rx_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[16]_i_1_n_7 ),
        .Q(counter_rx_reg[16]),
        .R(\counter_rx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_rx_reg[16]_i_1 
       (.CI(\counter_rx_reg[12]_i_1_n_0 ),
        .CO({\counter_rx_reg[16]_i_1_n_0 ,\counter_rx_reg[16]_i_1_n_1 ,\counter_rx_reg[16]_i_1_n_2 ,\counter_rx_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_rx_reg[16]_i_1_n_4 ,\counter_rx_reg[16]_i_1_n_5 ,\counter_rx_reg[16]_i_1_n_6 ,\counter_rx_reg[16]_i_1_n_7 }),
        .S(counter_rx_reg[19:16]));
  FDRE \counter_rx_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[16]_i_1_n_6 ),
        .Q(counter_rx_reg[17]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE \counter_rx_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[16]_i_1_n_5 ),
        .Q(counter_rx_reg[18]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE \counter_rx_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[16]_i_1_n_4 ),
        .Q(counter_rx_reg[19]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE \counter_rx_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[0]_i_2_n_6 ),
        .Q(counter_rx_reg[1]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE \counter_rx_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[20]_i_1_n_7 ),
        .Q(counter_rx_reg[20]),
        .R(\counter_rx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_rx_reg[20]_i_1 
       (.CI(\counter_rx_reg[16]_i_1_n_0 ),
        .CO({\counter_rx_reg[20]_i_1_n_0 ,\counter_rx_reg[20]_i_1_n_1 ,\counter_rx_reg[20]_i_1_n_2 ,\counter_rx_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_rx_reg[20]_i_1_n_4 ,\counter_rx_reg[20]_i_1_n_5 ,\counter_rx_reg[20]_i_1_n_6 ,\counter_rx_reg[20]_i_1_n_7 }),
        .S(counter_rx_reg[23:20]));
  FDRE \counter_rx_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[20]_i_1_n_6 ),
        .Q(counter_rx_reg[21]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE \counter_rx_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[20]_i_1_n_5 ),
        .Q(counter_rx_reg[22]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE \counter_rx_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[20]_i_1_n_4 ),
        .Q(counter_rx_reg[23]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE \counter_rx_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[24]_i_1_n_7 ),
        .Q(counter_rx_reg[24]),
        .R(\counter_rx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_rx_reg[24]_i_1 
       (.CI(\counter_rx_reg[20]_i_1_n_0 ),
        .CO({\counter_rx_reg[24]_i_1_n_0 ,\counter_rx_reg[24]_i_1_n_1 ,\counter_rx_reg[24]_i_1_n_2 ,\counter_rx_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_rx_reg[24]_i_1_n_4 ,\counter_rx_reg[24]_i_1_n_5 ,\counter_rx_reg[24]_i_1_n_6 ,\counter_rx_reg[24]_i_1_n_7 }),
        .S(counter_rx_reg[27:24]));
  FDRE \counter_rx_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[24]_i_1_n_6 ),
        .Q(counter_rx_reg[25]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE \counter_rx_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[24]_i_1_n_5 ),
        .Q(counter_rx_reg[26]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE \counter_rx_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[24]_i_1_n_4 ),
        .Q(counter_rx_reg[27]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE \counter_rx_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[28]_i_1_n_7 ),
        .Q(counter_rx_reg[28]),
        .R(\counter_rx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_rx_reg[28]_i_1 
       (.CI(\counter_rx_reg[24]_i_1_n_0 ),
        .CO({\NLW_counter_rx_reg[28]_i_1_CO_UNCONNECTED [3],\counter_rx_reg[28]_i_1_n_1 ,\counter_rx_reg[28]_i_1_n_2 ,\counter_rx_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_rx_reg[28]_i_1_n_4 ,\counter_rx_reg[28]_i_1_n_5 ,\counter_rx_reg[28]_i_1_n_6 ,\counter_rx_reg[28]_i_1_n_7 }),
        .S(counter_rx_reg[31:28]));
  FDRE \counter_rx_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[28]_i_1_n_6 ),
        .Q(counter_rx_reg[29]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE \counter_rx_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[0]_i_2_n_5 ),
        .Q(counter_rx_reg[2]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE \counter_rx_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[28]_i_1_n_5 ),
        .Q(counter_rx_reg[30]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE \counter_rx_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[28]_i_1_n_4 ),
        .Q(counter_rx_reg[31]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE \counter_rx_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[0]_i_2_n_4 ),
        .Q(counter_rx_reg[3]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE \counter_rx_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[4]_i_1_n_7 ),
        .Q(counter_rx_reg[4]),
        .R(\counter_rx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_rx_reg[4]_i_1 
       (.CI(\counter_rx_reg[0]_i_2_n_0 ),
        .CO({\counter_rx_reg[4]_i_1_n_0 ,\counter_rx_reg[4]_i_1_n_1 ,\counter_rx_reg[4]_i_1_n_2 ,\counter_rx_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_rx_reg[4]_i_1_n_4 ,\counter_rx_reg[4]_i_1_n_5 ,\counter_rx_reg[4]_i_1_n_6 ,\counter_rx_reg[4]_i_1_n_7 }),
        .S(counter_rx_reg[7:4]));
  FDRE \counter_rx_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[4]_i_1_n_6 ),
        .Q(counter_rx_reg[5]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE \counter_rx_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[4]_i_1_n_5 ),
        .Q(counter_rx_reg[6]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE \counter_rx_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[4]_i_1_n_4 ),
        .Q(counter_rx_reg[7]),
        .R(\counter_rx[0]_i_1_n_0 ));
  FDRE \counter_rx_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[8]_i_1_n_7 ),
        .Q(counter_rx_reg[8]),
        .R(\counter_rx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_rx_reg[8]_i_1 
       (.CI(\counter_rx_reg[4]_i_1_n_0 ),
        .CO({\counter_rx_reg[8]_i_1_n_0 ,\counter_rx_reg[8]_i_1_n_1 ,\counter_rx_reg[8]_i_1_n_2 ,\counter_rx_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_rx_reg[8]_i_1_n_4 ,\counter_rx_reg[8]_i_1_n_5 ,\counter_rx_reg[8]_i_1_n_6 ,\counter_rx_reg[8]_i_1_n_7 }),
        .S(counter_rx_reg[11:8]));
  FDRE \counter_rx_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_rx_reg[8]_i_1_n_6 ),
        .Q(counter_rx_reg[9]),
        .R(\counter_rx[0]_i_1_n_0 ));
  CARRY4 counter_tx0_carry
       (.CI(1'b0),
        .CO({counter_tx0_carry_n_0,counter_tx0_carry_n_1,counter_tx0_carry_n_2,counter_tx0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter_tx0_carry_O_UNCONNECTED[3:0]),
        .S({counter_tx0_carry_i_1_n_0,counter_tx0_carry_i_2_n_0,counter_tx0_carry_i_3_n_0,counter_tx0_carry_i_4_n_0}));
  CARRY4 counter_tx0_carry__0
       (.CI(counter_tx0_carry_n_0),
        .CO({counter_tx0_carry__0_n_0,counter_tx0_carry__0_n_1,counter_tx0_carry__0_n_2,counter_tx0_carry__0_n_3}),
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
        .CO({NLW_counter_tx0_carry__1_CO_UNCONNECTED[3],counter_tx0,counter_tx0_carry__1_n_2,counter_tx0_carry__1_n_3}),
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
        .CO({counter_tx1_carry_n_0,counter_tx1_carry_n_1,counter_tx1_carry_n_2,counter_tx1_carry_n_3}),
        .CYINIT(\BIT_PERIOD_TX_reg_n_0_[0] ),
        .DI({\BIT_PERIOD_TX_reg_n_0_[4] ,\BIT_PERIOD_TX_reg_n_0_[3] ,\BIT_PERIOD_TX_reg_n_0_[2] ,\BIT_PERIOD_TX_reg_n_0_[1] }),
        .O(counter_tx1[4:1]),
        .S({counter_tx1_carry_i_1_n_0,counter_tx1_carry_i_2_n_0,counter_tx1_carry_i_3_n_0,counter_tx1_carry_i_4_n_0}));
  CARRY4 counter_tx1_carry__0
       (.CI(counter_tx1_carry_n_0),
        .CO({counter_tx1_carry__0_n_0,counter_tx1_carry__0_n_1,counter_tx1_carry__0_n_2,counter_tx1_carry__0_n_3}),
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
        .CO({counter_tx1_carry__1_n_0,counter_tx1_carry__1_n_1,counter_tx1_carry__1_n_2,counter_tx1_carry__1_n_3}),
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
       (.I0(rst_n),
        .I1(baud_changed),
        .I2(counter_tx0),
        .O(\counter_tx[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_tx[0]_i_3 
       (.I0(counter_tx_reg[0]),
        .O(\counter_tx[0]_i_3_n_0 ));
  FDRE \counter_tx_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[0]_i_2_n_7 ),
        .Q(counter_tx_reg[0]),
        .R(\counter_tx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_tx_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_tx_reg[0]_i_2_n_0 ,\counter_tx_reg[0]_i_2_n_1 ,\counter_tx_reg[0]_i_2_n_2 ,\counter_tx_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_tx_reg[0]_i_2_n_4 ,\counter_tx_reg[0]_i_2_n_5 ,\counter_tx_reg[0]_i_2_n_6 ,\counter_tx_reg[0]_i_2_n_7 }),
        .S({counter_tx_reg[3:1],\counter_tx[0]_i_3_n_0 }));
  FDRE \counter_tx_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[8]_i_1_n_5 ),
        .Q(counter_tx_reg[10]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE \counter_tx_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[8]_i_1_n_4 ),
        .Q(counter_tx_reg[11]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE \counter_tx_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[12]_i_1_n_7 ),
        .Q(counter_tx_reg[12]),
        .R(\counter_tx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_tx_reg[12]_i_1 
       (.CI(\counter_tx_reg[8]_i_1_n_0 ),
        .CO({\counter_tx_reg[12]_i_1_n_0 ,\counter_tx_reg[12]_i_1_n_1 ,\counter_tx_reg[12]_i_1_n_2 ,\counter_tx_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_tx_reg[12]_i_1_n_4 ,\counter_tx_reg[12]_i_1_n_5 ,\counter_tx_reg[12]_i_1_n_6 ,\counter_tx_reg[12]_i_1_n_7 }),
        .S(counter_tx_reg[15:12]));
  FDRE \counter_tx_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[12]_i_1_n_6 ),
        .Q(counter_tx_reg[13]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE \counter_tx_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[12]_i_1_n_5 ),
        .Q(counter_tx_reg[14]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE \counter_tx_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[12]_i_1_n_4 ),
        .Q(counter_tx_reg[15]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE \counter_tx_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[16]_i_1_n_7 ),
        .Q(counter_tx_reg[16]),
        .R(\counter_tx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_tx_reg[16]_i_1 
       (.CI(\counter_tx_reg[12]_i_1_n_0 ),
        .CO({\counter_tx_reg[16]_i_1_n_0 ,\counter_tx_reg[16]_i_1_n_1 ,\counter_tx_reg[16]_i_1_n_2 ,\counter_tx_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_tx_reg[16]_i_1_n_4 ,\counter_tx_reg[16]_i_1_n_5 ,\counter_tx_reg[16]_i_1_n_6 ,\counter_tx_reg[16]_i_1_n_7 }),
        .S(counter_tx_reg[19:16]));
  FDRE \counter_tx_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[16]_i_1_n_6 ),
        .Q(counter_tx_reg[17]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE \counter_tx_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[16]_i_1_n_5 ),
        .Q(counter_tx_reg[18]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE \counter_tx_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[16]_i_1_n_4 ),
        .Q(counter_tx_reg[19]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE \counter_tx_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[0]_i_2_n_6 ),
        .Q(counter_tx_reg[1]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE \counter_tx_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[20]_i_1_n_7 ),
        .Q(counter_tx_reg[20]),
        .R(\counter_tx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_tx_reg[20]_i_1 
       (.CI(\counter_tx_reg[16]_i_1_n_0 ),
        .CO({\counter_tx_reg[20]_i_1_n_0 ,\counter_tx_reg[20]_i_1_n_1 ,\counter_tx_reg[20]_i_1_n_2 ,\counter_tx_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_tx_reg[20]_i_1_n_4 ,\counter_tx_reg[20]_i_1_n_5 ,\counter_tx_reg[20]_i_1_n_6 ,\counter_tx_reg[20]_i_1_n_7 }),
        .S(counter_tx_reg[23:20]));
  FDRE \counter_tx_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[20]_i_1_n_6 ),
        .Q(counter_tx_reg[21]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE \counter_tx_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[20]_i_1_n_5 ),
        .Q(counter_tx_reg[22]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE \counter_tx_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[20]_i_1_n_4 ),
        .Q(counter_tx_reg[23]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE \counter_tx_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[24]_i_1_n_7 ),
        .Q(counter_tx_reg[24]),
        .R(\counter_tx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_tx_reg[24]_i_1 
       (.CI(\counter_tx_reg[20]_i_1_n_0 ),
        .CO({\counter_tx_reg[24]_i_1_n_0 ,\counter_tx_reg[24]_i_1_n_1 ,\counter_tx_reg[24]_i_1_n_2 ,\counter_tx_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_tx_reg[24]_i_1_n_4 ,\counter_tx_reg[24]_i_1_n_5 ,\counter_tx_reg[24]_i_1_n_6 ,\counter_tx_reg[24]_i_1_n_7 }),
        .S(counter_tx_reg[27:24]));
  FDRE \counter_tx_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[24]_i_1_n_6 ),
        .Q(counter_tx_reg[25]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE \counter_tx_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[24]_i_1_n_5 ),
        .Q(counter_tx_reg[26]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE \counter_tx_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[24]_i_1_n_4 ),
        .Q(counter_tx_reg[27]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE \counter_tx_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[28]_i_1_n_7 ),
        .Q(counter_tx_reg[28]),
        .R(\counter_tx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_tx_reg[28]_i_1 
       (.CI(\counter_tx_reg[24]_i_1_n_0 ),
        .CO({\NLW_counter_tx_reg[28]_i_1_CO_UNCONNECTED [3],\counter_tx_reg[28]_i_1_n_1 ,\counter_tx_reg[28]_i_1_n_2 ,\counter_tx_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_tx_reg[28]_i_1_n_4 ,\counter_tx_reg[28]_i_1_n_5 ,\counter_tx_reg[28]_i_1_n_6 ,\counter_tx_reg[28]_i_1_n_7 }),
        .S(counter_tx_reg[31:28]));
  FDRE \counter_tx_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[28]_i_1_n_6 ),
        .Q(counter_tx_reg[29]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE \counter_tx_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[0]_i_2_n_5 ),
        .Q(counter_tx_reg[2]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE \counter_tx_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[28]_i_1_n_5 ),
        .Q(counter_tx_reg[30]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE \counter_tx_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[28]_i_1_n_4 ),
        .Q(counter_tx_reg[31]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE \counter_tx_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[0]_i_2_n_4 ),
        .Q(counter_tx_reg[3]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE \counter_tx_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[4]_i_1_n_7 ),
        .Q(counter_tx_reg[4]),
        .R(\counter_tx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_tx_reg[4]_i_1 
       (.CI(\counter_tx_reg[0]_i_2_n_0 ),
        .CO({\counter_tx_reg[4]_i_1_n_0 ,\counter_tx_reg[4]_i_1_n_1 ,\counter_tx_reg[4]_i_1_n_2 ,\counter_tx_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_tx_reg[4]_i_1_n_4 ,\counter_tx_reg[4]_i_1_n_5 ,\counter_tx_reg[4]_i_1_n_6 ,\counter_tx_reg[4]_i_1_n_7 }),
        .S(counter_tx_reg[7:4]));
  FDRE \counter_tx_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[4]_i_1_n_6 ),
        .Q(counter_tx_reg[5]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE \counter_tx_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[4]_i_1_n_5 ),
        .Q(counter_tx_reg[6]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE \counter_tx_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[4]_i_1_n_4 ),
        .Q(counter_tx_reg[7]),
        .R(\counter_tx[0]_i_1_n_0 ));
  FDRE \counter_tx_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[8]_i_1_n_7 ),
        .Q(counter_tx_reg[8]),
        .R(\counter_tx[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_tx_reg[8]_i_1 
       (.CI(\counter_tx_reg[4]_i_1_n_0 ),
        .CO({\counter_tx_reg[8]_i_1_n_0 ,\counter_tx_reg[8]_i_1_n_1 ,\counter_tx_reg[8]_i_1_n_2 ,\counter_tx_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_tx_reg[8]_i_1_n_4 ,\counter_tx_reg[8]_i_1_n_5 ,\counter_tx_reg[8]_i_1_n_6 ,\counter_tx_reg[8]_i_1_n_7 }),
        .S(counter_tx_reg[11:8]));
  FDRE \counter_tx_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_tx_reg[8]_i_1_n_6 ),
        .Q(counter_tx_reg[9]),
        .R(\counter_tx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    tick_rx_i_1
       (.I0(counter_rx0),
        .I1(rst_n),
        .I2(baud_changed),
        .O(tick_rx_i_1_n_0));
  FDRE tick_rx_reg
       (.C(clk),
        .CE(1'b1),
        .D(tick_rx_i_1_n_0),
        .Q(E),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    tick_tx_i_1
       (.I0(counter_tx0),
        .I1(rst_n),
        .I2(baud_changed),
        .O(tick_tx_i_1_n_0));
  FDRE tick_tx_reg
       (.C(clk),
        .CE(1'b1),
        .D(tick_tx_i_1_n_0),
        .Q(baud_o),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axi4_uart_0_0,axi4_uart,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "axi4_uart,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axi, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;
  input cts_n;
  input rx;
  output tx;
  output rts_n;

  wire \<const0> ;
  wire clk;
  wire cts_n;
  wire irq;
  wire rst_n;
  wire rts_n;
  wire rx;
  wire [31:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire tx;
  wire [1:0]NLW_inst_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rresp_UNCONNECTED;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SAMPLING_RATE = "16" *) 
  (* SYSTEM_FREQUENCY = "50000000" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4_uart inst
       (.clk(clk),
        .cts_n(cts_n),
        .irq(irq),
        .rst_n(rst_n),
        .rts_n(rts_n),
        .rx(rx),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_araddr[11:0]}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_awaddr[11:0]}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(NLW_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(NLW_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .tx(tx));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff
   (tx,
    SR,
    E,
    data_0,
    clk);
  output tx;
  input [0:0]SR;
  input [0:0]E;
  input data_0;
  input clk;

  wire [0:0]E;
  wire [0:0]SR;
  wire clk;
  wire data_0;
  wire tx;

  FDSE Q_reg
       (.C(clk),
        .CE(E),
        .D(data_0),
        .Q(tx),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "ff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_0
   (data_0,
    SR,
    E,
    data_1,
    clk,
    Q,
    load_d0_sampled,
    load_en_sampled);
  output data_0;
  input [0:0]SR;
  input [0:0]E;
  input data_1;
  input clk;
  input [0:0]Q;
  input load_d0_sampled;
  input load_en_sampled;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk;
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
  FDSE Q_reg
       (.C(clk),
        .CE(E),
        .D(data_1),
        .Q(f1),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "ff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_1
   (data_1,
    SR,
    E,
    data_2,
    clk,
    Q,
    load_en_sampled);
  output data_1;
  input [0:0]SR;
  input [0:0]E;
  input data_2;
  input clk;
  input [0:0]Q;
  input load_en_sampled;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk;
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
  FDSE Q_reg
       (.C(clk),
        .CE(E),
        .D(data_2),
        .Q(f2),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "ff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_2
   (data_2,
    SR,
    E,
    data_3,
    clk,
    Q,
    load_en_sampled);
  output data_2;
  input [0:0]SR;
  input [0:0]E;
  input data_3;
  input clk;
  input [0:0]Q;
  input load_en_sampled;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk;
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
  FDSE Q_reg
       (.C(clk),
        .CE(E),
        .D(data_3),
        .Q(f3),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "ff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_3
   (data_3,
    SR,
    E,
    data_4,
    clk,
    Q,
    load_en_sampled);
  output data_3;
  input [0:0]SR;
  input [0:0]E;
  input data_4;
  input clk;
  input [0:0]Q;
  input load_en_sampled;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk;
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
  FDSE Q_reg
       (.C(clk),
        .CE(E),
        .D(data_4),
        .Q(f4),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "ff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_4
   (data_4,
    SR,
    E,
    data_5,
    clk,
    Q,
    load_en_sampled);
  output data_4;
  input [0:0]SR;
  input [0:0]E;
  input data_5;
  input clk;
  input [0:0]Q;
  input load_en_sampled;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk;
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
  FDSE Q_reg
       (.C(clk),
        .CE(E),
        .D(data_5),
        .Q(f5),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "ff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_5
   (data_5,
    SR,
    E,
    data_6,
    clk,
    Q,
    load_en_sampled);
  output data_5;
  input [0:0]SR;
  input [0:0]E;
  input data_6;
  input clk;
  input [0:0]Q;
  input load_en_sampled;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk;
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
  FDSE Q_reg
       (.C(clk),
        .CE(E),
        .D(data_6),
        .Q(f6),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "ff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_6
   (data_6,
    SR,
    E,
    clk,
    Q,
    load_en_sampled);
  output data_6;
  input [0:0]SR;
  input [0:0]E;
  input clk;
  input [1:0]Q;
  input load_en_sampled;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire clk;
  wire data_6;
  wire data_7;
  wire f7;
  wire load_en_sampled;

  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Q_i_1__5
       (.I0(Q[0]),
        .I1(load_en_sampled),
        .I2(f7),
        .O(data_6));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'hB)) 
    Q_i_1__6
       (.I0(Q[1]),
        .I1(load_en_sampled),
        .O(data_7));
  FDSE Q_reg
       (.C(clk),
        .CE(E),
        .D(data_7),
        .Q(f7),
        .S(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_piso
   (tx,
    SR,
    E,
    clk,
    Q,
    load_d0_sampled,
    load_en_sampled);
  output tx;
  input [0:0]SR;
  input [0:0]E;
  input clk;
  input [7:0]Q;
  input load_d0_sampled;
  input load_en_sampled;

  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]SR;
  wire clk;
  wire data_0;
  wire data_1;
  wire data_2;
  wire data_3;
  wire data_4;
  wire data_5;
  wire data_6;
  wire load_d0_sampled;
  wire load_en_sampled;
  wire tx;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff ff_1_inst
       (.E(E),
        .SR(SR),
        .clk(clk),
        .data_0(data_0),
        .tx(tx));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_0 ff_2_inst
       (.E(E),
        .Q(Q[0]),
        .SR(SR),
        .clk(clk),
        .data_0(data_0),
        .data_1(data_1),
        .load_d0_sampled(load_d0_sampled),
        .load_en_sampled(load_en_sampled));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_1 ff_3_inst
       (.E(E),
        .Q(Q[1]),
        .SR(SR),
        .clk(clk),
        .data_1(data_1),
        .data_2(data_2),
        .load_en_sampled(load_en_sampled));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_2 ff_4_inst
       (.E(E),
        .Q(Q[2]),
        .SR(SR),
        .clk(clk),
        .data_2(data_2),
        .data_3(data_3),
        .load_en_sampled(load_en_sampled));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_3 ff_5_inst
       (.E(E),
        .Q(Q[3]),
        .SR(SR),
        .clk(clk),
        .data_3(data_3),
        .data_4(data_4),
        .load_en_sampled(load_en_sampled));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_4 ff_6_inst
       (.E(E),
        .Q(Q[4]),
        .SR(SR),
        .clk(clk),
        .data_4(data_4),
        .data_5(data_5),
        .load_en_sampled(load_en_sampled));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_5 ff_7_inst
       (.E(E),
        .Q(Q[5]),
        .SR(SR),
        .clk(clk),
        .data_5(data_5),
        .data_6(data_6),
        .load_en_sampled(load_en_sampled));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_6 ff_8_inst
       (.E(E),
        .Q(Q[7:6]),
        .SR(SR),
        .clk(clk),
        .data_6(data_6),
        .load_en_sampled(load_en_sampled));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_receiver_controller
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
    rst_n_0,
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
    rst_n,
    mem_reg_0_15_6_7__0,
    fifo_rx_full_o,
    fifo_rx_pop_d,
    fifo_rx_pop,
    fifo_rx_empty,
    \data_o_reg[0] ,
    \FSM_sequential_current_state_reg[0]_5 ,
    clk);
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
  output rst_n_0;
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
  input rst_n;
  input [1:0]mem_reg_0_15_6_7__0;
  input fifo_rx_full_o;
  input fifo_rx_pop_d;
  input fifo_rx_pop;
  input fifo_rx_empty;
  input [3:0]\data_o_reg[0] ;
  input [0:0]\FSM_sequential_current_state_reg[0]_5 ;
  input clk;

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
  wire clk;
  wire clk_1x__3;
  wire clk_2x__3;
  wire [0:0]\count_data_reg[0] ;
  wire [3:0]\count_data_reg[0]_0 ;
  wire [2:1]current_state;
  wire \data_o[7]_i_3_n_0 ;
  wire [3:0]\data_o_reg[0] ;
  wire data_valid;
  wire data_valid_d_i_2_n_0;
  wire [0:0]\fcr_d_reg[0] ;
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
  wire rst_n;
  wire rst_n_0;
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
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
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
  FDRE \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(Q),
        .R(\FSM_sequential_current_state_reg[0]_5 ));
  (* FSM_ENCODED_STATES = "RECEIVE_DATA:100,RECEIVE_PARITY:101,RECEIVE_STOP:110,FINISH:111,WAIT_START:011,SCAN:010,IDLE:000,RTS:001" *) 
  FDRE \FSM_sequential_current_state_reg[1] 
       (.C(clk),
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
  FDRE \FSM_sequential_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(next_state[2]),
        .Q(current_state[2]),
        .R(\FSM_sequential_current_state_reg[0]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \count_data[3]_i_1 
       (.I0(p_4_in),
        .I1(\total_data_size_sampled_reg[3] ),
        .I2(rst_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h7)) 
    data_valid_d_i_2
       (.I0(Q),
        .I1(current_state[1]),
        .O(data_valid_d_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
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
        .I1(rst_n),
        .I2(mem_reg_0_15_6_7__0[1]),
        .O(rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_receiver_fifo
   (rst_n_0,
    fifo_rx_full_o,
    fifo_rx_pop_ready,
    fifo_rx_empty,
    fifo_rx_triggered,
    D,
    \rd_ptr_reg[0]_0 ,
    clk,
    Q,
    \data_o_reg[1] ,
    E,
    rst_n,
    \lsr_reg[6] ,
    \lsr_reg[6]_0 ,
    \lsr_reg[6]_1 ,
    lsr6_reset,
    p_38_in,
    fifo_rx_pop,
    rts_no_i_2);
  output rst_n_0;
  output fifo_rx_full_o;
  output fifo_rx_pop_ready;
  output fifo_rx_empty;
  output fifo_rx_triggered;
  output [7:0]D;
  input \rd_ptr_reg[0]_0 ;
  input clk;
  input [7:0]Q;
  input \data_o_reg[1] ;
  input [0:0]E;
  input rst_n;
  input \lsr_reg[6] ;
  input \lsr_reg[6]_0 ;
  input [0:0]\lsr_reg[6]_1 ;
  input lsr6_reset;
  input p_38_in;
  input fifo_rx_pop;
  input [2:0]rts_no_i_2;

  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire clk;
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
  wire [0:0]\lsr_reg[6]_1 ;
  wire [3:0]p_0_in__0;
  wire p_38_in;
  wire [3:0]rd_ptr;
  wire rd_ptr0;
  wire \rd_ptr[0]_i_1__0_n_0 ;
  wire \rd_ptr[1]_i_1__0_n_0 ;
  wire \rd_ptr[2]_i_2__0_n_0 ;
  wire \rd_ptr[3]_i_1__0_n_0 ;
  wire \rd_ptr_reg[0]_0 ;
  wire rst_n;
  wire rst_n_0;
  wire [2:0]rts_no_i_2;
  wire rts_no_i_5_n_0;
  wire \wr_ptr_reg_n_0_[0] ;
  wire \wr_ptr_reg_n_0_[1] ;
  wire \wr_ptr_reg_n_0_[2] ;
  wire \wr_ptr_reg_n_0_[3] ;
  wire [1:0]NLW_mem_reg_0_15_0_5_DOD_UNCONNECTED;
  wire NLW_mem_reg_0_15_6_7_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_6_7__0_SPO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair31" *) 
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
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(\count[4]_i_1_n_0 ),
        .D(\count[0]_i_1__0_n_0 ),
        .Q(count_reg[0]),
        .R(\rd_ptr_reg[0]_0 ));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(\count[4]_i_1_n_0 ),
        .D(\count[1]_i_1__0_n_0 ),
        .Q(count_reg[1]),
        .R(\rd_ptr_reg[0]_0 ));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(\count[4]_i_1_n_0 ),
        .D(\count[2]_i_1__0_n_0 ),
        .Q(count_reg[2]),
        .R(\rd_ptr_reg[0]_0 ));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(\count[4]_i_1_n_0 ),
        .D(\count[3]_i_1__0_n_0 ),
        .Q(count_reg[3]),
        .R(\rd_ptr_reg[0]_0 ));
  FDRE \count_reg[4] 
       (.C(clk),
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
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
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
       (.I0(rst_n),
        .I1(\lsr_reg[6] ),
        .I2(fifo_rx_full_o),
        .I3(\lsr_reg[6]_0 ),
        .I4(\lsr_reg[6]_1 ),
        .I5(lsr6_reset),
        .O(rst_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "uart_rx_top_inst/fifo_rx_inst/mem_reg_0_15_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M mem_reg_0_15_0_5
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
        .WCLK(clk),
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
  RAM32X1D mem_reg_0_15_6_7
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
        .WCLK(clk),
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
  RAM32X1D mem_reg_0_15_6_7__0
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
        .WCLK(clk),
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
  FDRE \rd_ptr_reg[0] 
       (.C(clk),
        .CE(rd_ptr0),
        .D(\rd_ptr[0]_i_1__0_n_0 ),
        .Q(rd_ptr[0]),
        .R(\rd_ptr_reg[0]_0 ));
  FDRE \rd_ptr_reg[1] 
       (.C(clk),
        .CE(rd_ptr0),
        .D(\rd_ptr[1]_i_1__0_n_0 ),
        .Q(rd_ptr[1]),
        .R(\rd_ptr_reg[0]_0 ));
  FDRE \rd_ptr_reg[2] 
       (.C(clk),
        .CE(rd_ptr0),
        .D(\rd_ptr[2]_i_2__0_n_0 ),
        .Q(rd_ptr[2]),
        .R(\rd_ptr_reg[0]_0 ));
  FDRE \rd_ptr_reg[3] 
       (.C(clk),
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
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
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
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr[1]_i_1 
       (.I0(\wr_ptr_reg_n_0_[0] ),
        .I1(\wr_ptr_reg_n_0_[1] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_ptr[2]_i_1 
       (.I0(\wr_ptr_reg_n_0_[0] ),
        .I1(\wr_ptr_reg_n_0_[1] ),
        .I2(\wr_ptr_reg_n_0_[2] ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_ptr[3]_i_3__0 
       (.I0(\wr_ptr_reg_n_0_[1] ),
        .I1(\wr_ptr_reg_n_0_[0] ),
        .I2(\wr_ptr_reg_n_0_[2] ),
        .I3(\wr_ptr_reg_n_0_[3] ),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \wr_ptr[3]_i_4 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .O(fifo_rx_full_o));
  FDRE \wr_ptr_reg[0] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[0]),
        .Q(\wr_ptr_reg_n_0_[0] ),
        .R(\rd_ptr_reg[0]_0 ));
  FDRE \wr_ptr_reg[1] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[1]),
        .Q(\wr_ptr_reg_n_0_[1] ),
        .R(\rd_ptr_reg[0]_0 ));
  FDRE \wr_ptr_reg[2] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[2]),
        .Q(\wr_ptr_reg_n_0_[2] ),
        .R(\rd_ptr_reg[0]_0 ));
  FDRE \wr_ptr_reg[3] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[3]),
        .Q(\wr_ptr_reg_n_0_[3] ),
        .R(\rd_ptr_reg[0]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register
   (rst_n_0,
    D,
    Q,
    rst_n,
    parity_err_o_reg,
    parity_check_sampled,
    parity_bit_sampled,
    SR,
    E,
    tx_sync,
    clk);
  output rst_n_0;
  output [6:0]D;
  output [0:0]Q;
  input rst_n;
  input [3:0]parity_err_o_reg;
  input parity_check_sampled;
  input parity_bit_sampled;
  input [0:0]SR;
  input [0:0]E;
  input tx_sync;
  input clk;

  wire [6:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk;
  wire expected_parity_bit__0;
  wire parity_bit_sampled;
  wire parity_check_sampled;
  wire parity_err_o_i_3_n_0;
  wire [3:0]parity_err_o_reg;
  wire rst_n;
  wire rst_n_0;
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
        .I1(rst_n),
        .I2(parity_err_o_reg[2]),
        .I3(parity_check_sampled),
        .I4(parity_bit_sampled),
        .O(rst_n_0));
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
  FDRE \shift_regs_reg[0] 
       (.C(clk),
        .CE(E),
        .D(shift_regs[1]),
        .Q(shift_regs[0]),
        .R(SR));
  FDRE \shift_regs_reg[1] 
       (.C(clk),
        .CE(E),
        .D(shift_regs[2]),
        .Q(shift_regs[1]),
        .R(SR));
  FDRE \shift_regs_reg[2] 
       (.C(clk),
        .CE(E),
        .D(shift_regs[3]),
        .Q(shift_regs[2]),
        .R(SR));
  FDRE \shift_regs_reg[3] 
       (.C(clk),
        .CE(E),
        .D(shift_regs[4]),
        .Q(shift_regs[3]),
        .R(SR));
  FDRE \shift_regs_reg[4] 
       (.C(clk),
        .CE(E),
        .D(shift_regs[5]),
        .Q(shift_regs[4]),
        .R(SR));
  FDRE \shift_regs_reg[5] 
       (.C(clk),
        .CE(E),
        .D(shift_regs[6]),
        .Q(shift_regs[5]),
        .R(SR));
  FDRE \shift_regs_reg[6] 
       (.C(clk),
        .CE(E),
        .D(Q),
        .Q(shift_regs[6]),
        .R(SR));
  FDRE \shift_regs_reg[7] 
       (.C(clk),
        .CE(E),
        .D(tx_sync),
        .Q(Q),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer
   (sync_reg_0,
    cts_n__0,
    SR,
    cts_n,
    clk,
    \FSM_sequential_current_state[0]_i_2__0 );
  output sync_reg_0;
  output cts_n__0;
  input [0:0]SR;
  input cts_n;
  input clk;
  input [0:0]\FSM_sequential_current_state[0]_i_2__0 ;

  wire [0:0]\FSM_sequential_current_state[0]_i_2__0 ;
  wire [0:0]SR;
  wire clk;
  wire cts_n;
  wire cts_n__0;
  wire d1;
  wire sync_reg_0;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_current_state[0]_i_4__0 
       (.I0(sync_reg_0),
        .I1(\FSM_sequential_current_state[0]_i_2__0 ),
        .O(cts_n__0));
  FDRE d1_reg
       (.C(clk),
        .CE(1'b1),
        .D(cts_n),
        .Q(d1),
        .R(SR));
  FDRE sync_reg
       (.C(clk),
        .CE(1'b1),
        .D(d1),
        .Q(sync_reg_0),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "synchronizer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_7
   (tx_sync,
    d1_reg_0,
    parity_bit,
    \ocr_d_reg[2] ,
    stop_bit_err_0,
    SR,
    rx,
    clk,
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
  input rx;
  input clk;
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
  wire clk;
  wire d1;
  wire d1_reg_0;
  wire d1_reg_n_0;
  wire [0:0]ocr;
  wire \ocr_d_reg[2] ;
  wire parity_bit;
  wire parity_check_sampled;
  wire rx;
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
  FDRE d1_reg
       (.C(clk),
        .CE(1'b1),
        .D(rx),
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
  FDRE sync_reg
       (.C(clk),
        .CE(1'b1),
        .D(d1_reg_n_0),
        .Q(tx_sync),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transmitter_controller
   (\FSM_sequential_current_state_reg[2]_0 ,
    rd_ptr0,
    rst_n_0,
    \FSM_sequential_current_state_reg[2]_1 ,
    lsr0_set,
    \FSM_sequential_current_state_reg[0]_0 ,
    SR,
    start_tx,
    clk,
    E,
    Q,
    fifo_tx_empty,
    ocr,
    tx_busy_pulse,
    rst_n,
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
  output rst_n_0;
  output [0:0]\FSM_sequential_current_state_reg[2]_1 ;
  output lsr0_set;
  output [0:0]\FSM_sequential_current_state_reg[0]_0 ;
  input [0:0]SR;
  input start_tx;
  input clk;
  input [0:0]E;
  input [0:0]Q;
  input fifo_tx_empty;
  input [1:0]ocr;
  input tx_busy_pulse;
  input rst_n;
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
  wire clk;
  wire cts_n__0;
  wire cts_sync;
  wire [2:0]current_state;
  wire fifo_tx_empty;
  wire lsr0_set;
  wire negedge_start;
  wire [2:0]next_state;
  wire [1:0]ocr;
  wire p_2_in;
  wire rd_ptr0;
  wire rst_n;
  wire rst_n_0;
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
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h7780)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(tick_d),
        .I3(current_state[2]),
        .O(next_state[2]));
  (* FSM_ENCODED_STATES = "TRANS_DATA:100,TRANS_PARITY:101,TRANS_STOP:110,FINISH:111,TRANS_START:011,WAIT:010,IDLE:000,CTS:001" *) 
  FDRE \FSM_sequential_current_state_reg[0] 
       (.C(clk),
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
  FDRE \FSM_sequential_current_state_reg[1] 
       (.C(clk),
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
  FDRE \FSM_sequential_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(next_state[2]),
        .Q(current_state[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    Q_i_1
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(baud_o),
        .O(\FSM_sequential_current_state_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h87FF)) 
    \cnt_data_trans[3]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(rst_n),
        .O(\FSM_sequential_current_state_reg[0]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count[4]_i_2 
       (.I0(rd_ptr0),
        .I1(E),
        .O(\FSM_sequential_current_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \lsr[0]_i_2 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(lsr0_set));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \rd_ptr[2]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(Q),
        .I4(fifo_tx_empty),
        .O(rd_ptr0));
  FDRE start_en_d1_reg
       (.C(clk),
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
  FDRE start_en_d_reg
       (.C(clk),
        .CE(1'b1),
        .D(negedge_start),
        .Q(start_en_d),
        .R(SR));
  FDRE start_tx_d_reg
       (.C(clk),
        .CE(1'b1),
        .D(start_tx),
        .Q(start_tx_d),
        .R(SR));
  LUT6 #(
    .INIT(64'hAA800000AA80AA80)) 
    tx_busy_i_1
       (.I0(rst_n),
        .I1(start_tx),
        .I2(ocr[0]),
        .I3(tx_busy),
        .I4(tx_busy_i_2_n_0),
        .I5(current_state[2]),
        .O(rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h7)) 
    tx_busy_i_2
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .O(tx_busy_i_2_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transmitter_fifo
   (fifo_tx_o,
    start_tx,
    \count_reg[0]_0 ,
    E,
    clk,
    \sampled_data_reg[7] ,
    \wr_ptr_reg[0]_0 ,
    rd_ptr0,
    tx_busy_pulse,
    Q,
    ocr,
    write_data_d1,
    write_data_d2,
    rst_n,
    \count_reg[0]_1 );
  output [7:0]fifo_tx_o;
  output start_tx;
  output \count_reg[0]_0 ;
  output [0:0]E;
  input clk;
  input [7:0]\sampled_data_reg[7] ;
  input [0:0]\wr_ptr_reg[0]_0 ;
  input rd_ptr0;
  input tx_busy_pulse;
  input [1:0]Q;
  input [0:0]ocr;
  input write_data_d1;
  input write_data_d2;
  input rst_n;
  input [0:0]\count_reg[0]_1 ;

  wire [0:0]E;
  wire [1:0]Q;
  wire clk;
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
  wire [3:0]p_0_in;
  wire [3:0]rd_ptr;
  wire rd_ptr0;
  wire \rd_ptr[0]_i_1_n_0 ;
  wire \rd_ptr[1]_i_1_n_0 ;
  wire \rd_ptr[2]_i_2_n_0 ;
  wire \rd_ptr[3]_i_1_n_0 ;
  wire rst_n;
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

  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(rd_ptr0),
        .I2(count_reg[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hB4D2)) 
    \count[2]_i_1 
       (.I0(rd_ptr0),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(count_reg[1]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
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
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(\count_reg[0]_1 ),
        .D(\count[0]_i_1_n_0 ),
        .Q(count_reg[0]),
        .R(\wr_ptr_reg[0]_0 ));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(\count_reg[0]_1 ),
        .D(\count[1]_i_1_n_0 ),
        .Q(count_reg[1]),
        .R(\wr_ptr_reg[0]_0 ));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(\count_reg[0]_1 ),
        .D(\count[2]_i_1_n_0 ),
        .Q(count_reg[2]),
        .R(\wr_ptr_reg[0]_0 ));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(\count_reg[0]_1 ),
        .D(\count[3]_i_1_n_0 ),
        .Q(count_reg[3]),
        .R(\wr_ptr_reg[0]_0 ));
  FDRE \count_reg[4] 
       (.C(clk),
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
  RAM32M mem_reg_0_15_0_5
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
        .WCLK(clk),
        .WE(mem_reg_0_15_0_5_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_0_15_0_5_i_1
       (.I0(E),
        .I1(rst_n),
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
  RAM32X1D mem_reg_0_15_6_7
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
        .WCLK(clk),
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
  RAM32X1D mem_reg_0_15_6_7__0
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
        .WCLK(clk),
        .WE(mem_reg_0_15_0_5_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr[0]_i_1 
       (.I0(rd_ptr[0]),
        .O(\rd_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr[1]_i_1 
       (.I0(rd_ptr[0]),
        .I1(rd_ptr[1]),
        .O(\rd_ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_ptr[2]_i_2 
       (.I0(rd_ptr[0]),
        .I1(rd_ptr[1]),
        .I2(rd_ptr[2]),
        .O(\rd_ptr[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rd_ptr[3]_i_1 
       (.I0(rd_ptr[1]),
        .I1(rd_ptr[0]),
        .I2(rd_ptr[2]),
        .I3(rd_ptr[3]),
        .O(\rd_ptr[3]_i_1_n_0 ));
  FDRE \rd_ptr_reg[0] 
       (.C(clk),
        .CE(rd_ptr0),
        .D(\rd_ptr[0]_i_1_n_0 ),
        .Q(rd_ptr[0]),
        .R(\wr_ptr_reg[0]_0 ));
  FDRE \rd_ptr_reg[1] 
       (.C(clk),
        .CE(rd_ptr0),
        .D(\rd_ptr[1]_i_1_n_0 ),
        .Q(rd_ptr[1]),
        .R(\wr_ptr_reg[0]_0 ));
  FDRE \rd_ptr_reg[2] 
       (.C(clk),
        .CE(rd_ptr0),
        .D(\rd_ptr[2]_i_2_n_0 ),
        .Q(rd_ptr[2]),
        .R(\wr_ptr_reg[0]_0 ));
  FDRE \rd_ptr_reg[3] 
       (.C(clk),
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
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    start_tx_d_i_2
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .I3(count_reg[4]),
        .I4(count_reg[3]),
        .O(\count_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wr_ptr[0]_i_1__0 
       (.I0(wr_ptr_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr[1]_i_1__0 
       (.I0(wr_ptr_reg[0]),
        .I1(wr_ptr_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_ptr[2]_i_1__0 
       (.I0(wr_ptr_reg[0]),
        .I1(wr_ptr_reg[1]),
        .I2(wr_ptr_reg[2]),
        .O(p_0_in[2]));
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
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_ptr[3]_i_2__0 
       (.I0(wr_ptr_reg[1]),
        .I1(wr_ptr_reg[0]),
        .I2(wr_ptr_reg[2]),
        .I3(wr_ptr_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \wr_ptr[3]_i_3 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(\wr_ptr[3]_i_3_n_0 ));
  FDRE \wr_ptr_reg[0] 
       (.C(clk),
        .CE(E),
        .D(p_0_in[0]),
        .Q(wr_ptr_reg[0]),
        .R(\wr_ptr_reg[0]_0 ));
  FDRE \wr_ptr_reg[1] 
       (.C(clk),
        .CE(E),
        .D(p_0_in[1]),
        .Q(wr_ptr_reg[1]),
        .R(\wr_ptr_reg[0]_0 ));
  FDRE \wr_ptr_reg[2] 
       (.C(clk),
        .CE(E),
        .D(p_0_in[2]),
        .Q(wr_ptr_reg[2]),
        .R(\wr_ptr_reg[0]_0 ));
  FDRE \wr_ptr_reg[3] 
       (.C(clk),
        .CE(E),
        .D(p_0_in[3]),
        .Q(wr_ptr_reg[3]),
        .R(\wr_ptr_reg[0]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_receiver
   (stop_bit_err,
    parity_err,
    E,
    \FSM_sequential_current_state_reg[0] ,
    data_valid,
    \shift_regs_reg[7] ,
    \fcr_d_reg[0] ,
    rst_n_0,
    \data_o_reg[7]_0 ,
    SR,
    rx,
    clk,
    parity_err_o_reg_0,
    \clk_div_reg[0]_0 ,
    \FSM_sequential_current_state_reg[0]_0 ,
    ocr,
    stop_bit_2_check_sampled_reg_0,
    Q,
    stop_bit_1_check_sampled_reg_0,
    rst_n,
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
  output rst_n_0;
  output [7:0]\data_o_reg[7]_0 ;
  input [0:0]SR;
  input rx;
  input clk;
  input [4:0]parity_err_o_reg_0;
  input [0:0]\clk_div_reg[0]_0 ;
  input \FSM_sequential_current_state_reg[0]_0 ;
  input [0:0]ocr;
  input stop_bit_2_check_sampled_reg_0;
  input [3:0]Q;
  input stop_bit_1_check_sampled_reg_0;
  input rst_n;
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
  wire clk;
  wire [3:0]clk_div_reg;
  wire [0:0]\clk_div_reg[0]_0 ;
  wire [3:0]count_data_reg;
  wire [0:0]current_state;
  wire d1;
  wire [6:0]data;
  wire [7:0]\data_o_reg[7]_0 ;
  wire data_valid;
  wire \fcr_d_reg[0] ;
  wire fifo_rx_empty;
  wire fifo_rx_full_o;
  wire fifo_rx_pop;
  wire fifo_rx_pop_d;
  wire [1:0]mem_reg_0_15_6_7__0;
  wire [0:0]ocr;
  wire [3:0]p_0_in;
  wire [3:0]p_0_in__1;
  wire p_4_in;
  wire parity_bit;
  wire parity_bit_sampled;
  wire parity_check;
  wire parity_check_sampled;
  wire parity_err;
  wire [4:0]parity_err_o_reg_0;
  wire receive_total_fi_i;
  wire receiver_controller_inst_n_6;
  wire rst_n;
  wire rst_n_0;
  wire rx;
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
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clk_div[1]_i_1 
       (.I0(clk_div_reg[0]),
        .I1(clk_div_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clk_div[2]_i_1 
       (.I0(clk_div_reg[0]),
        .I1(clk_div_reg[1]),
        .I2(clk_div_reg[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_div[3]_i_1 
       (.I0(clk_div_reg[1]),
        .I1(clk_div_reg[0]),
        .I2(clk_div_reg[2]),
        .I3(clk_div_reg[3]),
        .O(p_0_in__1[3]));
  FDRE \clk_div_reg[0] 
       (.C(clk),
        .CE(\clk_div_reg[0]_0 ),
        .D(p_0_in__1[0]),
        .Q(clk_div_reg[0]),
        .R(SR));
  FDRE \clk_div_reg[1] 
       (.C(clk),
        .CE(\clk_div_reg[0]_0 ),
        .D(p_0_in__1[1]),
        .Q(clk_div_reg[1]),
        .R(SR));
  FDRE \clk_div_reg[2] 
       (.C(clk),
        .CE(\clk_div_reg[0]_0 ),
        .D(p_0_in__1[2]),
        .Q(clk_div_reg[2]),
        .R(SR));
  FDRE \clk_div_reg[3] 
       (.C(clk),
        .CE(\clk_div_reg[0]_0 ),
        .D(p_0_in__1[3]),
        .Q(clk_div_reg[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_data[0]_i_1 
       (.I0(count_data_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_data[1]_i_1 
       (.I0(count_data_reg[0]),
        .I1(count_data_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_data[2]_i_1 
       (.I0(count_data_reg[0]),
        .I1(count_data_reg[1]),
        .I2(count_data_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_data[3]_i_3 
       (.I0(count_data_reg[1]),
        .I1(count_data_reg[0]),
        .I2(count_data_reg[2]),
        .I3(count_data_reg[3]),
        .O(p_0_in[3]));
  FDRE \count_data_reg[0] 
       (.C(clk),
        .CE(p_4_in),
        .D(p_0_in[0]),
        .Q(count_data_reg[0]),
        .R(receiver_controller_inst_n_6));
  FDRE \count_data_reg[1] 
       (.C(clk),
        .CE(p_4_in),
        .D(p_0_in[1]),
        .Q(count_data_reg[1]),
        .R(receiver_controller_inst_n_6));
  FDRE \count_data_reg[2] 
       (.C(clk),
        .CE(p_4_in),
        .D(p_0_in[2]),
        .Q(count_data_reg[2]),
        .R(receiver_controller_inst_n_6));
  FDRE \count_data_reg[3] 
       (.C(clk),
        .CE(p_4_in),
        .D(p_0_in[3]),
        .Q(count_data_reg[3]),
        .R(receiver_controller_inst_n_6));
  FDRE d1_reg
       (.C(clk),
        .CE(1'b1),
        .D(tx_sync),
        .Q(d1),
        .R(SR));
  FDRE \data_o_reg[0] 
       (.C(clk),
        .CE(receive_total_fi_i),
        .D(data[0]),
        .Q(\data_o_reg[7]_0 [0]),
        .R(SR));
  FDRE \data_o_reg[1] 
       (.C(clk),
        .CE(receive_total_fi_i),
        .D(data[1]),
        .Q(\data_o_reg[7]_0 [1]),
        .R(SR));
  FDRE \data_o_reg[2] 
       (.C(clk),
        .CE(receive_total_fi_i),
        .D(data[2]),
        .Q(\data_o_reg[7]_0 [2]),
        .R(SR));
  FDRE \data_o_reg[3] 
       (.C(clk),
        .CE(receive_total_fi_i),
        .D(data[3]),
        .Q(\data_o_reg[7]_0 [3]),
        .R(SR));
  FDRE \data_o_reg[4] 
       (.C(clk),
        .CE(receive_total_fi_i),
        .D(data[4]),
        .Q(\data_o_reg[7]_0 [4]),
        .R(SR));
  FDRE \data_o_reg[5] 
       (.C(clk),
        .CE(receive_total_fi_i),
        .D(data[5]),
        .Q(\data_o_reg[7]_0 [5]),
        .R(SR));
  FDRE \data_o_reg[6] 
       (.C(clk),
        .CE(receive_total_fi_i),
        .D(data[6]),
        .Q(\data_o_reg[7]_0 [6]),
        .R(SR));
  FDRE \data_o_reg[7] 
       (.C(clk),
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
  FDRE parity_bit_sampled_reg
       (.C(clk),
        .CE(1'b1),
        .D(parity_bit),
        .Q(parity_bit_sampled),
        .R(SR));
  FDRE parity_check_sampled_reg
       (.C(clk),
        .CE(1'b1),
        .D(parity_check),
        .Q(parity_check_sampled),
        .R(SR));
  FDRE parity_err_o_reg
       (.C(clk),
        .CE(1'b1),
        .D(shift_register_inst_n_0),
        .Q(parity_err),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_receiver_controller receiver_controller_inst
       (.E(shift_receive_en),
        .\FSM_sequential_current_state_reg[0]_0 (\FSM_sequential_current_state_reg[0] ),
        .\FSM_sequential_current_state_reg[0]_1 (sync_n_1),
        .\FSM_sequential_current_state_reg[0]_2 (parity_err_o_reg_0[3]),
        .\FSM_sequential_current_state_reg[0]_3 (sync_n_3),
        .\FSM_sequential_current_state_reg[0]_4 (\FSM_sequential_current_state_reg[0]_0 ),
        .\FSM_sequential_current_state_reg[0]_5 (SR),
        .Q(current_state),
        .SR(receiver_controller_inst_n_6),
        .clk(clk),
        .\count_data_reg[0] (\clk_div_reg[0]_0 ),
        .\count_data_reg[0]_0 (clk_div_reg),
        .\data_o_reg[0] (total_data_size_sampled),
        .data_valid(data_valid),
        .\fcr_d_reg[0] (E),
        .fifo_rx_empty(fifo_rx_empty),
        .fifo_rx_full_o(fifo_rx_full_o),
        .fifo_rx_pop(fifo_rx_pop),
        .fifo_rx_pop_d(fifo_rx_pop_d),
        .mem_reg_0_15_6_7__0(mem_reg_0_15_6_7__0),
        .ocr(ocr),
        .p_4_in(p_4_in),
        .parity_check(parity_check),
        .rst_n(rst_n),
        .rst_n_0(rst_n_0),
        .stop_bit_1_check(stop_bit_1_check),
        .stop_bit_1_check_sampled_reg(stop_bit_1_check_sampled_reg_0),
        .stop_bit_2_check(stop_bit_2_check),
        .stop_bit_2_check_sampled_reg(count_data_reg),
        .stop_bit_2_check_sampled_reg_0(stop_bit_2_check_sampled_reg_0),
        .stop_bit_2_check_sampled_reg_1(Q),
        .\total_data_size_sampled_reg[3] (receive_total_fi_i));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register shift_register_inst
       (.D(data),
        .E(shift_receive_en),
        .Q(\shift_regs_reg[7] ),
        .SR(SR),
        .clk(clk),
        .parity_bit_sampled(parity_bit_sampled),
        .parity_check_sampled(parity_check_sampled),
        .parity_err_o_reg({parity_err_o_reg_0[4:3],parity_err_o_reg_0[1:0]}),
        .rst_n(rst_n),
        .rst_n_0(shift_register_inst_n_0),
        .tx_sync(tx_sync));
  FDRE stop_bit_1_check_sampled_reg
       (.C(clk),
        .CE(1'b1),
        .D(stop_bit_1_check),
        .Q(stop_bit_1_check_sampled),
        .R(SR));
  FDRE stop_bit_2_check_sampled_reg
       (.C(clk),
        .CE(1'b1),
        .D(stop_bit_2_check),
        .Q(stop_bit_2_check_sampled),
        .R(SR));
  FDRE stop_bit_err_o_reg
       (.C(clk),
        .CE(1'b1),
        .D(stop_bit_err_0),
        .Q(stop_bit_err),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_7 sync
       (.E(receive_total_fi_i),
        .\FSM_sequential_current_state_reg[0] (\FSM_sequential_current_state_reg[0]_0 ),
        .Q(current_state),
        .SR(SR),
        .clk(clk),
        .d1(d1),
        .d1_reg_0(sync_n_1),
        .ocr(ocr),
        .\ocr_d_reg[2] (sync_n_3),
        .parity_bit(parity_bit),
        .parity_check_sampled(parity_check_sampled),
        .rx(rx),
        .stop_bit_1_check_sampled(stop_bit_1_check_sampled),
        .stop_bit_2_check_sampled(stop_bit_2_check_sampled),
        .stop_bit_err_0(stop_bit_err_0),
        .stop_bit_err_o_reg(parity_err_o_reg_0[2]),
        .tx_sync(tx_sync));
  FDRE \total_data_size_sampled_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\total_data_size_sampled_reg[3]_0 [0]),
        .Q(total_data_size_sampled[0]),
        .R(SR));
  FDRE \total_data_size_sampled_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\total_data_size_sampled_reg[3]_0 [1]),
        .Q(total_data_size_sampled[1]),
        .R(SR));
  FDRE \total_data_size_sampled_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\total_data_size_sampled_reg[3]_0 [2]),
        .Q(total_data_size_sampled[2]),
        .R(SR));
  FDRE \total_data_size_sampled_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\total_data_size_sampled_reg[3]_0 [3]),
        .Q(total_data_size_sampled[3]),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx_top
   (E,
    stop_bit_err,
    parity_err,
    rts_no_reg_0,
    rst_n_0,
    fifo_rx_empty,
    fifo_rx_pop_ready,
    fifo_rx_triggered,
    \shift_regs_reg[7] ,
    \fcr_d_reg[0] ,
    data_o_valid_reg_0,
    data_o,
    SR,
    clk,
    rx,
    fifo_rx_pop,
    \rd_ptr_reg[0] ,
    rts_no_reg_1,
    parity_err_o_reg,
    \clk_div_reg[0] ,
    ocr,
    stop_bit_2_check_sampled_reg,
    Q,
    stop_bit_1_check_sampled_reg,
    rst_n,
    rts_no_i_2,
    \lsr_reg[6] ,
    lsr6_reset,
    p_38_in,
    D,
    rdr_empty_reg,
    \total_data_size_sampled_reg[3] );
  output [0:0]E;
  output stop_bit_err;
  output parity_err;
  output rts_no_reg_0;
  output rst_n_0;
  output fifo_rx_empty;
  output fifo_rx_pop_ready;
  output fifo_rx_triggered;
  output [0:0]\shift_regs_reg[7] ;
  output \fcr_d_reg[0] ;
  output data_o_valid_reg_0;
  output [7:0]data_o;
  input [0:0]SR;
  input clk;
  input rx;
  input fifo_rx_pop;
  input \rd_ptr_reg[0] ;
  input rts_no_reg_1;
  input [4:0]parity_err_o_reg;
  input [0:0]\clk_div_reg[0] ;
  input [0:0]ocr;
  input stop_bit_2_check_sampled_reg;
  input [3:0]Q;
  input stop_bit_1_check_sampled_reg;
  input rst_n;
  input [3:0]rts_no_i_2;
  input [0:0]\lsr_reg[6] ;
  input lsr6_reset;
  input p_38_in;
  input [0:0]D;
  input rdr_empty_reg;
  input [3:0]\total_data_size_sampled_reg[3] ;

  wire [0:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\clk_div_reg[0] ;
  wire [7:0]data_o;
  wire data_o_valid_reg_0;
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
  wire [0:0]\lsr_reg[6] ;
  wire [7:0]msg;
  wire [0:0]ocr;
  wire p_38_in;
  wire parity_err;
  wire [4:0]parity_err_o_reg;
  wire \rd_ptr_reg[0] ;
  wire rdr_empty_reg;
  wire rst_n;
  wire rst_n_0;
  wire [3:0]rts_no_i_2;
  wire rts_no_reg_0;
  wire rts_no_reg_1;
  wire rx;
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

  FDRE \data_o_reg[0] 
       (.C(clk),
        .CE(data_valid_d),
        .D(msg[0]),
        .Q(data_o[0]),
        .R(SR));
  FDRE \data_o_reg[1] 
       (.C(clk),
        .CE(data_valid_d),
        .D(msg[1]),
        .Q(data_o[1]),
        .R(SR));
  FDRE \data_o_reg[2] 
       (.C(clk),
        .CE(data_valid_d),
        .D(msg[2]),
        .Q(data_o[2]),
        .R(SR));
  FDRE \data_o_reg[3] 
       (.C(clk),
        .CE(data_valid_d),
        .D(msg[3]),
        .Q(data_o[3]),
        .R(SR));
  FDRE \data_o_reg[4] 
       (.C(clk),
        .CE(data_valid_d),
        .D(msg[4]),
        .Q(data_o[4]),
        .R(SR));
  FDRE \data_o_reg[5] 
       (.C(clk),
        .CE(data_valid_d),
        .D(msg[5]),
        .Q(data_o[5]),
        .R(SR));
  FDRE \data_o_reg[6] 
       (.C(clk),
        .CE(data_valid_d),
        .D(msg[6]),
        .Q(data_o[6]),
        .R(SR));
  FDRE \data_o_reg[7] 
       (.C(clk),
        .CE(data_valid_d),
        .D(msg[7]),
        .Q(data_o[7]),
        .R(SR));
  FDRE data_o_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(data_valid_d),
        .Q(E),
        .R(SR));
  FDRE data_valid_d_reg
       (.C(clk),
        .CE(1'b1),
        .D(data_valid),
        .Q(data_valid_d),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_receiver_fifo fifo_rx_inst
       (.D(msg),
        .E(wr_ptr0),
        .Q({uart_rx_inst_n_8,uart_rx_inst_n_9,uart_rx_inst_n_10,uart_rx_inst_n_11,uart_rx_inst_n_12,uart_rx_inst_n_13,uart_rx_inst_n_14,uart_rx_inst_n_15}),
        .clk(clk),
        .\data_o_reg[1] (uart_rx_inst_n_7),
        .fifo_rx_empty(fifo_rx_empty),
        .fifo_rx_full_o(fifo_rx_full_o),
        .fifo_rx_pop(fifo_rx_pop),
        .fifo_rx_pop_ready(fifo_rx_pop_ready),
        .fifo_rx_triggered(fifo_rx_triggered),
        .lsr6_reset(lsr6_reset),
        .\lsr_reg[6] (\lsr[6]_i_2_n_0 ),
        .\lsr_reg[6]_0 (uart_rx_inst_n_3),
        .\lsr_reg[6]_1 (\lsr_reg[6] ),
        .p_38_in(p_38_in),
        .\rd_ptr_reg[0]_0 (\rd_ptr_reg[0] ),
        .rst_n(rst_n),
        .rst_n_0(rst_n_0),
        .rts_no_i_2({rts_no_i_2[3:2],rts_no_i_2[0]}));
  FDRE fifo_rx_pop_d_reg
       (.C(clk),
        .CE(1'b1),
        .D(fifo_rx_pop),
        .Q(fifo_rx_pop_d),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \lsr[6]_i_2 
       (.I0(rdr_empty_reg),
        .I1(E),
        .I2(rts_no_i_2[0]),
        .O(\lsr[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h54)) 
    rdr_empty_i_1
       (.I0(E),
        .I1(p_38_in),
        .I2(rdr_empty_reg),
        .O(data_o_valid_reg_0));
  FDRE rts_no_reg
       (.C(clk),
        .CE(1'b1),
        .D(rts_no_reg_1),
        .Q(rts_no_reg_0),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_receiver uart_rx_inst
       (.D(D),
        .E(wr_ptr0),
        .\FSM_sequential_current_state_reg[0] (uart_rx_inst_n_3),
        .\FSM_sequential_current_state_reg[0]_0 (rts_no_reg_0),
        .Q(Q),
        .SR(SR),
        .clk(clk),
        .\clk_div_reg[0]_0 (\clk_div_reg[0] ),
        .\data_o_reg[7]_0 ({uart_rx_inst_n_8,uart_rx_inst_n_9,uart_rx_inst_n_10,uart_rx_inst_n_11,uart_rx_inst_n_12,uart_rx_inst_n_13,uart_rx_inst_n_14,uart_rx_inst_n_15}),
        .data_valid(data_valid),
        .\fcr_d_reg[0] (\fcr_d_reg[0] ),
        .fifo_rx_empty(fifo_rx_empty),
        .fifo_rx_full_o(fifo_rx_full_o),
        .fifo_rx_pop(fifo_rx_pop),
        .fifo_rx_pop_d(fifo_rx_pop_d),
        .mem_reg_0_15_6_7__0(rts_no_i_2[1:0]),
        .ocr(ocr),
        .parity_err(parity_err),
        .parity_err_o_reg_0(parity_err_o_reg),
        .rst_n(rst_n),
        .rst_n_0(uart_rx_inst_n_7),
        .rx(rx),
        .\shift_regs_reg[7] (\shift_regs_reg[7] ),
        .stop_bit_1_check_sampled_reg_0(stop_bit_1_check_sampled_reg),
        .stop_bit_2_check_sampled_reg_0(stop_bit_2_check_sampled_reg),
        .stop_bit_err(stop_bit_err),
        .\total_data_size_sampled_reg[3]_0 (\total_data_size_sampled_reg[3] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_transmitter
   (tx,
    \FSM_sequential_current_state_reg[2] ,
    rd_ptr0,
    rst_n_0,
    lsr0_set,
    \data_size_sampled_reg[1]_0 ,
    \data_size_sampled_reg[3]_0 ,
    \data_size_sampled_reg[1]_1 ,
    SR,
    start_tx,
    clk,
    baud_o,
    E,
    Q,
    fifo_tx_empty,
    ocr,
    tx_busy_pulse,
    rst_n,
    tx_busy,
    cts_sync,
    \FSM_sequential_current_state_reg[1] ,
    load_d0_sampled_reg_0,
    cts_n__0,
    p_2_in,
    D,
    \data_size_sampled_reg[3]_1 ,
    \total_data_sampled_reg[3]_0 );
  output tx;
  output [0:0]\FSM_sequential_current_state_reg[2] ;
  output rd_ptr0;
  output rst_n_0;
  output lsr0_set;
  output \data_size_sampled_reg[1]_0 ;
  output [3:0]\data_size_sampled_reg[3]_0 ;
  output \data_size_sampled_reg[1]_1 ;
  input [0:0]SR;
  input start_tx;
  input clk;
  input baud_o;
  input [0:0]E;
  input [0:0]Q;
  input fifo_tx_empty;
  input [1:0]ocr;
  input tx_busy_pulse;
  input rst_n;
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
  wire clk;
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
  wire [3:0]p_0_in__0;
  wire p_2_in;
  wire rd_ptr0;
  wire rst_n;
  wire rst_n_0;
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
  wire tx;
  wire tx_busy;
  wire tx_busy_pulse;

  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_data_trans[0]_i_1 
       (.I0(cnt_data_trans_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_data_trans[1]_i_1 
       (.I0(cnt_data_trans_reg[0]),
        .I1(cnt_data_trans_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_data_trans[2]_i_1 
       (.I0(cnt_data_trans_reg[0]),
        .I1(cnt_data_trans_reg[1]),
        .I2(cnt_data_trans_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_data_trans[3]_i_2 
       (.I0(cnt_data_trans_reg[1]),
        .I1(cnt_data_trans_reg[0]),
        .I2(cnt_data_trans_reg[2]),
        .I3(cnt_data_trans_reg[3]),
        .O(p_0_in__0[3]));
  FDRE \cnt_data_trans_reg[0] 
       (.C(clk),
        .CE(shift_en),
        .D(p_0_in__0[0]),
        .Q(cnt_data_trans_reg[0]),
        .R(transmitter_controller_inst_n_5));
  FDRE \cnt_data_trans_reg[1] 
       (.C(clk),
        .CE(shift_en),
        .D(p_0_in__0[1]),
        .Q(cnt_data_trans_reg[1]),
        .R(transmitter_controller_inst_n_5));
  FDRE \cnt_data_trans_reg[2] 
       (.C(clk),
        .CE(shift_en),
        .D(p_0_in__0[2]),
        .Q(cnt_data_trans_reg[2]),
        .R(transmitter_controller_inst_n_5));
  FDRE \cnt_data_trans_reg[3] 
       (.C(clk),
        .CE(shift_en),
        .D(p_0_in__0[3]),
        .Q(cnt_data_trans_reg[3]),
        .R(transmitter_controller_inst_n_5));
  FDRE \data_size_sampled_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_size_sampled_reg[3]_1 [0]),
        .Q(\data_size_sampled_reg[3]_0 [0]),
        .R(SR));
  FDRE \data_size_sampled_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_size_sampled_reg[3]_1 [1]),
        .Q(\data_size_sampled_reg[3]_0 [1]),
        .R(SR));
  FDRE \data_size_sampled_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_size_sampled_reg[3]_1 [2]),
        .Q(\data_size_sampled_reg[3]_0 [2]),
        .R(SR));
  FDRE \data_size_sampled_reg[3] 
       (.C(clk),
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
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h000069C3)) 
    load_d0_sampled_i_4
       (.I0(sampled_data[5]),
        .I1(sampled_data[4]),
        .I2(load_d0_sampled_i_6_n_0),
        .I3(load_d0_sampled_reg_0[0]),
        .I4(load_d0_sampled_reg_0[1]),
        .O(load_d0_sampled_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
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
  FDRE load_d0_sampled_reg
       (.C(clk),
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
  FDRE load_en_sampled_reg
       (.C(clk),
        .CE(1'b1),
        .D(load_en),
        .Q(load_en_sampled),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_piso piso_inst
       (.E(shift_en),
        .Q(sampled_data),
        .SR(SR),
        .clk(clk),
        .load_d0_sampled(load_d0_sampled),
        .load_en_sampled(load_en_sampled),
        .tx(tx));
  FDRE \sampled_data_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(sampled_data[0]),
        .R(SR));
  FDRE \sampled_data_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(sampled_data[1]),
        .R(SR));
  FDRE \sampled_data_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(sampled_data[2]),
        .R(SR));
  FDRE \sampled_data_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(sampled_data[3]),
        .R(SR));
  FDRE \sampled_data_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(sampled_data[4]),
        .R(SR));
  FDRE \sampled_data_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(sampled_data[5]),
        .R(SR));
  FDRE \sampled_data_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(sampled_data[6]),
        .R(SR));
  FDRE \sampled_data_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(sampled_data[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h80)) 
    stop_bit_1_check_sampled_i_3
       (.I0(\data_size_sampled_reg[3]_0 [1]),
        .I1(\data_size_sampled_reg[3]_0 [0]),
        .I2(load_d0_sampled_reg_0[2]),
        .O(\data_size_sampled_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    stop_bit_2_check_sampled_i_3
       (.I0(\data_size_sampled_reg[3]_0 [1]),
        .I1(load_d0_sampled_reg_0[2]),
        .I2(\data_size_sampled_reg[3]_0 [0]),
        .O(\data_size_sampled_reg[1]_0 ));
  FDRE tick_d_reg
       (.C(clk),
        .CE(1'b1),
        .D(baud_o),
        .Q(tick_d),
        .R(SR));
  FDRE \total_data_sampled_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\total_data_sampled_reg[3]_0 [0]),
        .Q(total_data_sampled[0]),
        .R(SR));
  FDRE \total_data_sampled_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\total_data_sampled_reg[3]_0 [1]),
        .Q(total_data_sampled[1]),
        .R(SR));
  FDRE \total_data_sampled_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\total_data_sampled_reg[3]_0 [2]),
        .Q(total_data_sampled[2]),
        .R(SR));
  FDRE \total_data_sampled_reg[3] 
       (.C(clk),
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
  FDRE trans_data_fi_sampled_reg
       (.C(clk),
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
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    trans_stop_fi_sampled_i_2
       (.I0(cnt_data_trans_reg[0]),
        .I1(total_data_sampled[0]),
        .I2(cnt_data_trans_reg[1]),
        .I3(total_data_sampled[1]),
        .O(trans_stop_fi_sampled_i_2_n_0));
  FDRE trans_stop_fi_sampled_reg
       (.C(clk),
        .CE(1'b1),
        .D(trans_stop_fi),
        .Q(trans_stop_fi_sampled),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transmitter_controller transmitter_controller_inst
       (.E(E),
        .\FSM_sequential_current_state_reg[0]_0 (transmitter_controller_inst_n_5),
        .\FSM_sequential_current_state_reg[0]_1 (load_d0_sampled_reg_0[2]),
        .\FSM_sequential_current_state_reg[1]_0 (\FSM_sequential_current_state_reg[1] ),
        .\FSM_sequential_current_state_reg[2]_0 (\FSM_sequential_current_state_reg[2] ),
        .\FSM_sequential_current_state_reg[2]_1 (shift_en),
        .Q(Q),
        .SR(SR),
        .baud_o(baud_o),
        .clk(clk),
        .cts_n__0(cts_n__0),
        .cts_sync(cts_sync),
        .fifo_tx_empty(fifo_tx_empty),
        .lsr0_set(lsr0_set),
        .ocr(ocr),
        .p_2_in(p_2_in),
        .rd_ptr0(rd_ptr0),
        .rst_n(rst_n),
        .rst_n_0(rst_n_0),
        .start_tx(start_tx),
        .tick_d(tick_d),
        .trans_data_fi_sampled(trans_data_fi_sampled),
        .trans_stop_fi_sampled(trans_stop_fi_sampled),
        .tx_busy(tx_busy),
        .tx_busy_pulse(tx_busy_pulse));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx_top
   (fifo_tx_o,
    cts_sync,
    tx,
    fifo_tx_empty,
    lsr0_set,
    \data_size_sampled_reg[1] ,
    \data_size_sampled_reg[3] ,
    \data_size_sampled_reg[1]_0 ,
    clk,
    \sampled_data_reg[7] ,
    SR,
    baud_o,
    cpu_write_tdr_d,
    cts_n,
    \wr_ptr_reg[0] ,
    Q,
    ocr,
    rst_n,
    \FSM_sequential_current_state_reg[1] ,
    load_d0_sampled_reg,
    p_2_in,
    D,
    \data_size_sampled_reg[3]_0 ,
    \total_data_sampled_reg[3] );
  output [7:0]fifo_tx_o;
  output cts_sync;
  output tx;
  output fifo_tx_empty;
  output lsr0_set;
  output \data_size_sampled_reg[1] ;
  output [3:0]\data_size_sampled_reg[3] ;
  output \data_size_sampled_reg[1]_0 ;
  input clk;
  input [7:0]\sampled_data_reg[7] ;
  input [0:0]SR;
  input baud_o;
  input cpu_write_tdr_d;
  input cts_n;
  input [0:0]\wr_ptr_reg[0] ;
  input [1:0]Q;
  input [1:0]ocr;
  input rst_n;
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
  wire clk;
  wire cpu_write_tdr_d;
  wire cts_n;
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
  wire rst_n;
  wire [7:0]\sampled_data_reg[7] ;
  wire start_tx;
  wire [3:0]\total_data_sampled_reg[3] ;
  wire tx;
  wire tx_busy;
  wire tx_busy_d;
  wire tx_busy_pulse;
  wire uart_tx_inst_n_1;
  wire uart_tx_inst_n_3;
  wire wr_ptr0;
  wire [0:0]\wr_ptr_reg[0] ;
  wire write_data_d1;
  wire write_data_d2;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transmitter_fifo fifo_tx_inst
       (.E(wr_ptr0),
        .Q(Q),
        .clk(clk),
        .\count_reg[0]_0 (fifo_tx_empty),
        .\count_reg[0]_1 (uart_tx_inst_n_1),
        .fifo_tx_o(fifo_tx_o),
        .ocr(ocr[1]),
        .rd_ptr0(rd_ptr0),
        .rst_n(rst_n),
        .\sampled_data_reg[7] (\sampled_data_reg[7] ),
        .start_tx(start_tx),
        .tx_busy_pulse(tx_busy_pulse),
        .\wr_ptr_reg[0]_0 (\wr_ptr_reg[0] ),
        .write_data_d1(write_data_d1),
        .write_data_d2(write_data_d2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer inst_synchronizer
       (.\FSM_sequential_current_state[0]_i_2__0 (\FSM_sequential_current_state_reg[1] ),
        .SR(SR),
        .clk(clk),
        .cts_n(cts_n),
        .cts_n__0(cts_n__0),
        .sync_reg_0(cts_sync));
  FDRE tx_busy_d_reg
       (.C(clk),
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
  FDRE tx_busy_pulse_reg
       (.C(clk),
        .CE(1'b1),
        .D(negedge_tx_busy),
        .Q(tx_busy_pulse),
        .R(SR));
  FDRE tx_busy_reg
       (.C(clk),
        .CE(1'b1),
        .D(uart_tx_inst_n_3),
        .Q(tx_busy),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_transmitter uart_tx_inst
       (.D(D),
        .E(wr_ptr0),
        .\FSM_sequential_current_state_reg[1] (\FSM_sequential_current_state_reg[1] ),
        .\FSM_sequential_current_state_reg[2] (uart_tx_inst_n_1),
        .Q(Q[0]),
        .SR(SR),
        .baud_o(baud_o),
        .clk(clk),
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
        .p_2_in(p_2_in),
        .rd_ptr0(rd_ptr0),
        .rst_n(rst_n),
        .rst_n_0(uart_tx_inst_n_3),
        .start_tx(start_tx),
        .\total_data_sampled_reg[3]_0 (\total_data_sampled_reg[3] ),
        .tx(tx),
        .tx_busy(tx_busy),
        .tx_busy_pulse(tx_busy_pulse));
  FDRE write_data_d1_reg
       (.C(clk),
        .CE(1'b1),
        .D(cpu_write_tdr_d),
        .Q(write_data_d1),
        .R(SR));
  FDRE write_data_d2_reg
       (.C(clk),
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
