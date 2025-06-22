-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Sun Jun 22 12:03:43 2025
-- Host        : hieu-virtual-machine running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/hieu/Workspace/APB_UART/sim/work/axi4_uart/axi4_uart.gen/sources_1/bd/design_1/ip/design_1_axi4_uart_0_0/design_1_axi4_uart_0_0_sim_netlist.vhdl
-- Design      : design_1_axi4_uart_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0_axi4_lite is
  port (
    rst_n_0 : out STD_LOGIC;
    rst_n_1 : out STD_LOGIC;
    rst_n_2 : out STD_LOGIC;
    \tdr_d_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \tdr_d_reg[7]_1\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \lcr_d_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rts_no_reg : out STD_LOGIC;
    \hcr_d_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \lsr_reg[0]_0\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \fcr_d_reg[1]_0\ : out STD_LOGIC;
    rst_n_3 : out STD_LOGIC;
    rst_n_4 : out STD_LOGIC;
    rst_n_5 : out STD_LOGIC;
    lsr6_reset : out STD_LOGIC;
    \FSM_onehot_rd_state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    p_38_in : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ocr : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \lcr_d_reg[2]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \lcr_d_reg[2]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \shift_regs_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \lcr_d_reg[0]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BIT_PERIOD_TX : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \FSM_onehot_wr_state_reg[3]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \fcr_d_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_2_in : out STD_LOGIC;
    cpu_write_tdr : out STD_LOGIC;
    rst_n_6 : out STD_LOGIC;
    rst_n_7 : out STD_LOGIC;
    cpu_write_tdr_d_reg : out STD_LOGIC;
    rst_n : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    fifo_tx_o : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rts_no_reg_0 : in STD_LOGIC;
    \lsr_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    lsr0_set : in STD_LOGIC;
    \lsr_reg[6]_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \lsr_reg[1]_0\ : in STD_LOGIC;
    fifo_rx_triggered : in STD_LOGIC;
    parity_err : in STD_LOGIC;
    stop_bit_err : in STD_LOGIC;
    \lsr_reg[5]_0\ : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    tdr_empty_reg : in STD_LOGIC;
    \data_o_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    cts_sync : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    fifo_tx_empty : in STD_LOGIC;
    fifo_rx_empty : in STD_LOGIC;
    cpu_write_tdr_d : in STD_LOGIC;
    clk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \rdr_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_uart_0_0_axi4_lite : entity is "axi4_lite";
end design_1_axi4_uart_0_0_axi4_lite;

architecture STRUCTURE of design_1_axi4_uart_0_0_axi4_lite is
  signal \FSM_onehot_rd_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rd_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rd_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rd_state_reg[2]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \FSM_onehot_rd_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_wr_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wr_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wr_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wr_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wr_state_reg[3]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \FSM_onehot_wr_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_read_iir : STD_LOGIC;
  signal cpu_write_tdr_d_i_2_n_0 : STD_LOGIC;
  signal cpu_write_tdr_d_i_3_n_0 : STD_LOGIC;
  signal fcr : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \fcr1__5\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[10]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[11]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[12]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[13]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[14]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[15]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[16]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[17]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[18]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[19]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[20]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[21]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[22]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[23]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[24]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[25]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[26]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[27]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[28]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[29]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[30]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[31]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[5]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[6]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[7]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[8]\ : STD_LOGIC;
  signal \fcr_d_reg_n_0_[9]\ : STD_LOGIC;
  signal fifo_rx_pop_i_3_n_0 : STD_LOGIC;
  signal hcr : STD_LOGIC_VECTOR ( 1 to 1 );
  signal hcr_1 : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \hcr_d[15]_i_2_n_0\ : STD_LOGIC;
  signal \hcr_d[23]_i_2_n_0\ : STD_LOGIC;
  signal \hcr_d[31]_i_2_n_0\ : STD_LOGIC;
  signal \hcr_d[31]_i_3_n_0\ : STD_LOGIC;
  signal \hcr_d[31]_i_4_n_0\ : STD_LOGIC;
  signal \hcr_d[7]_i_2_n_0\ : STD_LOGIC;
  signal \^hcr_d_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \hcr_d_reg_n_0_[10]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[11]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[12]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[13]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[14]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[15]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[16]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[17]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[18]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[19]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[20]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[21]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[22]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[23]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[24]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[25]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[26]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[27]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[28]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[29]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[2]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[30]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[31]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[3]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[4]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[5]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[6]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[7]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[8]\ : STD_LOGIC;
  signal \hcr_d_reg_n_0_[9]\ : STD_LOGIC;
  signal ier : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \ier1__4\ : STD_LOGIC;
  signal ier_0 : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \ier_d[31]_i_3_n_0\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[10]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[11]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[12]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[13]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[14]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[15]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[16]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[17]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[18]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[19]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[20]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[21]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[22]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[23]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[24]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[25]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[26]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[27]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[28]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[29]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[30]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[31]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[3]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[4]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[5]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[6]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[7]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[8]\ : STD_LOGIC;
  signal \ier_d_reg_n_0_[9]\ : STD_LOGIC;
  signal iir1 : STD_LOGIC;
  signal iir120_out : STD_LOGIC;
  signal \iir[2]_i_5_n_0\ : STD_LOGIC;
  signal \iir[2]_i_6_n_0\ : STD_LOGIC;
  signal \iir[2]_i_7_n_0\ : STD_LOGIC;
  signal \iir[2]_i_8_n_0\ : STD_LOGIC;
  signal \iir_reg_n_0_[0]\ : STD_LOGIC;
  signal \iir_reg_n_0_[1]\ : STD_LOGIC;
  signal \iir_reg_n_0_[2]\ : STD_LOGIC;
  signal lcr : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \lcr_d[31]_i_2_n_0\ : STD_LOGIC;
  signal \lcr_d[31]_i_3_n_0\ : STD_LOGIC;
  signal \lcr_d[31]_i_4_n_0\ : STD_LOGIC;
  signal \^lcr_d_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \lcr_d_reg_n_0_[10]\ : STD_LOGIC;
  signal \lcr_d_reg_n_0_[11]\ : STD_LOGIC;
  signal \lcr_d_reg_n_0_[12]\ : STD_LOGIC;
  signal \lcr_d_reg_n_0_[13]\ : STD_LOGIC;
  signal \lcr_d_reg_n_0_[14]\ : STD_LOGIC;
  signal \lcr_d_reg_n_0_[15]\ : STD_LOGIC;
  signal \lcr_d_reg_n_0_[16]\ : STD_LOGIC;
  signal \lcr_d_reg_n_0_[17]\ : STD_LOGIC;
  signal \lcr_d_reg_n_0_[18]\ : STD_LOGIC;
  signal \lcr_d_reg_n_0_[19]\ : STD_LOGIC;
  signal \lcr_d_reg_n_0_[20]\ : STD_LOGIC;
  signal \lcr_d_reg_n_0_[21]\ : STD_LOGIC;
  signal \lcr_d_reg_n_0_[22]\ : STD_LOGIC;
  signal \lcr_d_reg_n_0_[23]\ : STD_LOGIC;
  signal \lcr_d_reg_n_0_[24]\ : STD_LOGIC;
  signal \lcr_d_reg_n_0_[25]\ : STD_LOGIC;
  signal \lcr_d_reg_n_0_[26]\ : STD_LOGIC;
  signal \lcr_d_reg_n_0_[27]\ : STD_LOGIC;
  signal \lcr_d_reg_n_0_[28]\ : STD_LOGIC;
  signal \lcr_d_reg_n_0_[29]\ : STD_LOGIC;
  signal \lcr_d_reg_n_0_[30]\ : STD_LOGIC;
  signal \lcr_d_reg_n_0_[31]\ : STD_LOGIC;
  signal \lcr_d_reg_n_0_[8]\ : STD_LOGIC;
  signal \lcr_d_reg_n_0_[9]\ : STD_LOGIC;
  signal \lsr[6]_i_5_n_0\ : STD_LOGIC;
  signal \lsr_reg_n_0_[0]\ : STD_LOGIC;
  signal \lsr_reg_n_0_[1]\ : STD_LOGIC;
  signal \lsr_reg_n_0_[2]\ : STD_LOGIC;
  signal \lsr_reg_n_0_[3]\ : STD_LOGIC;
  signal \lsr_reg_n_0_[4]\ : STD_LOGIC;
  signal \lsr_reg_n_0_[5]\ : STD_LOGIC;
  signal \lsr_reg_n_0_[6]\ : STD_LOGIC;
  signal \^ocr\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \ocr1__4\ : STD_LOGIC;
  signal \ocr_d[15]_i_1_n_0\ : STD_LOGIC;
  signal \ocr_d[1]_i_1_n_0\ : STD_LOGIC;
  signal \ocr_d[23]_i_1_n_0\ : STD_LOGIC;
  signal \ocr_d[31]_i_1_n_0\ : STD_LOGIC;
  signal \ocr_d[7]_i_1_n_0\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[10]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[11]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[12]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[13]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[14]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[15]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[16]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[17]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[18]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[19]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[20]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[21]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[22]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[23]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[24]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[25]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[26]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[27]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[28]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[29]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[30]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[31]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[3]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[4]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[5]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[6]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[7]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[8]\ : STD_LOGIC;
  signal \ocr_d_reg_n_0_[9]\ : STD_LOGIC;
  signal p_35_in : STD_LOGIC;
  signal r_offset_r : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal rdr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rts_no_i_2_n_0 : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \s_axi_rdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal tdr : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal tdr_d : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \^tdr_d_reg[7]_1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \uart_rx_top_inst/rts_no04_out\ : STD_LOGIC;
  signal w_offset_r : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BIT_PERIOD_TX[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \BIT_PERIOD_TX[10]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \BIT_PERIOD_TX[11]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \BIT_PERIOD_TX[12]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \BIT_PERIOD_TX[13]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \BIT_PERIOD_TX[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \BIT_PERIOD_TX[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \BIT_PERIOD_TX[3]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \BIT_PERIOD_TX[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \BIT_PERIOD_TX[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \BIT_PERIOD_TX[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \BIT_PERIOD_TX[7]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \BIT_PERIOD_TX[8]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \BIT_PERIOD_TX[9]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_onehot_rd_state[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_onehot_rd_state[2]_i_1\ : label is "soft_lutpair21";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rd_state_reg[0]\ : label is "RD_IDLE:001,RD_READY:010,RD_DONE:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rd_state_reg[1]\ : label is "RD_IDLE:001,RD_READY:010,RD_DONE:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rd_state_reg[2]\ : label is "RD_IDLE:001,RD_READY:010,RD_DONE:100";
  attribute SOFT_HLUTNM of \FSM_onehot_wr_state[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \FSM_onehot_wr_state[3]_i_1\ : label is "soft_lutpair27";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wr_state_reg[0]\ : label is "WR_IDLE:0001,WR_READY:0010,WR_DATA:0100,WR_DONE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wr_state_reg[1]\ : label is "WR_IDLE:0001,WR_READY:0010,WR_DATA:0100,WR_DONE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wr_state_reg[2]\ : label is "WR_IDLE:0001,WR_READY:0010,WR_DATA:0100,WR_DONE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wr_state_reg[3]\ : label is "WR_IDLE:0001,WR_READY:0010,WR_DATA:0100,WR_DONE:1000";
  attribute SOFT_HLUTNM of \count[4]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_o[7]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data_size_sampled[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data_size_sampled[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_size_sampled[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_size_sampled[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \hcr_d[23]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \hcr_d[31]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \hcr_d[7]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ier_d[31]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \iir[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \iir[2]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \iir[2]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \lcr_d[31]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \lsr[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ocr_d[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axi_rdata[31]_INST_0_i_6\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_axi_rdata[6]_INST_0_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_axi_rdata[6]_INST_0_i_4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_axi_rdata[6]_INST_0_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sampled_data[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sampled_data[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sampled_data[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sampled_data[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sampled_data[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sampled_data[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sampled_data[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \total_data_sampled[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \total_data_sampled[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \total_data_sampled[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \total_data_sampled[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \total_data_size_sampled[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \total_data_size_sampled[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \total_data_size_sampled[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \total_data_size_sampled[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \wr_ptr[3]_i_1__0\ : label is "soft_lutpair10";
begin
  \FSM_onehot_rd_state_reg[2]_0\(1 downto 0) <= \^fsm_onehot_rd_state_reg[2]_0\(1 downto 0);
  \FSM_onehot_wr_state_reg[3]_0\(2 downto 0) <= \^fsm_onehot_wr_state_reg[3]_0\(2 downto 0);
  Q(4 downto 0) <= \^q\(4 downto 0);
  SR(0) <= \^sr\(0);
  \hcr_d_reg[0]_0\(0) <= \^hcr_d_reg[0]_0\(0);
  \lcr_d_reg[7]_0\(7 downto 0) <= \^lcr_d_reg[7]_0\(7 downto 0);
  ocr(2 downto 0) <= \^ocr\(2 downto 0);
  s_axi_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  \tdr_d_reg[7]_1\(7 downto 0) <= \^tdr_d_reg[7]_1\(7 downto 0);
\BIT_PERIOD_TX[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(7),
      I1 => \^lcr_d_reg[7]_0\(6),
      I2 => rst_n,
      I3 => \^lcr_d_reg[7]_0\(5),
      O => BIT_PERIOD_TX(0)
    );
\BIT_PERIOD_TX[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1060"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(6),
      I1 => \^lcr_d_reg[7]_0\(7),
      I2 => rst_n,
      I3 => \^lcr_d_reg[7]_0\(5),
      O => BIT_PERIOD_TX(10)
    );
\BIT_PERIOD_TX[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3100"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(5),
      I1 => \^lcr_d_reg[7]_0\(7),
      I2 => \^lcr_d_reg[7]_0\(6),
      I3 => rst_n,
      O => BIT_PERIOD_TX(11)
    );
\BIT_PERIOD_TX[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(7),
      I1 => \^lcr_d_reg[7]_0\(6),
      I2 => rst_n,
      I3 => \^lcr_d_reg[7]_0\(5),
      O => BIT_PERIOD_TX(12)
    );
\BIT_PERIOD_TX[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(6),
      I1 => \^lcr_d_reg[7]_0\(5),
      I2 => \^lcr_d_reg[7]_0\(7),
      I3 => rst_n,
      O => BIT_PERIOD_TX(13)
    );
\BIT_PERIOD_TX[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(5),
      I1 => \^lcr_d_reg[7]_0\(7),
      I2 => rst_n,
      O => BIT_PERIOD_TX(1)
    );
\BIT_PERIOD_TX[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6200"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(7),
      I1 => \^lcr_d_reg[7]_0\(6),
      I2 => \^lcr_d_reg[7]_0\(5),
      I3 => rst_n,
      O => BIT_PERIOD_TX(2)
    );
\BIT_PERIOD_TX[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D000"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(7),
      I1 => \^lcr_d_reg[7]_0\(6),
      I2 => rst_n,
      I3 => \^lcr_d_reg[7]_0\(5),
      O => BIT_PERIOD_TX(3)
    );
\BIT_PERIOD_TX[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F77F"
    )
        port map (
      I0 => rst_n,
      I1 => \^lcr_d_reg[7]_0\(5),
      I2 => \^lcr_d_reg[7]_0\(7),
      I3 => \^lcr_d_reg[7]_0\(6),
      O => BIT_PERIOD_TX(4)
    );
\BIT_PERIOD_TX[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69FF"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(7),
      I1 => \^lcr_d_reg[7]_0\(5),
      I2 => \^lcr_d_reg[7]_0\(6),
      I3 => rst_n,
      O => BIT_PERIOD_TX(5)
    );
\BIT_PERIOD_TX[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D000"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(6),
      I1 => \^lcr_d_reg[7]_0\(7),
      I2 => rst_n,
      I3 => \^lcr_d_reg[7]_0\(5),
      O => BIT_PERIOD_TX(6)
    );
\BIT_PERIOD_TX[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F757"
    )
        port map (
      I0 => rst_n,
      I1 => \^lcr_d_reg[7]_0\(5),
      I2 => \^lcr_d_reg[7]_0\(7),
      I3 => \^lcr_d_reg[7]_0\(6),
      O => BIT_PERIOD_TX(7)
    );
\BIT_PERIOD_TX[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3FBB"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(7),
      I1 => rst_n,
      I2 => \^lcr_d_reg[7]_0\(5),
      I3 => \^lcr_d_reg[7]_0\(6),
      O => BIT_PERIOD_TX(8)
    );
\BIT_PERIOD_TX[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(6),
      I1 => \^lcr_d_reg[7]_0\(7),
      I2 => \^lcr_d_reg[7]_0\(5),
      I3 => rst_n,
      O => BIT_PERIOD_TX(9)
    );
\FSM_onehot_rd_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_rd_state_reg_n_0_[0]\,
      I2 => \^fsm_onehot_rd_state_reg[2]_0\(1),
      O => \FSM_onehot_rd_state[0]_i_1_n_0\
    );
\FSM_onehot_rd_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^fsm_onehot_rd_state_reg[2]_0\(0),
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_rd_state_reg_n_0_[0]\,
      O => \FSM_onehot_rd_state[1]_i_1_n_0\
    );
\FSM_onehot_rd_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_rd_state_reg[2]_0\(0),
      I1 => s_axi_rready,
      O => \FSM_onehot_rd_state[2]_i_1_n_0\
    );
\FSM_onehot_rd_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_rd_state[0]_i_1_n_0\,
      Q => \FSM_onehot_rd_state_reg_n_0_[0]\,
      S => \^sr\(0)
    );
\FSM_onehot_rd_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_rd_state[1]_i_1_n_0\,
      Q => \^fsm_onehot_rd_state_reg[2]_0\(0),
      R => \^sr\(0)
    );
\FSM_onehot_rd_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_rd_state[2]_i_1_n_0\,
      Q => \^fsm_onehot_rd_state_reg[2]_0\(1),
      R => \^sr\(0)
    );
\FSM_onehot_wr_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \FSM_onehot_wr_state_reg_n_0_[0]\,
      I2 => \^fsm_onehot_wr_state_reg[3]_0\(2),
      O => \FSM_onehot_wr_state[0]_i_1_n_0\
    );
\FSM_onehot_wr_state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^sr\(0)
    );
\FSM_onehot_wr_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_wr_state_reg_n_0_[0]\,
      I1 => s_axi_awvalid,
      O => \FSM_onehot_wr_state[1]_i_2_n_0\
    );
\FSM_onehot_wr_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      I2 => \^fsm_onehot_wr_state_reg[3]_0\(0),
      O => \FSM_onehot_wr_state[2]_i_1_n_0\
    );
\FSM_onehot_wr_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      I1 => s_axi_bready,
      O => \FSM_onehot_wr_state[3]_i_1_n_0\
    );
\FSM_onehot_wr_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_wr_state[0]_i_1_n_0\,
      Q => \FSM_onehot_wr_state_reg_n_0_[0]\,
      S => \^sr\(0)
    );
\FSM_onehot_wr_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_wr_state[1]_i_2_n_0\,
      Q => \^fsm_onehot_wr_state_reg[3]_0\(0),
      R => \^sr\(0)
    );
\FSM_onehot_wr_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_wr_state[2]_i_1_n_0\,
      Q => \^fsm_onehot_wr_state_reg[3]_0\(1),
      R => \^sr\(0)
    );
\FSM_onehot_wr_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_wr_state[3]_i_1_n_0\,
      Q => \^fsm_onehot_wr_state_reg[3]_0\(2),
      R => \^sr\(0)
    );
\FSM_sequential_current_state[1]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^ocr\(0),
      I1 => \^hcr_d_reg[0]_0\(0),
      I2 => cts_sync,
      O => p_2_in
    );
\count[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(2),
      I1 => rst_n,
      O => \fcr_d_reg[2]_0\(0)
    );
cpu_write_tdr_d_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => cpu_write_tdr_d_i_2_n_0,
      I1 => s_axi_awaddr(1),
      I2 => s_axi_awaddr(0),
      I3 => s_axi_awaddr(3),
      I4 => s_axi_awaddr(2),
      I5 => cpu_write_tdr_d_i_3_n_0,
      O => cpu_write_tdr
    );
cpu_write_tdr_d_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_awaddr(7),
      I1 => s_axi_awaddr(6),
      I2 => s_axi_awaddr(5),
      I3 => s_axi_awaddr(4),
      O => cpu_write_tdr_d_i_2_n_0
    );
cpu_write_tdr_d_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => s_axi_awaddr(8),
      I1 => s_axi_awaddr(9),
      I2 => s_axi_awaddr(10),
      I3 => s_axi_awaddr(11),
      I4 => \^fsm_onehot_wr_state_reg[3]_0\(0),
      I5 => s_axi_awvalid,
      O => cpu_write_tdr_d_i_3_n_0
    );
\data_o[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \data_o_reg[7]\(0),
      I1 => \^lcr_d_reg[7]_0\(0),
      I2 => \^lcr_d_reg[7]_0\(1),
      O => \shift_regs_reg[7]\(0)
    );
\data_size_sampled[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(0),
      O => \lcr_d_reg[0]_0\(0)
    );
\data_size_sampled[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(0),
      I1 => \^lcr_d_reg[7]_0\(1),
      O => \lcr_d_reg[0]_0\(1)
    );
\data_size_sampled[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(1),
      I1 => \^lcr_d_reg[7]_0\(0),
      O => \lcr_d_reg[0]_0\(2)
    );
\data_size_sampled[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(0),
      I1 => \^lcr_d_reg[7]_0\(1),
      O => \lcr_d_reg[0]_0\(3)
    );
\fcr_d[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      I1 => s_axi_wstrb(1),
      I2 => \fcr1__5\,
      O => fcr(15)
    );
\fcr_d[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      I1 => s_axi_wstrb(2),
      I2 => \fcr1__5\,
      O => fcr(23)
    );
\fcr_d[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      I1 => s_axi_wstrb(3),
      I2 => \fcr1__5\,
      O => fcr(31)
    );
\fcr_d[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \lcr_d[31]_i_4_n_0\,
      I1 => w_offset_r(0),
      I2 => \ier_d[31]_i_3_n_0\,
      I3 => w_offset_r(3),
      I4 => w_offset_r(4),
      I5 => w_offset_r(2),
      O => \fcr1__5\
    );
\fcr_d[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      I1 => s_axi_wstrb(0),
      I2 => \fcr1__5\,
      O => fcr(7)
    );
\fcr_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(7),
      D => s_axi_wdata(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\fcr_d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(15),
      D => s_axi_wdata(10),
      Q => \fcr_d_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\fcr_d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(15),
      D => s_axi_wdata(11),
      Q => \fcr_d_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\fcr_d_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(15),
      D => s_axi_wdata(12),
      Q => \fcr_d_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\fcr_d_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(15),
      D => s_axi_wdata(13),
      Q => \fcr_d_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\fcr_d_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(15),
      D => s_axi_wdata(14),
      Q => \fcr_d_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\fcr_d_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(15),
      D => s_axi_wdata(15),
      Q => \fcr_d_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\fcr_d_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(23),
      D => s_axi_wdata(16),
      Q => \fcr_d_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\fcr_d_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(23),
      D => s_axi_wdata(17),
      Q => \fcr_d_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\fcr_d_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(23),
      D => s_axi_wdata(18),
      Q => \fcr_d_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\fcr_d_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(23),
      D => s_axi_wdata(19),
      Q => \fcr_d_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\fcr_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(7),
      D => s_axi_wdata(1),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\fcr_d_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(23),
      D => s_axi_wdata(20),
      Q => \fcr_d_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\fcr_d_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(23),
      D => s_axi_wdata(21),
      Q => \fcr_d_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\fcr_d_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(23),
      D => s_axi_wdata(22),
      Q => \fcr_d_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\fcr_d_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(23),
      D => s_axi_wdata(23),
      Q => \fcr_d_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\fcr_d_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(31),
      D => s_axi_wdata(24),
      Q => \fcr_d_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\fcr_d_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(31),
      D => s_axi_wdata(25),
      Q => \fcr_d_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\fcr_d_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(31),
      D => s_axi_wdata(26),
      Q => \fcr_d_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\fcr_d_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(31),
      D => s_axi_wdata(27),
      Q => \fcr_d_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\fcr_d_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(31),
      D => s_axi_wdata(28),
      Q => \fcr_d_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\fcr_d_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(31),
      D => s_axi_wdata(29),
      Q => \fcr_d_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\fcr_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(7),
      D => s_axi_wdata(2),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\fcr_d_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(31),
      D => s_axi_wdata(30),
      Q => \fcr_d_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\fcr_d_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(31),
      D => s_axi_wdata(31),
      Q => \fcr_d_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\fcr_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(7),
      D => s_axi_wdata(3),
      Q => \^q\(3),
      R => \^sr\(0)
    );
\fcr_d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(7),
      D => s_axi_wdata(4),
      Q => \^q\(4),
      R => \^sr\(0)
    );
\fcr_d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(7),
      D => s_axi_wdata(5),
      Q => \fcr_d_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\fcr_d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(7),
      D => s_axi_wdata(6),
      Q => \fcr_d_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\fcr_d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(7),
      D => s_axi_wdata(7),
      Q => \fcr_d_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\fcr_d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(15),
      D => s_axi_wdata(8),
      Q => \fcr_d_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\fcr_d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fcr(15),
      D => s_axi_wdata(9),
      Q => \fcr_d_reg_n_0_[9]\,
      R => \^sr\(0)
    );
fifo_rx_pop_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \iir[2]_i_6_n_0\,
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(3),
      I4 => s_axi_araddr(2),
      I5 => fifo_rx_pop_i_3_n_0,
      O => p_38_in
    );
fifo_rx_pop_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => s_axi_araddr(6),
      I2 => s_axi_araddr(4),
      I3 => s_axi_araddr(5),
      I4 => s_axi_arvalid,
      I5 => \^fsm_onehot_rd_state_reg[2]_0\(0),
      O => fifo_rx_pop_i_3_n_0
    );
\hcr_d[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \hcr_d[15]_i_2_n_0\,
      I1 => \lcr_d[31]_i_2_n_0\,
      I2 => w_offset_r(5),
      I3 => w_offset_r(4),
      I4 => \hcr_d[31]_i_3_n_0\,
      I5 => \hcr_d[31]_i_4_n_0\,
      O => hcr_1(15)
    );
\hcr_d[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      O => \hcr_d[15]_i_2_n_0\
    );
\hcr_d[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \hcr_d[23]_i_2_n_0\,
      I1 => \lcr_d[31]_i_2_n_0\,
      I2 => w_offset_r(5),
      I3 => w_offset_r(4),
      I4 => \hcr_d[31]_i_3_n_0\,
      I5 => \hcr_d[31]_i_4_n_0\,
      O => hcr_1(23)
    );
\hcr_d[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      O => \hcr_d[23]_i_2_n_0\
    );
\hcr_d[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \hcr_d[31]_i_2_n_0\,
      I1 => \lcr_d[31]_i_2_n_0\,
      I2 => w_offset_r(5),
      I3 => w_offset_r(4),
      I4 => \hcr_d[31]_i_3_n_0\,
      I5 => \hcr_d[31]_i_4_n_0\,
      O => hcr_1(31)
    );
\hcr_d[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      O => \hcr_d[31]_i_2_n_0\
    );
\hcr_d[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => w_offset_r(2),
      I1 => w_offset_r(3),
      O => \hcr_d[31]_i_3_n_0\
    );
\hcr_d[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => w_offset_r(7),
      I1 => w_offset_r(6),
      O => \hcr_d[31]_i_4_n_0\
    );
\hcr_d[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \hcr_d[7]_i_2_n_0\,
      I1 => \lcr_d[31]_i_2_n_0\,
      I2 => w_offset_r(5),
      I3 => w_offset_r(4),
      I4 => \hcr_d[31]_i_3_n_0\,
      I5 => \hcr_d[31]_i_4_n_0\,
      O => hcr_1(7)
    );
\hcr_d[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      O => \hcr_d[7]_i_2_n_0\
    );
\hcr_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(7),
      D => s_axi_wdata(0),
      Q => \^hcr_d_reg[0]_0\(0),
      R => \^sr\(0)
    );
\hcr_d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(15),
      D => s_axi_wdata(10),
      Q => \hcr_d_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\hcr_d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(15),
      D => s_axi_wdata(11),
      Q => \hcr_d_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\hcr_d_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(15),
      D => s_axi_wdata(12),
      Q => \hcr_d_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\hcr_d_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(15),
      D => s_axi_wdata(13),
      Q => \hcr_d_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\hcr_d_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(15),
      D => s_axi_wdata(14),
      Q => \hcr_d_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\hcr_d_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(15),
      D => s_axi_wdata(15),
      Q => \hcr_d_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\hcr_d_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(23),
      D => s_axi_wdata(16),
      Q => \hcr_d_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\hcr_d_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(23),
      D => s_axi_wdata(17),
      Q => \hcr_d_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\hcr_d_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(23),
      D => s_axi_wdata(18),
      Q => \hcr_d_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\hcr_d_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(23),
      D => s_axi_wdata(19),
      Q => \hcr_d_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\hcr_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(7),
      D => s_axi_wdata(1),
      Q => hcr(1),
      R => \^sr\(0)
    );
\hcr_d_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(23),
      D => s_axi_wdata(20),
      Q => \hcr_d_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\hcr_d_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(23),
      D => s_axi_wdata(21),
      Q => \hcr_d_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\hcr_d_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(23),
      D => s_axi_wdata(22),
      Q => \hcr_d_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\hcr_d_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(23),
      D => s_axi_wdata(23),
      Q => \hcr_d_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\hcr_d_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(31),
      D => s_axi_wdata(24),
      Q => \hcr_d_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\hcr_d_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(31),
      D => s_axi_wdata(25),
      Q => \hcr_d_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\hcr_d_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(31),
      D => s_axi_wdata(26),
      Q => \hcr_d_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\hcr_d_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(31),
      D => s_axi_wdata(27),
      Q => \hcr_d_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\hcr_d_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(31),
      D => s_axi_wdata(28),
      Q => \hcr_d_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\hcr_d_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(31),
      D => s_axi_wdata(29),
      Q => \hcr_d_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\hcr_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(7),
      D => s_axi_wdata(2),
      Q => \hcr_d_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\hcr_d_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(31),
      D => s_axi_wdata(30),
      Q => \hcr_d_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\hcr_d_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(31),
      D => s_axi_wdata(31),
      Q => \hcr_d_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\hcr_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(7),
      D => s_axi_wdata(3),
      Q => \hcr_d_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\hcr_d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(7),
      D => s_axi_wdata(4),
      Q => \hcr_d_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\hcr_d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(7),
      D => s_axi_wdata(5),
      Q => \hcr_d_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\hcr_d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(7),
      D => s_axi_wdata(6),
      Q => \hcr_d_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\hcr_d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(7),
      D => s_axi_wdata(7),
      Q => \hcr_d_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\hcr_d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(15),
      D => s_axi_wdata(8),
      Q => \hcr_d_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\hcr_d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hcr_1(15),
      D => s_axi_wdata(9),
      Q => \hcr_d_reg_n_0_[9]\,
      R => \^sr\(0)
    );
\ier_d[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      I1 => s_axi_wstrb(1),
      I2 => \ier1__4\,
      O => ier_0(15)
    );
\ier_d[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      I1 => s_axi_wstrb(2),
      I2 => \ier1__4\,
      O => ier_0(23)
    );
\ier_d[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      I1 => s_axi_wstrb(3),
      I2 => \ier1__4\,
      O => ier_0(31)
    );
\ier_d[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => \lcr_d[31]_i_4_n_0\,
      I1 => w_offset_r(0),
      I2 => \ier_d[31]_i_3_n_0\,
      I3 => w_offset_r(4),
      I4 => w_offset_r(3),
      I5 => w_offset_r(2),
      O => \ier1__4\
    );
\ier_d[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => w_offset_r(1),
      I1 => w_offset_r(5),
      I2 => w_offset_r(6),
      I3 => w_offset_r(7),
      O => \ier_d[31]_i_3_n_0\
    );
\ier_d[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      I1 => s_axi_wstrb(0),
      I2 => \ier1__4\,
      O => ier_0(7)
    );
\ier_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(7),
      D => s_axi_wdata(0),
      Q => ier(0),
      R => \^sr\(0)
    );
\ier_d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(15),
      D => s_axi_wdata(10),
      Q => \ier_d_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\ier_d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(15),
      D => s_axi_wdata(11),
      Q => \ier_d_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\ier_d_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(15),
      D => s_axi_wdata(12),
      Q => \ier_d_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\ier_d_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(15),
      D => s_axi_wdata(13),
      Q => \ier_d_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\ier_d_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(15),
      D => s_axi_wdata(14),
      Q => \ier_d_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\ier_d_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(15),
      D => s_axi_wdata(15),
      Q => \ier_d_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\ier_d_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(23),
      D => s_axi_wdata(16),
      Q => \ier_d_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\ier_d_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(23),
      D => s_axi_wdata(17),
      Q => \ier_d_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\ier_d_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(23),
      D => s_axi_wdata(18),
      Q => \ier_d_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\ier_d_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(23),
      D => s_axi_wdata(19),
      Q => \ier_d_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\ier_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(7),
      D => s_axi_wdata(1),
      Q => ier(1),
      R => \^sr\(0)
    );
\ier_d_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(23),
      D => s_axi_wdata(20),
      Q => \ier_d_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\ier_d_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(23),
      D => s_axi_wdata(21),
      Q => \ier_d_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\ier_d_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(23),
      D => s_axi_wdata(22),
      Q => \ier_d_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\ier_d_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(23),
      D => s_axi_wdata(23),
      Q => \ier_d_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\ier_d_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(31),
      D => s_axi_wdata(24),
      Q => \ier_d_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\ier_d_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(31),
      D => s_axi_wdata(25),
      Q => \ier_d_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\ier_d_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(31),
      D => s_axi_wdata(26),
      Q => \ier_d_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\ier_d_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(31),
      D => s_axi_wdata(27),
      Q => \ier_d_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\ier_d_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(31),
      D => s_axi_wdata(28),
      Q => \ier_d_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\ier_d_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(31),
      D => s_axi_wdata(29),
      Q => \ier_d_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\ier_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(7),
      D => s_axi_wdata(2),
      Q => ier(2),
      R => \^sr\(0)
    );
\ier_d_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(31),
      D => s_axi_wdata(30),
      Q => \ier_d_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\ier_d_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(31),
      D => s_axi_wdata(31),
      Q => \ier_d_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\ier_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(7),
      D => s_axi_wdata(3),
      Q => \ier_d_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\ier_d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(7),
      D => s_axi_wdata(4),
      Q => \ier_d_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\ier_d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(7),
      D => s_axi_wdata(5),
      Q => \ier_d_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\ier_d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(7),
      D => s_axi_wdata(6),
      Q => \ier_d_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\ier_d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(7),
      D => s_axi_wdata(7),
      Q => \ier_d_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\ier_d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(15),
      D => s_axi_wdata(8),
      Q => \ier_d_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\ier_d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ier_0(15),
      D => s_axi_wdata(9),
      Q => \ier_d_reg_n_0_[9]\,
      R => \^sr\(0)
    );
\iir[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFB0"
    )
        port map (
      I0 => cpu_read_iir,
      I1 => rst_n,
      I2 => \iir[2]_i_5_n_0\,
      I3 => D(0),
      O => rst_n_2
    );
\iir[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2202FFFF22020000"
    )
        port map (
      I0 => rst_n,
      I1 => cpu_read_iir,
      I2 => iir1,
      I3 => iir120_out,
      I4 => \iir[2]_i_5_n_0\,
      I5 => D(1),
      O => rst_n_1
    );
\iir[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220FFFF22200000"
    )
        port map (
      I0 => rst_n,
      I1 => cpu_read_iir,
      I2 => iir1,
      I3 => iir120_out,
      I4 => \iir[2]_i_5_n_0\,
      I5 => D(2),
      O => rst_n_0
    );
\iir[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \iir[2]_i_6_n_0\,
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(3),
      I4 => s_axi_araddr(2),
      I5 => \iir[2]_i_7_n_0\,
      O => cpu_read_iir
    );
\iir[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ier(0),
      I1 => \lsr_reg[1]_0\,
      O => iir1
    );
\iir[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \lsr_reg[6]_0\(2),
      I1 => \lsr_reg[6]_0\(6),
      I2 => \lsr_reg[6]_0\(5),
      I3 => \lsr_reg[6]_0\(3),
      I4 => ier(2),
      O => iir120_out
    );
\iir[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBAFF"
    )
        port map (
      I0 => cpu_read_iir,
      I1 => \lsr_reg[1]_0\,
      I2 => ier(0),
      I3 => rst_n,
      I4 => \iir[2]_i_8_n_0\,
      O => \iir[2]_i_5_n_0\
    );
\iir[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_araddr(8),
      I1 => s_axi_araddr(9),
      I2 => s_axi_araddr(11),
      I3 => s_axi_araddr(10),
      O => \iir[2]_i_6_n_0\
    );
\iir[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => s_axi_araddr(6),
      I2 => s_axi_araddr(4),
      I3 => s_axi_araddr(5),
      I4 => s_axi_arvalid,
      I5 => \^fsm_onehot_rd_state_reg[2]_0\(0),
      O => \iir[2]_i_7_n_0\
    );
\iir[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => tdr_empty_reg,
      I1 => ier(1),
      I2 => \^ocr\(1),
      I3 => iir120_out,
      O => \iir[2]_i_8_n_0\
    );
\iir_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(0),
      Q => \iir_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\iir_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(1),
      Q => \iir_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\iir_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(2),
      Q => \iir_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\lcr_d[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      I1 => s_axi_wstrb(1),
      I2 => \lcr_d[31]_i_2_n_0\,
      I3 => w_offset_r(2),
      I4 => w_offset_r(3),
      I5 => \lcr_d[31]_i_3_n_0\,
      O => lcr(15)
    );
\lcr_d[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      I1 => s_axi_wstrb(2),
      I2 => \lcr_d[31]_i_2_n_0\,
      I3 => w_offset_r(2),
      I4 => w_offset_r(3),
      I5 => \lcr_d[31]_i_3_n_0\,
      O => lcr(23)
    );
\lcr_d[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      I1 => s_axi_wstrb(3),
      I2 => \lcr_d[31]_i_2_n_0\,
      I3 => w_offset_r(2),
      I4 => w_offset_r(3),
      I5 => \lcr_d[31]_i_3_n_0\,
      O => lcr(31)
    );
\lcr_d[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \lcr_d[31]_i_4_n_0\,
      I1 => w_offset_r(0),
      I2 => w_offset_r(1),
      O => \lcr_d[31]_i_2_n_0\
    );
\lcr_d[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => w_offset_r(4),
      I1 => w_offset_r(5),
      I2 => w_offset_r(6),
      I3 => w_offset_r(7),
      O => \lcr_d[31]_i_3_n_0\
    );
\lcr_d[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => s_axi_bready,
      I1 => s_axi_wvalid,
      I2 => w_offset_r(10),
      I3 => w_offset_r(11),
      I4 => w_offset_r(9),
      I5 => w_offset_r(8),
      O => \lcr_d[31]_i_4_n_0\
    );
\lcr_d[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      I1 => s_axi_wstrb(0),
      I2 => \lcr_d[31]_i_2_n_0\,
      I3 => w_offset_r(2),
      I4 => w_offset_r(3),
      I5 => \lcr_d[31]_i_3_n_0\,
      O => lcr(7)
    );
\lcr_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(7),
      D => s_axi_wdata(0),
      Q => \^lcr_d_reg[7]_0\(0),
      R => \^sr\(0)
    );
\lcr_d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(15),
      D => s_axi_wdata(10),
      Q => \lcr_d_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\lcr_d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(15),
      D => s_axi_wdata(11),
      Q => \lcr_d_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\lcr_d_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(15),
      D => s_axi_wdata(12),
      Q => \lcr_d_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\lcr_d_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(15),
      D => s_axi_wdata(13),
      Q => \lcr_d_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\lcr_d_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(15),
      D => s_axi_wdata(14),
      Q => \lcr_d_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\lcr_d_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(15),
      D => s_axi_wdata(15),
      Q => \lcr_d_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\lcr_d_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(23),
      D => s_axi_wdata(16),
      Q => \lcr_d_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\lcr_d_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(23),
      D => s_axi_wdata(17),
      Q => \lcr_d_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\lcr_d_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(23),
      D => s_axi_wdata(18),
      Q => \lcr_d_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\lcr_d_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(23),
      D => s_axi_wdata(19),
      Q => \lcr_d_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\lcr_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(7),
      D => s_axi_wdata(1),
      Q => \^lcr_d_reg[7]_0\(1),
      R => \^sr\(0)
    );
\lcr_d_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(23),
      D => s_axi_wdata(20),
      Q => \lcr_d_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\lcr_d_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(23),
      D => s_axi_wdata(21),
      Q => \lcr_d_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\lcr_d_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(23),
      D => s_axi_wdata(22),
      Q => \lcr_d_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\lcr_d_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(23),
      D => s_axi_wdata(23),
      Q => \lcr_d_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\lcr_d_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(31),
      D => s_axi_wdata(24),
      Q => \lcr_d_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\lcr_d_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(31),
      D => s_axi_wdata(25),
      Q => \lcr_d_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\lcr_d_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(31),
      D => s_axi_wdata(26),
      Q => \lcr_d_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\lcr_d_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(31),
      D => s_axi_wdata(27),
      Q => \lcr_d_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\lcr_d_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(31),
      D => s_axi_wdata(28),
      Q => \lcr_d_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\lcr_d_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(31),
      D => s_axi_wdata(29),
      Q => \lcr_d_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\lcr_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(7),
      D => s_axi_wdata(2),
      Q => \^lcr_d_reg[7]_0\(2),
      R => \^sr\(0)
    );
\lcr_d_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(31),
      D => s_axi_wdata(30),
      Q => \lcr_d_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\lcr_d_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(31),
      D => s_axi_wdata(31),
      Q => \lcr_d_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\lcr_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(7),
      D => s_axi_wdata(3),
      Q => \^lcr_d_reg[7]_0\(3),
      R => \^sr\(0)
    );
\lcr_d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(7),
      D => s_axi_wdata(4),
      Q => \^lcr_d_reg[7]_0\(4),
      R => \^sr\(0)
    );
\lcr_d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(7),
      D => s_axi_wdata(5),
      Q => \^lcr_d_reg[7]_0\(5),
      R => \^sr\(0)
    );
\lcr_d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(7),
      D => s_axi_wdata(6),
      Q => \^lcr_d_reg[7]_0\(6),
      R => \^sr\(0)
    );
\lcr_d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(7),
      D => s_axi_wdata(7),
      Q => \^lcr_d_reg[7]_0\(7),
      R => \^sr\(0)
    );
\lcr_d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(15),
      D => s_axi_wdata(8),
      Q => \lcr_d_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\lcr_d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => lcr(15),
      D => s_axi_wdata(9),
      Q => \lcr_d_reg_n_0_[9]\,
      R => \^sr\(0)
    );
\lsr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000E0E0E0E0E0E0"
    )
        port map (
      I0 => \lsr_reg[6]_0\(0),
      I1 => lsr0_set,
      I2 => rst_n,
      I3 => \lsr_reg[6]_1\(0),
      I4 => p_35_in,
      I5 => \^s_axi_rdata\(0),
      O => \lsr_reg[0]_0\
    );
\lsr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => rst_n,
      I1 => \lsr_reg[1]_0\,
      I2 => \^q\(0),
      I3 => fifo_rx_empty,
      O => rst_n_7
    );
\lsr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A800A8A8A8"
    )
        port map (
      I0 => rst_n,
      I1 => parity_err,
      I2 => \lsr_reg[6]_0\(2),
      I3 => \^s_axi_rdata\(2),
      I4 => p_35_in,
      I5 => \lsr_reg[6]_1\(1),
      O => rst_n_3
    );
\lsr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A800A8A8A8"
    )
        port map (
      I0 => rst_n,
      I1 => stop_bit_err,
      I2 => \lsr_reg[6]_0\(3),
      I3 => \^s_axi_rdata\(3),
      I4 => p_35_in,
      I5 => \lsr_reg[6]_1\(2),
      O => rst_n_4
    );
\lsr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A280"
    )
        port map (
      I0 => rst_n,
      I1 => \^q\(0),
      I2 => fifo_tx_empty,
      I3 => tdr_empty_reg,
      O => rst_n_6
    );
\lsr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A800A8A8A8"
    )
        port map (
      I0 => rst_n,
      I1 => \lsr_reg[5]_0\,
      I2 => \lsr_reg[6]_0\(5),
      I3 => \^s_axi_rdata\(5),
      I4 => p_35_in,
      I5 => \lsr_reg[6]_1\(3),
      O => rst_n_5
    );
\lsr[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \iir[2]_i_6_n_0\,
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(3),
      I4 => s_axi_araddr(2),
      I5 => \iir[2]_i_7_n_0\,
      O => p_35_in
    );
\lsr[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400000"
    )
        port map (
      I0 => \lsr_reg[6]_1\(4),
      I1 => p_35_in,
      I2 => \lsr[6]_i_5_n_0\,
      I3 => \s_axi_rdata[6]_INST_0_i_1_n_0\,
      I4 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      O => lsr6_reset
    );
\lsr[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888F8"
    )
        port map (
      I0 => \hcr_d_reg_n_0_[6]\,
      I1 => \s_axi_rdata[6]_INST_0_i_2_n_0\,
      I2 => \s_axi_rdata[6]_INST_0_i_3_n_0\,
      I3 => r_offset_r(0),
      I4 => r_offset_r(4),
      I5 => r_offset_r(5),
      O => \lsr[6]_i_5_n_0\
    );
\lsr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \lsr_reg[6]_0\(0),
      Q => \lsr_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\lsr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \lsr_reg[6]_0\(1),
      Q => \lsr_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\lsr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \lsr_reg[6]_0\(2),
      Q => \lsr_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\lsr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \lsr_reg[6]_0\(3),
      Q => \lsr_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\lsr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \lsr_reg[6]_0\(4),
      Q => \lsr_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\lsr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \lsr_reg[6]_0\(5),
      Q => \lsr_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\lsr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \lsr_reg[6]_0\(6),
      Q => \lsr_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\ocr_d[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^ocr\(1),
      I1 => s_axi_wstrb(1),
      I2 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      I3 => \ocr1__4\,
      O => \ocr_d[15]_i_1_n_0\
    );
\ocr_d[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \ocr1__4\,
      I2 => s_axi_wstrb(0),
      I3 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      I4 => \^ocr\(1),
      O => \ocr_d[1]_i_1_n_0\
    );
\ocr_d[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^ocr\(1),
      I1 => s_axi_wstrb(2),
      I2 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      I3 => \ocr1__4\,
      O => \ocr_d[23]_i_1_n_0\
    );
\ocr_d[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^ocr\(1),
      I1 => s_axi_wstrb(3),
      I2 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      I3 => \ocr1__4\,
      O => \ocr_d[31]_i_1_n_0\
    );
\ocr_d[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => \lcr_d[31]_i_4_n_0\,
      I1 => w_offset_r(0),
      I2 => \lcr_d[31]_i_3_n_0\,
      I3 => w_offset_r(2),
      I4 => w_offset_r(3),
      I5 => w_offset_r(1),
      O => \ocr1__4\
    );
\ocr_d[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \ocr1__4\,
      I1 => s_axi_wstrb(0),
      I2 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      I3 => \^ocr\(1),
      O => \ocr_d[7]_i_1_n_0\
    );
\ocr_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => \^ocr\(0),
      R => \^sr\(0)
    );
\ocr_d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => \ocr_d_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\ocr_d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => \ocr_d_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\ocr_d_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => \ocr_d_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\ocr_d_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => \ocr_d_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\ocr_d_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => \ocr_d_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\ocr_d_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => \ocr_d_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\ocr_d_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => \ocr_d_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\ocr_d_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => \ocr_d_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\ocr_d_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => \ocr_d_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\ocr_d_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => \ocr_d_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\ocr_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ocr_d[1]_i_1_n_0\,
      Q => \^ocr\(1),
      R => \^sr\(0)
    );
\ocr_d_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => \ocr_d_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\ocr_d_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => \ocr_d_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\ocr_d_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => \ocr_d_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\ocr_d_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => \ocr_d_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\ocr_d_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => \ocr_d_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\ocr_d_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => \ocr_d_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\ocr_d_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => \ocr_d_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\ocr_d_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => \ocr_d_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\ocr_d_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => \ocr_d_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\ocr_d_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => \ocr_d_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\ocr_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => \^ocr\(2),
      R => \^sr\(0)
    );
\ocr_d_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => \ocr_d_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\ocr_d_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => \ocr_d_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\ocr_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => \ocr_d_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\ocr_d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => \ocr_d_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\ocr_d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => \ocr_d_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\ocr_d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => \ocr_d_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\ocr_d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => \ocr_d_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\ocr_d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => \ocr_d_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\ocr_d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ocr_d[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => \ocr_d_reg_n_0_[9]\,
      R => \^sr\(0)
    );
\r_offset_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_araddr(0),
      Q => r_offset_r(0),
      R => \^sr\(0)
    );
\r_offset_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_araddr(10),
      Q => r_offset_r(10),
      R => \^sr\(0)
    );
\r_offset_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_araddr(11),
      Q => r_offset_r(11),
      R => \^sr\(0)
    );
\r_offset_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_araddr(1),
      Q => r_offset_r(1),
      R => \^sr\(0)
    );
\r_offset_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_araddr(2),
      Q => r_offset_r(2),
      R => \^sr\(0)
    );
\r_offset_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_araddr(3),
      Q => r_offset_r(3),
      R => \^sr\(0)
    );
\r_offset_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_araddr(4),
      Q => r_offset_r(4),
      R => \^sr\(0)
    );
\r_offset_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_araddr(5),
      Q => r_offset_r(5),
      R => \^sr\(0)
    );
\r_offset_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_araddr(6),
      Q => r_offset_r(6),
      R => \^sr\(0)
    );
\r_offset_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_araddr(7),
      Q => r_offset_r(7),
      R => \^sr\(0)
    );
\r_offset_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_araddr(8),
      Q => r_offset_r(8),
      R => \^sr\(0)
    );
\r_offset_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_araddr(9),
      Q => r_offset_r(9),
      R => \^sr\(0)
    );
\rdr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rdr_reg[7]_0\(0),
      Q => rdr(0),
      R => \^sr\(0)
    );
\rdr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rdr_reg[7]_0\(1),
      Q => rdr(1),
      R => \^sr\(0)
    );
\rdr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rdr_reg[7]_0\(2),
      Q => rdr(2),
      R => \^sr\(0)
    );
\rdr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rdr_reg[7]_0\(3),
      Q => rdr(3),
      R => \^sr\(0)
    );
\rdr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rdr_reg[7]_0\(4),
      Q => rdr(4),
      R => \^sr\(0)
    );
\rdr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rdr_reg[7]_0\(5),
      Q => rdr(5),
      R => \^sr\(0)
    );
\rdr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rdr_reg[7]_0\(6),
      Q => rdr(6),
      R => \^sr\(0)
    );
\rdr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rdr_reg[7]_0\(7),
      Q => rdr(7),
      R => \^sr\(0)
    );
rts_no_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00E200AA00"
    )
        port map (
      I0 => rts_no_reg_0,
      I1 => rts_no_i_2_n_0,
      I2 => \uart_rx_top_inst/rts_no04_out\,
      I3 => rst_n,
      I4 => \^hcr_d_reg[0]_0\(0),
      I5 => hcr(1),
      O => rts_no_reg
    );
rts_no_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF888FFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => rts_no_reg_0,
      I3 => fifo_rx_empty,
      I4 => \^q\(0),
      I5 => fifo_rx_triggered,
      O => rts_no_i_2_n_0
    );
rts_no_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD50055"
    )
        port map (
      I0 => \lsr_reg[1]_0\,
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => fifo_rx_triggered,
      O => \uart_rx_top_inst/rts_no04_out\
    );
\s_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA02000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(0),
      I2 => r_offset_r(5),
      I3 => r_offset_r(4),
      I4 => \s_axi_rdata[0]_INST_0_i_1_n_0\,
      I5 => \s_axi_rdata[0]_INST_0_i_2_n_0\,
      O => \^s_axi_rdata\(0)
    );
\s_axi_rdata[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^q\(0),
      I1 => \iir_reg_n_0_[0]\,
      I2 => r_offset_r(3),
      I3 => r_offset_r(2),
      I4 => \lsr_reg_n_0_[0]\,
      I5 => ier(0),
      O => \s_axi_rdata[0]_INST_0_i_1_n_0\
    );
\s_axi_rdata[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888F8"
    )
        port map (
      I0 => \^hcr_d_reg[0]_0\(0),
      I1 => \s_axi_rdata[6]_INST_0_i_2_n_0\,
      I2 => \s_axi_rdata[0]_INST_0_i_3_n_0\,
      I3 => r_offset_r(0),
      I4 => r_offset_r(4),
      I5 => r_offset_r(5),
      O => \s_axi_rdata[0]_INST_0_i_2_n_0\
    );
\s_axi_rdata[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => rdr(0),
      I1 => \^ocr\(0),
      I2 => r_offset_r(3),
      I3 => r_offset_r(2),
      I4 => \^tdr_d_reg[7]_1\(0),
      I5 => \^lcr_d_reg[7]_0\(0),
      O => \s_axi_rdata[0]_INST_0_i_3_n_0\
    );
\s_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[10]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[10]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(10)
    );
\s_axi_rdata[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[10]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[10]\,
      I2 => \fcr_d_reg_n_0_[10]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[10]_INST_0_i_1_n_0\
    );
\s_axi_rdata[10]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(10),
      I1 => \lcr_d_reg_n_0_[10]\,
      I2 => \ocr_d_reg_n_0_[10]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[10]_INST_0_i_2_n_0\
    );
\s_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[11]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[11]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(11)
    );
\s_axi_rdata[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[11]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[11]\,
      I2 => \fcr_d_reg_n_0_[11]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[11]_INST_0_i_1_n_0\
    );
\s_axi_rdata[11]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(11),
      I1 => \lcr_d_reg_n_0_[11]\,
      I2 => \ocr_d_reg_n_0_[11]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[11]_INST_0_i_2_n_0\
    );
\s_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[12]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[12]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(12)
    );
\s_axi_rdata[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[12]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[12]\,
      I2 => \fcr_d_reg_n_0_[12]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[12]_INST_0_i_1_n_0\
    );
\s_axi_rdata[12]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(12),
      I1 => \lcr_d_reg_n_0_[12]\,
      I2 => \ocr_d_reg_n_0_[12]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[12]_INST_0_i_2_n_0\
    );
\s_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[13]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[13]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(13)
    );
\s_axi_rdata[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[13]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[13]\,
      I2 => \fcr_d_reg_n_0_[13]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[13]_INST_0_i_1_n_0\
    );
\s_axi_rdata[13]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(13),
      I1 => \lcr_d_reg_n_0_[13]\,
      I2 => \ocr_d_reg_n_0_[13]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[13]_INST_0_i_2_n_0\
    );
\s_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[14]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[14]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(14)
    );
\s_axi_rdata[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[14]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[14]\,
      I2 => \fcr_d_reg_n_0_[14]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[14]_INST_0_i_1_n_0\
    );
\s_axi_rdata[14]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(14),
      I1 => \lcr_d_reg_n_0_[14]\,
      I2 => \ocr_d_reg_n_0_[14]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[14]_INST_0_i_2_n_0\
    );
\s_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[15]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[15]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(15)
    );
\s_axi_rdata[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[15]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[15]\,
      I2 => \fcr_d_reg_n_0_[15]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[15]_INST_0_i_1_n_0\
    );
\s_axi_rdata[15]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(15),
      I1 => \lcr_d_reg_n_0_[15]\,
      I2 => \ocr_d_reg_n_0_[15]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[15]_INST_0_i_2_n_0\
    );
\s_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[16]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[16]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(16)
    );
\s_axi_rdata[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[16]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[16]\,
      I2 => \fcr_d_reg_n_0_[16]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[16]_INST_0_i_1_n_0\
    );
\s_axi_rdata[16]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(16),
      I1 => \lcr_d_reg_n_0_[16]\,
      I2 => \ocr_d_reg_n_0_[16]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[16]_INST_0_i_2_n_0\
    );
\s_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[17]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[17]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(17)
    );
\s_axi_rdata[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[17]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[17]\,
      I2 => \fcr_d_reg_n_0_[17]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[17]_INST_0_i_1_n_0\
    );
\s_axi_rdata[17]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(17),
      I1 => \lcr_d_reg_n_0_[17]\,
      I2 => \ocr_d_reg_n_0_[17]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[17]_INST_0_i_2_n_0\
    );
\s_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[18]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[18]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(18)
    );
\s_axi_rdata[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[18]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[18]\,
      I2 => \fcr_d_reg_n_0_[18]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[18]_INST_0_i_1_n_0\
    );
\s_axi_rdata[18]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(18),
      I1 => \lcr_d_reg_n_0_[18]\,
      I2 => \ocr_d_reg_n_0_[18]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[18]_INST_0_i_2_n_0\
    );
\s_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[19]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[19]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(19)
    );
\s_axi_rdata[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[19]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[19]\,
      I2 => \fcr_d_reg_n_0_[19]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[19]_INST_0_i_1_n_0\
    );
\s_axi_rdata[19]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(19),
      I1 => \lcr_d_reg_n_0_[19]\,
      I2 => \ocr_d_reg_n_0_[19]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[19]_INST_0_i_2_n_0\
    );
\s_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA02000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(0),
      I2 => r_offset_r(5),
      I3 => r_offset_r(4),
      I4 => \s_axi_rdata[1]_INST_0_i_1_n_0\,
      I5 => \s_axi_rdata[1]_INST_0_i_2_n_0\,
      O => \^s_axi_rdata\(1)
    );
\s_axi_rdata[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^q\(1),
      I1 => \iir_reg_n_0_[1]\,
      I2 => r_offset_r(3),
      I3 => r_offset_r(2),
      I4 => \lsr_reg_n_0_[1]\,
      I5 => ier(1),
      O => \s_axi_rdata[1]_INST_0_i_1_n_0\
    );
\s_axi_rdata[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888F8"
    )
        port map (
      I0 => hcr(1),
      I1 => \s_axi_rdata[6]_INST_0_i_2_n_0\,
      I2 => \s_axi_rdata[1]_INST_0_i_3_n_0\,
      I3 => r_offset_r(0),
      I4 => r_offset_r(4),
      I5 => r_offset_r(5),
      O => \s_axi_rdata[1]_INST_0_i_2_n_0\
    );
\s_axi_rdata[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => rdr(1),
      I1 => \^ocr\(1),
      I2 => r_offset_r(3),
      I3 => r_offset_r(2),
      I4 => \^tdr_d_reg[7]_1\(1),
      I5 => \^lcr_d_reg[7]_0\(1),
      O => \s_axi_rdata[1]_INST_0_i_3_n_0\
    );
\s_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[20]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[20]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(20)
    );
\s_axi_rdata[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[20]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[20]\,
      I2 => \fcr_d_reg_n_0_[20]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[20]_INST_0_i_1_n_0\
    );
\s_axi_rdata[20]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(20),
      I1 => \lcr_d_reg_n_0_[20]\,
      I2 => \ocr_d_reg_n_0_[20]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[20]_INST_0_i_2_n_0\
    );
\s_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[21]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[21]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(21)
    );
\s_axi_rdata[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[21]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[21]\,
      I2 => \fcr_d_reg_n_0_[21]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[21]_INST_0_i_1_n_0\
    );
\s_axi_rdata[21]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(21),
      I1 => \lcr_d_reg_n_0_[21]\,
      I2 => \ocr_d_reg_n_0_[21]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[21]_INST_0_i_2_n_0\
    );
\s_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[22]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[22]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(22)
    );
\s_axi_rdata[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[22]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[22]\,
      I2 => \fcr_d_reg_n_0_[22]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[22]_INST_0_i_1_n_0\
    );
\s_axi_rdata[22]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(22),
      I1 => \lcr_d_reg_n_0_[22]\,
      I2 => \ocr_d_reg_n_0_[22]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[22]_INST_0_i_2_n_0\
    );
\s_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[23]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[23]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(23)
    );
\s_axi_rdata[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[23]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[23]\,
      I2 => \fcr_d_reg_n_0_[23]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[23]_INST_0_i_1_n_0\
    );
\s_axi_rdata[23]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(23),
      I1 => \lcr_d_reg_n_0_[23]\,
      I2 => \ocr_d_reg_n_0_[23]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[23]_INST_0_i_2_n_0\
    );
\s_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[24]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[24]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(24)
    );
\s_axi_rdata[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[24]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[24]\,
      I2 => \fcr_d_reg_n_0_[24]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[24]_INST_0_i_1_n_0\
    );
\s_axi_rdata[24]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(24),
      I1 => \lcr_d_reg_n_0_[24]\,
      I2 => \ocr_d_reg_n_0_[24]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[24]_INST_0_i_2_n_0\
    );
\s_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[25]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[25]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(25)
    );
\s_axi_rdata[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[25]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[25]\,
      I2 => \fcr_d_reg_n_0_[25]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[25]_INST_0_i_1_n_0\
    );
\s_axi_rdata[25]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(25),
      I1 => \lcr_d_reg_n_0_[25]\,
      I2 => \ocr_d_reg_n_0_[25]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[25]_INST_0_i_2_n_0\
    );
\s_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[26]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[26]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(26)
    );
\s_axi_rdata[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[26]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[26]\,
      I2 => \fcr_d_reg_n_0_[26]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[26]_INST_0_i_1_n_0\
    );
\s_axi_rdata[26]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(26),
      I1 => \lcr_d_reg_n_0_[26]\,
      I2 => \ocr_d_reg_n_0_[26]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[26]_INST_0_i_2_n_0\
    );
\s_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[27]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[27]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(27)
    );
\s_axi_rdata[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[27]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[27]\,
      I2 => \fcr_d_reg_n_0_[27]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[27]_INST_0_i_1_n_0\
    );
\s_axi_rdata[27]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(27),
      I1 => \lcr_d_reg_n_0_[27]\,
      I2 => \ocr_d_reg_n_0_[27]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[27]_INST_0_i_2_n_0\
    );
\s_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[28]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[28]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(28)
    );
\s_axi_rdata[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[28]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[28]\,
      I2 => \fcr_d_reg_n_0_[28]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[28]_INST_0_i_1_n_0\
    );
\s_axi_rdata[28]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(28),
      I1 => \lcr_d_reg_n_0_[28]\,
      I2 => \ocr_d_reg_n_0_[28]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[28]_INST_0_i_2_n_0\
    );
\s_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[29]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[29]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(29)
    );
\s_axi_rdata[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[29]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[29]\,
      I2 => \fcr_d_reg_n_0_[29]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[29]_INST_0_i_1_n_0\
    );
\s_axi_rdata[29]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(29),
      I1 => \lcr_d_reg_n_0_[29]\,
      I2 => \ocr_d_reg_n_0_[29]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[29]_INST_0_i_2_n_0\
    );
\s_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA02000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(0),
      I2 => r_offset_r(5),
      I3 => r_offset_r(4),
      I4 => \s_axi_rdata[2]_INST_0_i_1_n_0\,
      I5 => \s_axi_rdata[2]_INST_0_i_2_n_0\,
      O => \^s_axi_rdata\(2)
    );
\s_axi_rdata[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^q\(2),
      I1 => \iir_reg_n_0_[2]\,
      I2 => r_offset_r(3),
      I3 => r_offset_r(2),
      I4 => \lsr_reg_n_0_[2]\,
      I5 => ier(2),
      O => \s_axi_rdata[2]_INST_0_i_1_n_0\
    );
\s_axi_rdata[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888F8"
    )
        port map (
      I0 => \hcr_d_reg_n_0_[2]\,
      I1 => \s_axi_rdata[6]_INST_0_i_2_n_0\,
      I2 => \s_axi_rdata[2]_INST_0_i_3_n_0\,
      I3 => r_offset_r(0),
      I4 => r_offset_r(4),
      I5 => r_offset_r(5),
      O => \s_axi_rdata[2]_INST_0_i_2_n_0\
    );
\s_axi_rdata[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => rdr(2),
      I1 => \^ocr\(2),
      I2 => r_offset_r(3),
      I3 => r_offset_r(2),
      I4 => \^tdr_d_reg[7]_1\(2),
      I5 => \^lcr_d_reg[7]_0\(2),
      O => \s_axi_rdata[2]_INST_0_i_3_n_0\
    );
\s_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[30]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[30]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(30)
    );
\s_axi_rdata[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[30]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[30]\,
      I2 => \fcr_d_reg_n_0_[30]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[30]_INST_0_i_1_n_0\
    );
\s_axi_rdata[30]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(30),
      I1 => \lcr_d_reg_n_0_[30]\,
      I2 => \ocr_d_reg_n_0_[30]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[30]_INST_0_i_2_n_0\
    );
\s_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[31]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => \^s_axi_rdata\(31)
    );
\s_axi_rdata[31]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_offset_r(1),
      I1 => \s_axi_rdata[31]_INST_0_i_4_n_0\,
      I2 => s_axi_rready,
      I3 => \^fsm_onehot_rd_state_reg[2]_0\(1),
      O => \s_axi_rdata[31]_INST_0_i_1_n_0\
    );
\s_axi_rdata[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => r_offset_r(5),
      I1 => r_offset_r(0),
      I2 => r_offset_r(4),
      I3 => r_offset_r(3),
      I4 => r_offset_r(2),
      I5 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      O => \s_axi_rdata[31]_INST_0_i_2_n_0\
    );
\s_axi_rdata[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_5_n_0\,
      I1 => \ier_d_reg_n_0_[31]\,
      I2 => \fcr_d_reg_n_0_[31]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[31]_INST_0_i_3_n_0\
    );
\s_axi_rdata[31]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => r_offset_r(11),
      I1 => r_offset_r(10),
      I2 => r_offset_r(9),
      I3 => r_offset_r(8),
      I4 => r_offset_r(6),
      I5 => r_offset_r(7),
      O => \s_axi_rdata[31]_INST_0_i_4_n_0\
    );
\s_axi_rdata[31]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(31),
      I1 => \lcr_d_reg_n_0_[31]\,
      I2 => \ocr_d_reg_n_0_[31]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[31]_INST_0_i_5_n_0\
    );
\s_axi_rdata[31]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => r_offset_r(5),
      I1 => r_offset_r(4),
      I2 => r_offset_r(0),
      O => \s_axi_rdata[31]_INST_0_i_6_n_0\
    );
\s_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[3]_INST_0_i_1_n_0\,
      I2 => \hcr_d_reg_n_0_[3]\,
      I3 => \s_axi_rdata[6]_INST_0_i_2_n_0\,
      I4 => \s_axi_rdata[3]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[6]_INST_0_i_4_n_0\,
      O => \^s_axi_rdata\(3)
    );
\s_axi_rdata[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \s_axi_rdata[6]_INST_0_i_5_n_0\,
      I1 => \^q\(3),
      I2 => r_offset_r(2),
      I3 => r_offset_r(3),
      I4 => \ier_d_reg_n_0_[3]\,
      I5 => \lsr_reg_n_0_[3]\,
      O => \s_axi_rdata[3]_INST_0_i_1_n_0\
    );
\s_axi_rdata[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => rdr(3),
      I1 => \ocr_d_reg_n_0_[3]\,
      I2 => r_offset_r(3),
      I3 => r_offset_r(2),
      I4 => \^tdr_d_reg[7]_1\(3),
      I5 => \^lcr_d_reg[7]_0\(3),
      O => \s_axi_rdata[3]_INST_0_i_2_n_0\
    );
\s_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[4]_INST_0_i_1_n_0\,
      I2 => \hcr_d_reg_n_0_[4]\,
      I3 => \s_axi_rdata[6]_INST_0_i_2_n_0\,
      I4 => \s_axi_rdata[4]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[6]_INST_0_i_4_n_0\,
      O => \^s_axi_rdata\(4)
    );
\s_axi_rdata[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \s_axi_rdata[6]_INST_0_i_5_n_0\,
      I1 => \^q\(4),
      I2 => r_offset_r(2),
      I3 => r_offset_r(3),
      I4 => \ier_d_reg_n_0_[4]\,
      I5 => \lsr_reg_n_0_[4]\,
      O => \s_axi_rdata[4]_INST_0_i_1_n_0\
    );
\s_axi_rdata[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => rdr(4),
      I1 => \ocr_d_reg_n_0_[4]\,
      I2 => r_offset_r(3),
      I3 => r_offset_r(2),
      I4 => \^tdr_d_reg[7]_1\(4),
      I5 => \^lcr_d_reg[7]_0\(4),
      O => \s_axi_rdata[4]_INST_0_i_2_n_0\
    );
\s_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[5]_INST_0_i_1_n_0\,
      I2 => \hcr_d_reg_n_0_[5]\,
      I3 => \s_axi_rdata[6]_INST_0_i_2_n_0\,
      I4 => \s_axi_rdata[5]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[6]_INST_0_i_4_n_0\,
      O => \^s_axi_rdata\(5)
    );
\s_axi_rdata[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \s_axi_rdata[6]_INST_0_i_5_n_0\,
      I1 => \fcr_d_reg_n_0_[5]\,
      I2 => r_offset_r(2),
      I3 => r_offset_r(3),
      I4 => \ier_d_reg_n_0_[5]\,
      I5 => \lsr_reg_n_0_[5]\,
      O => \s_axi_rdata[5]_INST_0_i_1_n_0\
    );
\s_axi_rdata[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => rdr(5),
      I1 => \ocr_d_reg_n_0_[5]\,
      I2 => r_offset_r(3),
      I3 => r_offset_r(2),
      I4 => \^tdr_d_reg[7]_1\(5),
      I5 => \^lcr_d_reg[7]_0\(5),
      O => \s_axi_rdata[5]_INST_0_i_2_n_0\
    );
\s_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[6]_INST_0_i_1_n_0\,
      I2 => \hcr_d_reg_n_0_[6]\,
      I3 => \s_axi_rdata[6]_INST_0_i_2_n_0\,
      I4 => \s_axi_rdata[6]_INST_0_i_3_n_0\,
      I5 => \s_axi_rdata[6]_INST_0_i_4_n_0\,
      O => \^s_axi_rdata\(6)
    );
\s_axi_rdata[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \s_axi_rdata[6]_INST_0_i_5_n_0\,
      I1 => \fcr_d_reg_n_0_[6]\,
      I2 => r_offset_r(2),
      I3 => r_offset_r(3),
      I4 => \ier_d_reg_n_0_[6]\,
      I5 => \lsr_reg_n_0_[6]\,
      O => \s_axi_rdata[6]_INST_0_i_1_n_0\
    );
\s_axi_rdata[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => r_offset_r(2),
      I1 => r_offset_r(3),
      I2 => r_offset_r(4),
      I3 => r_offset_r(0),
      I4 => r_offset_r(5),
      O => \s_axi_rdata[6]_INST_0_i_2_n_0\
    );
\s_axi_rdata[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => rdr(6),
      I1 => \ocr_d_reg_n_0_[6]\,
      I2 => r_offset_r(3),
      I3 => r_offset_r(2),
      I4 => \^tdr_d_reg[7]_1\(6),
      I5 => \^lcr_d_reg[7]_0\(6),
      O => \s_axi_rdata[6]_INST_0_i_3_n_0\
    );
\s_axi_rdata[6]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => r_offset_r(0),
      I1 => r_offset_r(4),
      I2 => r_offset_r(5),
      O => \s_axi_rdata[6]_INST_0_i_4_n_0\
    );
\s_axi_rdata[6]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => r_offset_r(4),
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      O => \s_axi_rdata[6]_INST_0_i_5_n_0\
    );
\s_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[7]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[7]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(7)
    );
\s_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[7]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[7]\,
      I2 => \fcr_d_reg_n_0_[7]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[7]_INST_0_i_1_n_0\
    );
\s_axi_rdata[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => rdr(7),
      I1 => \ocr_d_reg_n_0_[7]\,
      I2 => r_offset_r(3),
      I3 => r_offset_r(2),
      I4 => \^tdr_d_reg[7]_1\(7),
      I5 => \^lcr_d_reg[7]_0\(7),
      O => \s_axi_rdata[7]_INST_0_i_2_n_0\
    );
\s_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[8]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[8]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(8)
    );
\s_axi_rdata[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[8]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[8]\,
      I2 => \fcr_d_reg_n_0_[8]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[8]_INST_0_i_1_n_0\
    );
\s_axi_rdata[8]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(8),
      I1 => \lcr_d_reg_n_0_[8]\,
      I2 => \ocr_d_reg_n_0_[8]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[8]_INST_0_i_2_n_0\
    );
\s_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020202FF000000"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => r_offset_r(5),
      I2 => r_offset_r(0),
      I3 => \hcr_d_reg_n_0_[9]\,
      I4 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I5 => \s_axi_rdata[9]_INST_0_i_1_n_0\,
      O => \^s_axi_rdata\(9)
    );
\s_axi_rdata[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCAAF0AA00AA"
    )
        port map (
      I0 => \s_axi_rdata[9]_INST_0_i_2_n_0\,
      I1 => \ier_d_reg_n_0_[9]\,
      I2 => \fcr_d_reg_n_0_[9]\,
      I3 => \s_axi_rdata[31]_INST_0_i_6_n_0\,
      I4 => r_offset_r(2),
      I5 => r_offset_r(3),
      O => \s_axi_rdata[9]_INST_0_i_1_n_0\
    );
\s_axi_rdata[9]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => tdr_d(9),
      I1 => \lcr_d_reg_n_0_[9]\,
      I2 => \ocr_d_reg_n_0_[9]\,
      I3 => r_offset_r(2),
      I4 => r_offset_r(3),
      O => \s_axi_rdata[9]_INST_0_i_2_n_0\
    );
\sampled_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_tx_o(0),
      I1 => \^q\(0),
      I2 => \^tdr_d_reg[7]_1\(0),
      O => \tdr_d_reg[7]_0\(0)
    );
\sampled_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_tx_o(1),
      I1 => \^q\(0),
      I2 => \^tdr_d_reg[7]_1\(1),
      O => \tdr_d_reg[7]_0\(1)
    );
\sampled_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_tx_o(2),
      I1 => \^q\(0),
      I2 => \^tdr_d_reg[7]_1\(2),
      O => \tdr_d_reg[7]_0\(2)
    );
\sampled_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_tx_o(3),
      I1 => \^q\(0),
      I2 => \^tdr_d_reg[7]_1\(3),
      O => \tdr_d_reg[7]_0\(3)
    );
\sampled_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_tx_o(4),
      I1 => \^q\(0),
      I2 => \^tdr_d_reg[7]_1\(4),
      O => \tdr_d_reg[7]_0\(4)
    );
\sampled_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0DFD5"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(1),
      I1 => fifo_tx_o(5),
      I2 => \^q\(0),
      I3 => \^tdr_d_reg[7]_1\(5),
      I4 => \^lcr_d_reg[7]_0\(0),
      O => \tdr_d_reg[7]_0\(5)
    );
\sampled_data[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => \^tdr_d_reg[7]_1\(6),
      I1 => \^q\(0),
      I2 => fifo_tx_o(6),
      I3 => \^lcr_d_reg[7]_0\(1),
      O => \tdr_d_reg[7]_0\(6)
    );
\sampled_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFFFFF"
    )
        port map (
      I0 => \^tdr_d_reg[7]_1\(7),
      I1 => \^q\(0),
      I2 => fifo_tx_o(7),
      I3 => \^lcr_d_reg[7]_0\(1),
      I4 => \^lcr_d_reg[7]_0\(0),
      O => \tdr_d_reg[7]_0\(7)
    );
\tdr_d[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      I1 => s_axi_wstrb(1),
      I2 => \lcr_d[31]_i_2_n_0\,
      I3 => w_offset_r(3),
      I4 => w_offset_r(2),
      I5 => \lcr_d[31]_i_3_n_0\,
      O => tdr(15)
    );
\tdr_d[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      I1 => s_axi_wstrb(2),
      I2 => \lcr_d[31]_i_2_n_0\,
      I3 => w_offset_r(3),
      I4 => w_offset_r(2),
      I5 => \lcr_d[31]_i_3_n_0\,
      O => tdr(23)
    );
\tdr_d[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      I1 => s_axi_wstrb(3),
      I2 => \lcr_d[31]_i_2_n_0\,
      I3 => w_offset_r(3),
      I4 => w_offset_r(2),
      I5 => \lcr_d[31]_i_3_n_0\,
      O => tdr(31)
    );
\tdr_d[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \^fsm_onehot_wr_state_reg[3]_0\(1),
      I1 => s_axi_wstrb(0),
      I2 => \lcr_d[31]_i_2_n_0\,
      I3 => w_offset_r(3),
      I4 => w_offset_r(2),
      I5 => \lcr_d[31]_i_3_n_0\,
      O => tdr(7)
    );
\tdr_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(7),
      D => s_axi_wdata(0),
      Q => \^tdr_d_reg[7]_1\(0),
      R => \^sr\(0)
    );
\tdr_d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(15),
      D => s_axi_wdata(10),
      Q => tdr_d(10),
      R => \^sr\(0)
    );
\tdr_d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(15),
      D => s_axi_wdata(11),
      Q => tdr_d(11),
      R => \^sr\(0)
    );
\tdr_d_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(15),
      D => s_axi_wdata(12),
      Q => tdr_d(12),
      R => \^sr\(0)
    );
\tdr_d_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(15),
      D => s_axi_wdata(13),
      Q => tdr_d(13),
      R => \^sr\(0)
    );
\tdr_d_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(15),
      D => s_axi_wdata(14),
      Q => tdr_d(14),
      R => \^sr\(0)
    );
\tdr_d_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(15),
      D => s_axi_wdata(15),
      Q => tdr_d(15),
      R => \^sr\(0)
    );
\tdr_d_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(23),
      D => s_axi_wdata(16),
      Q => tdr_d(16),
      R => \^sr\(0)
    );
\tdr_d_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(23),
      D => s_axi_wdata(17),
      Q => tdr_d(17),
      R => \^sr\(0)
    );
\tdr_d_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(23),
      D => s_axi_wdata(18),
      Q => tdr_d(18),
      R => \^sr\(0)
    );
\tdr_d_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(23),
      D => s_axi_wdata(19),
      Q => tdr_d(19),
      R => \^sr\(0)
    );
\tdr_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(7),
      D => s_axi_wdata(1),
      Q => \^tdr_d_reg[7]_1\(1),
      R => \^sr\(0)
    );
\tdr_d_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(23),
      D => s_axi_wdata(20),
      Q => tdr_d(20),
      R => \^sr\(0)
    );
\tdr_d_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(23),
      D => s_axi_wdata(21),
      Q => tdr_d(21),
      R => \^sr\(0)
    );
\tdr_d_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(23),
      D => s_axi_wdata(22),
      Q => tdr_d(22),
      R => \^sr\(0)
    );
\tdr_d_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(23),
      D => s_axi_wdata(23),
      Q => tdr_d(23),
      R => \^sr\(0)
    );
\tdr_d_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(31),
      D => s_axi_wdata(24),
      Q => tdr_d(24),
      R => \^sr\(0)
    );
\tdr_d_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(31),
      D => s_axi_wdata(25),
      Q => tdr_d(25),
      R => \^sr\(0)
    );
\tdr_d_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(31),
      D => s_axi_wdata(26),
      Q => tdr_d(26),
      R => \^sr\(0)
    );
\tdr_d_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(31),
      D => s_axi_wdata(27),
      Q => tdr_d(27),
      R => \^sr\(0)
    );
\tdr_d_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(31),
      D => s_axi_wdata(28),
      Q => tdr_d(28),
      R => \^sr\(0)
    );
\tdr_d_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(31),
      D => s_axi_wdata(29),
      Q => tdr_d(29),
      R => \^sr\(0)
    );
\tdr_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(7),
      D => s_axi_wdata(2),
      Q => \^tdr_d_reg[7]_1\(2),
      R => \^sr\(0)
    );
\tdr_d_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(31),
      D => s_axi_wdata(30),
      Q => tdr_d(30),
      R => \^sr\(0)
    );
\tdr_d_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(31),
      D => s_axi_wdata(31),
      Q => tdr_d(31),
      R => \^sr\(0)
    );
\tdr_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(7),
      D => s_axi_wdata(3),
      Q => \^tdr_d_reg[7]_1\(3),
      R => \^sr\(0)
    );
\tdr_d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(7),
      D => s_axi_wdata(4),
      Q => \^tdr_d_reg[7]_1\(4),
      R => \^sr\(0)
    );
\tdr_d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(7),
      D => s_axi_wdata(5),
      Q => \^tdr_d_reg[7]_1\(5),
      R => \^sr\(0)
    );
\tdr_d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(7),
      D => s_axi_wdata(6),
      Q => \^tdr_d_reg[7]_1\(6),
      R => \^sr\(0)
    );
\tdr_d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(7),
      D => s_axi_wdata(7),
      Q => \^tdr_d_reg[7]_1\(7),
      R => \^sr\(0)
    );
\tdr_d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(15),
      D => s_axi_wdata(8),
      Q => tdr_d(8),
      R => \^sr\(0)
    );
\tdr_d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tdr(15),
      D => s_axi_wdata(9),
      Q => tdr_d(9),
      R => \^sr\(0)
    );
tdr_empty_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55444544"
    )
        port map (
      I0 => cpu_write_tdr_d,
      I1 => tdr_empty_reg,
      I2 => \^q\(0),
      I3 => \^ocr\(1),
      I4 => fifo_tx_empty,
      O => cpu_write_tdr_d_reg
    );
\total_data_sampled[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(3),
      I1 => \^lcr_d_reg[7]_0\(2),
      I2 => \^lcr_d_reg[7]_0\(0),
      O => \lcr_d_reg[2]_1\(0)
    );
\total_data_sampled[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(1),
      I1 => \^lcr_d_reg[7]_0\(0),
      I2 => \^lcr_d_reg[7]_0\(2),
      I3 => \^lcr_d_reg[7]_0\(3),
      O => \lcr_d_reg[2]_1\(1)
    );
\total_data_sampled[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8001"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(3),
      I1 => \^lcr_d_reg[7]_0\(2),
      I2 => \^lcr_d_reg[7]_0\(1),
      I3 => \^lcr_d_reg[7]_0\(0),
      O => \lcr_d_reg[2]_1\(2)
    );
\total_data_sampled[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(2),
      I1 => \^lcr_d_reg[7]_0\(3),
      I2 => \^lcr_d_reg[7]_0\(0),
      I3 => \^lcr_d_reg[7]_0\(1),
      O => \lcr_d_reg[2]_1\(3)
    );
\total_data_size_sampled[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(3),
      I1 => \^lcr_d_reg[7]_0\(2),
      I2 => \^lcr_d_reg[7]_0\(0),
      O => \lcr_d_reg[2]_0\(0)
    );
\total_data_size_sampled[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E817"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(3),
      I1 => \^lcr_d_reg[7]_0\(2),
      I2 => \^lcr_d_reg[7]_0\(0),
      I3 => \^lcr_d_reg[7]_0\(1),
      O => \lcr_d_reg[2]_0\(1)
    );
\total_data_size_sampled[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0017"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(3),
      I1 => \^lcr_d_reg[7]_0\(2),
      I2 => \^lcr_d_reg[7]_0\(0),
      I3 => \^lcr_d_reg[7]_0\(1),
      O => \lcr_d_reg[2]_0\(2)
    );
\total_data_size_sampled[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE8"
    )
        port map (
      I0 => \^lcr_d_reg[7]_0\(2),
      I1 => \^lcr_d_reg[7]_0\(3),
      I2 => \^lcr_d_reg[7]_0\(0),
      I3 => \^lcr_d_reg[7]_0\(1),
      O => \lcr_d_reg[2]_0\(3)
    );
\w_offset_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_awaddr(0),
      Q => w_offset_r(0),
      R => \^sr\(0)
    );
\w_offset_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_awaddr(10),
      Q => w_offset_r(10),
      R => \^sr\(0)
    );
\w_offset_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_awaddr(11),
      Q => w_offset_r(11),
      R => \^sr\(0)
    );
\w_offset_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_awaddr(1),
      Q => w_offset_r(1),
      R => \^sr\(0)
    );
\w_offset_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_awaddr(2),
      Q => w_offset_r(2),
      R => \^sr\(0)
    );
\w_offset_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_awaddr(3),
      Q => w_offset_r(3),
      R => \^sr\(0)
    );
\w_offset_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_awaddr(4),
      Q => w_offset_r(4),
      R => \^sr\(0)
    );
\w_offset_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_awaddr(5),
      Q => w_offset_r(5),
      R => \^sr\(0)
    );
\w_offset_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_awaddr(6),
      Q => w_offset_r(6),
      R => \^sr\(0)
    );
\w_offset_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_awaddr(7),
      Q => w_offset_r(7),
      R => \^sr\(0)
    );
\w_offset_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_awaddr(8),
      Q => w_offset_r(8),
      R => \^sr\(0)
    );
\w_offset_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_awaddr(9),
      Q => w_offset_r(9),
      R => \^sr\(0)
    );
\wr_ptr[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(1),
      I1 => rst_n,
      O => \fcr_d_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0_baud_generator is
  port (
    baud_o : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    BIT_PERIOD_TX : in STD_LOGIC_VECTOR ( 13 downto 0 );
    rst_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_uart_0_0_baud_generator : entity is "baud_generator";
end design_1_axi4_uart_0_0_baud_generator;

architecture STRUCTURE of design_1_axi4_uart_0_0_baud_generator is
  signal BIT_PERIOD_RX : STD_LOGIC;
  signal \BIT_PERIOD_TX_reg_n_0_[0]\ : STD_LOGIC;
  signal \BIT_PERIOD_TX_reg_n_0_[10]\ : STD_LOGIC;
  signal \BIT_PERIOD_TX_reg_n_0_[11]\ : STD_LOGIC;
  signal \BIT_PERIOD_TX_reg_n_0_[12]\ : STD_LOGIC;
  signal \BIT_PERIOD_TX_reg_n_0_[13]\ : STD_LOGIC;
  signal \BIT_PERIOD_TX_reg_n_0_[1]\ : STD_LOGIC;
  signal \BIT_PERIOD_TX_reg_n_0_[2]\ : STD_LOGIC;
  signal \BIT_PERIOD_TX_reg_n_0_[3]\ : STD_LOGIC;
  signal \BIT_PERIOD_TX_reg_n_0_[4]\ : STD_LOGIC;
  signal \BIT_PERIOD_TX_reg_n_0_[5]\ : STD_LOGIC;
  signal \BIT_PERIOD_TX_reg_n_0_[6]\ : STD_LOGIC;
  signal \BIT_PERIOD_TX_reg_n_0_[7]\ : STD_LOGIC;
  signal \BIT_PERIOD_TX_reg_n_0_[8]\ : STD_LOGIC;
  signal \BIT_PERIOD_TX_reg_n_0_[9]\ : STD_LOGIC;
  signal baud_changed : STD_LOGIC;
  signal baud_changed_i_1_n_0 : STD_LOGIC;
  signal baud_sl_prev : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal counter_rx0 : STD_LOGIC;
  signal \counter_rx0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter_rx0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter_rx0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter_rx0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter_rx0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \counter_rx0_carry__0_n_0\ : STD_LOGIC;
  signal \counter_rx0_carry__0_n_1\ : STD_LOGIC;
  signal \counter_rx0_carry__0_n_2\ : STD_LOGIC;
  signal \counter_rx0_carry__0_n_3\ : STD_LOGIC;
  signal \counter_rx0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \counter_rx0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \counter_rx0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \counter_rx0_carry__1_n_2\ : STD_LOGIC;
  signal \counter_rx0_carry__1_n_3\ : STD_LOGIC;
  signal counter_rx0_carry_i_1_n_0 : STD_LOGIC;
  signal counter_rx0_carry_i_2_n_0 : STD_LOGIC;
  signal counter_rx0_carry_i_3_n_0 : STD_LOGIC;
  signal counter_rx0_carry_i_4_n_0 : STD_LOGIC;
  signal counter_rx0_carry_i_5_n_0 : STD_LOGIC;
  signal counter_rx0_carry_i_6_n_0 : STD_LOGIC;
  signal counter_rx0_carry_i_7_n_0 : STD_LOGIC;
  signal counter_rx0_carry_i_8_n_0 : STD_LOGIC;
  signal counter_rx0_carry_i_9_n_0 : STD_LOGIC;
  signal counter_rx0_carry_n_0 : STD_LOGIC;
  signal counter_rx0_carry_n_1 : STD_LOGIC;
  signal counter_rx0_carry_n_2 : STD_LOGIC;
  signal counter_rx0_carry_n_3 : STD_LOGIC;
  signal \counter_rx[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_rx[0]_i_3_n_0\ : STD_LOGIC;
  signal counter_rx_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \counter_rx_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_rx_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_rx_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_rx_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_rx_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_rx_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_rx_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_rx_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_rx_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_rx_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_rx_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_rx_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_rx_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_rx_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_rx_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_rx_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_rx_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_rx_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_rx_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_rx_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_rx_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_rx_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_rx_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_rx_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_rx_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_rx_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_rx_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_rx_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_rx_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_rx_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_rx_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_rx_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_rx_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter_rx_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \counter_rx_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_rx_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_rx_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \counter_rx_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counter_rx_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_rx_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_rx_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \counter_rx_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \counter_rx_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \counter_rx_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \counter_rx_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \counter_rx_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \counter_rx_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \counter_rx_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_rx_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_rx_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_rx_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_rx_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_rx_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_rx_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_rx_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_rx_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_rx_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_rx_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_rx_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_rx_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_rx_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_rx_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_rx_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal counter_tx0 : STD_LOGIC;
  signal \counter_tx0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter_tx0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter_tx0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter_tx0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter_tx0_carry__0_n_0\ : STD_LOGIC;
  signal \counter_tx0_carry__0_n_1\ : STD_LOGIC;
  signal \counter_tx0_carry__0_n_2\ : STD_LOGIC;
  signal \counter_tx0_carry__0_n_3\ : STD_LOGIC;
  signal \counter_tx0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \counter_tx0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \counter_tx0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \counter_tx0_carry__1_n_2\ : STD_LOGIC;
  signal \counter_tx0_carry__1_n_3\ : STD_LOGIC;
  signal counter_tx0_carry_i_1_n_0 : STD_LOGIC;
  signal counter_tx0_carry_i_2_n_0 : STD_LOGIC;
  signal counter_tx0_carry_i_3_n_0 : STD_LOGIC;
  signal counter_tx0_carry_i_4_n_0 : STD_LOGIC;
  signal counter_tx0_carry_n_0 : STD_LOGIC;
  signal counter_tx0_carry_n_1 : STD_LOGIC;
  signal counter_tx0_carry_n_2 : STD_LOGIC;
  signal counter_tx0_carry_n_3 : STD_LOGIC;
  signal counter_tx1 : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal \counter_tx1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter_tx1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter_tx1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter_tx1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter_tx1_carry__0_n_0\ : STD_LOGIC;
  signal \counter_tx1_carry__0_n_1\ : STD_LOGIC;
  signal \counter_tx1_carry__0_n_2\ : STD_LOGIC;
  signal \counter_tx1_carry__0_n_3\ : STD_LOGIC;
  signal \counter_tx1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \counter_tx1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \counter_tx1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \counter_tx1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \counter_tx1_carry__1_n_0\ : STD_LOGIC;
  signal \counter_tx1_carry__1_n_1\ : STD_LOGIC;
  signal \counter_tx1_carry__1_n_2\ : STD_LOGIC;
  signal \counter_tx1_carry__1_n_3\ : STD_LOGIC;
  signal \counter_tx1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \counter_tx1_carry__2_n_2\ : STD_LOGIC;
  signal counter_tx1_carry_i_1_n_0 : STD_LOGIC;
  signal counter_tx1_carry_i_2_n_0 : STD_LOGIC;
  signal counter_tx1_carry_i_3_n_0 : STD_LOGIC;
  signal counter_tx1_carry_i_4_n_0 : STD_LOGIC;
  signal counter_tx1_carry_n_0 : STD_LOGIC;
  signal counter_tx1_carry_n_1 : STD_LOGIC;
  signal counter_tx1_carry_n_2 : STD_LOGIC;
  signal counter_tx1_carry_n_3 : STD_LOGIC;
  signal \counter_tx[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_tx[0]_i_3_n_0\ : STD_LOGIC;
  signal counter_tx_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \counter_tx_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_tx_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_tx_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_tx_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_tx_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_tx_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_tx_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_tx_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_tx_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_tx_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_tx_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_tx_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_tx_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_tx_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_tx_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_tx_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_tx_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_tx_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_tx_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_tx_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_tx_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_tx_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_tx_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_tx_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_tx_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_tx_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_tx_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_tx_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_tx_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_tx_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_tx_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_tx_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_tx_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter_tx_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \counter_tx_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_tx_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_tx_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \counter_tx_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counter_tx_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_tx_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_tx_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \counter_tx_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \counter_tx_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \counter_tx_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \counter_tx_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \counter_tx_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \counter_tx_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \counter_tx_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_tx_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_tx_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_tx_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_tx_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_tx_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_tx_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_tx_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_tx_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_tx_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_tx_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_tx_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_tx_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_tx_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_tx_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_tx_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal tick_rx_i_1_n_0 : STD_LOGIC;
  signal tick_tx_i_1_n_0 : STD_LOGIC;
  signal NLW_counter_rx0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_rx0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_rx0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_rx0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_rx_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_counter_tx0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_tx0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_tx0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_tx0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_tx1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_tx1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_counter_tx_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter_rx0_carry__0_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of counter_rx0_carry_i_5 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of counter_rx0_carry_i_8 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of counter_rx0_carry_i_9 : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_rx_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_rx_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_rx_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_rx_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_rx_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_rx_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_rx_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_rx_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_tx_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_tx_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_tx_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_tx_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_tx_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_tx_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_tx_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_tx_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of tick_rx_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of tick_tx_i_1 : label is "soft_lutpair2";
begin
\BIT_PERIOD_TX[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => baud_changed,
      I1 => rst_n,
      O => BIT_PERIOD_RX
    );
\BIT_PERIOD_TX_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => BIT_PERIOD_RX,
      D => BIT_PERIOD_TX(0),
      Q => \BIT_PERIOD_TX_reg_n_0_[0]\,
      R => '0'
    );
\BIT_PERIOD_TX_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => BIT_PERIOD_RX,
      D => BIT_PERIOD_TX(10),
      Q => \BIT_PERIOD_TX_reg_n_0_[10]\,
      R => '0'
    );
\BIT_PERIOD_TX_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => BIT_PERIOD_RX,
      D => BIT_PERIOD_TX(11),
      Q => \BIT_PERIOD_TX_reg_n_0_[11]\,
      R => '0'
    );
\BIT_PERIOD_TX_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => BIT_PERIOD_RX,
      D => BIT_PERIOD_TX(12),
      Q => \BIT_PERIOD_TX_reg_n_0_[12]\,
      R => '0'
    );
\BIT_PERIOD_TX_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => BIT_PERIOD_RX,
      D => BIT_PERIOD_TX(13),
      Q => \BIT_PERIOD_TX_reg_n_0_[13]\,
      R => '0'
    );
\BIT_PERIOD_TX_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => BIT_PERIOD_RX,
      D => BIT_PERIOD_TX(1),
      Q => \BIT_PERIOD_TX_reg_n_0_[1]\,
      R => '0'
    );
\BIT_PERIOD_TX_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => BIT_PERIOD_RX,
      D => BIT_PERIOD_TX(2),
      Q => \BIT_PERIOD_TX_reg_n_0_[2]\,
      R => '0'
    );
\BIT_PERIOD_TX_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => BIT_PERIOD_RX,
      D => BIT_PERIOD_TX(3),
      Q => \BIT_PERIOD_TX_reg_n_0_[3]\,
      R => '0'
    );
\BIT_PERIOD_TX_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => BIT_PERIOD_RX,
      D => BIT_PERIOD_TX(4),
      Q => \BIT_PERIOD_TX_reg_n_0_[4]\,
      R => '0'
    );
\BIT_PERIOD_TX_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => BIT_PERIOD_RX,
      D => BIT_PERIOD_TX(5),
      Q => \BIT_PERIOD_TX_reg_n_0_[5]\,
      R => '0'
    );
\BIT_PERIOD_TX_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => BIT_PERIOD_RX,
      D => BIT_PERIOD_TX(6),
      Q => \BIT_PERIOD_TX_reg_n_0_[6]\,
      R => '0'
    );
\BIT_PERIOD_TX_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => BIT_PERIOD_RX,
      D => BIT_PERIOD_TX(7),
      Q => \BIT_PERIOD_TX_reg_n_0_[7]\,
      R => '0'
    );
\BIT_PERIOD_TX_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => BIT_PERIOD_RX,
      D => BIT_PERIOD_TX(8),
      Q => \BIT_PERIOD_TX_reg_n_0_[8]\,
      R => '0'
    );
\BIT_PERIOD_TX_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => BIT_PERIOD_RX,
      D => BIT_PERIOD_TX(9),
      Q => \BIT_PERIOD_TX_reg_n_0_[9]\,
      R => '0'
    );
baud_changed_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => baud_sl_prev(0),
      I1 => Q(0),
      I2 => baud_sl_prev(1),
      I3 => Q(1),
      I4 => Q(2),
      I5 => baud_sl_prev(2),
      O => baud_changed_i_1_n_0
    );
baud_changed_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => baud_changed_i_1_n_0,
      Q => baud_changed,
      R => SR(0)
    );
\baud_sl_prev_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(0),
      Q => baud_sl_prev(0),
      R => SR(0)
    );
\baud_sl_prev_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(1),
      Q => baud_sl_prev(1),
      R => SR(0)
    );
\baud_sl_prev_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(2),
      Q => baud_sl_prev(2),
      R => SR(0)
    );
counter_rx0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter_rx0_carry_n_0,
      CO(2) => counter_rx0_carry_n_1,
      CO(1) => counter_rx0_carry_n_2,
      CO(0) => counter_rx0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_counter_rx0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => counter_rx0_carry_i_1_n_0,
      S(2) => counter_rx0_carry_i_2_n_0,
      S(1) => counter_rx0_carry_i_3_n_0,
      S(0) => counter_rx0_carry_i_4_n_0
    );
\counter_rx0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter_rx0_carry_n_0,
      CO(3) => \counter_rx0_carry__0_n_0\,
      CO(2) => \counter_rx0_carry__0_n_1\,
      CO(1) => \counter_rx0_carry__0_n_2\,
      CO(0) => \counter_rx0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_counter_rx0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \counter_rx0_carry__0_i_1_n_0\,
      S(2) => \counter_rx0_carry__0_i_2_n_0\,
      S(1) => \counter_rx0_carry__0_i_3_n_0\,
      S(0) => \counter_rx0_carry__0_i_4_n_0\
    );
\counter_rx0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0810"
    )
        port map (
      I0 => counter_rx_reg(22),
      I1 => counter_rx_reg(21),
      I2 => \counter_rx0_carry__0_i_5_n_0\,
      I3 => counter_rx_reg(23),
      O => \counter_rx0_carry__0_i_1_n_0\
    );
\counter_rx0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0810"
    )
        port map (
      I0 => counter_rx_reg(19),
      I1 => counter_rx_reg(18),
      I2 => \counter_rx0_carry__0_i_5_n_0\,
      I3 => counter_rx_reg(20),
      O => \counter_rx0_carry__0_i_2_n_0\
    );
\counter_rx0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0810"
    )
        port map (
      I0 => counter_rx_reg(16),
      I1 => counter_rx_reg(15),
      I2 => \counter_rx0_carry__0_i_5_n_0\,
      I3 => counter_rx_reg(17),
      O => \counter_rx0_carry__0_i_3_n_0\
    );
\counter_rx0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0810"
    )
        port map (
      I0 => counter_rx_reg(13),
      I1 => counter_rx_reg(12),
      I2 => \counter_rx0_carry__0_i_5_n_0\,
      I3 => counter_rx_reg(14),
      O => \counter_rx0_carry__0_i_4_n_0\
    );
\counter_rx0_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \BIT_PERIOD_TX_reg_n_0_[12]\,
      I1 => \BIT_PERIOD_TX_reg_n_0_[10]\,
      I2 => counter_rx0_carry_i_6_n_0,
      I3 => \BIT_PERIOD_TX_reg_n_0_[11]\,
      I4 => \BIT_PERIOD_TX_reg_n_0_[13]\,
      O => \counter_rx0_carry__0_i_5_n_0\
    );
\counter_rx0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_rx0_carry__0_n_0\,
      CO(3) => \NLW_counter_rx0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => counter_rx0,
      CO(1) => \counter_rx0_carry__1_n_2\,
      CO(0) => \counter_rx0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_counter_rx0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \counter_rx0_carry__1_i_1_n_0\,
      S(1) => \counter_rx0_carry__1_i_2_n_0\,
      S(0) => \counter_rx0_carry__1_i_3_n_0\
    );
\counter_rx0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \counter_rx0_carry__0_i_5_n_0\,
      I1 => counter_rx_reg(30),
      I2 => counter_rx_reg(31),
      O => \counter_rx0_carry__1_i_1_n_0\
    );
\counter_rx0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0810"
    )
        port map (
      I0 => counter_rx_reg(28),
      I1 => counter_rx_reg(27),
      I2 => \counter_rx0_carry__0_i_5_n_0\,
      I3 => counter_rx_reg(29),
      O => \counter_rx0_carry__1_i_2_n_0\
    );
\counter_rx0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0810"
    )
        port map (
      I0 => counter_rx_reg(25),
      I1 => counter_rx_reg(24),
      I2 => \counter_rx0_carry__0_i_5_n_0\,
      I3 => counter_rx_reg(26),
      O => \counter_rx0_carry__1_i_3_n_0\
    );
counter_rx0_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00084110"
    )
        port map (
      I0 => counter_rx_reg(10),
      I1 => counter_rx_reg(9),
      I2 => counter_rx0_carry_i_5_n_0,
      I3 => \BIT_PERIOD_TX_reg_n_0_[13]\,
      I4 => counter_rx_reg(11),
      O => counter_rx0_carry_i_1_n_0
    );
counter_rx0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8610108600000000"
    )
        port map (
      I0 => \BIT_PERIOD_TX_reg_n_0_[10]\,
      I1 => counter_rx0_carry_i_6_n_0,
      I2 => counter_rx_reg(6),
      I3 => \BIT_PERIOD_TX_reg_n_0_[11]\,
      I4 => counter_rx_reg(7),
      I5 => counter_rx0_carry_i_7_n_0,
      O => counter_rx0_carry_i_2_n_0
    );
counter_rx0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8020200808020280"
    )
        port map (
      I0 => counter_rx0_carry_i_8_n_0,
      I1 => counter_rx_reg(4),
      I2 => counter_rx_reg(5),
      I3 => \BIT_PERIOD_TX_reg_n_0_[8]\,
      I4 => counter_rx0_carry_i_9_n_0,
      I5 => \BIT_PERIOD_TX_reg_n_0_[9]\,
      O => counter_rx0_carry_i_3_n_0
    );
counter_rx0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4010200804010280"
    )
        port map (
      I0 => counter_rx_reg(0),
      I1 => counter_rx_reg(1),
      I2 => counter_rx_reg(2),
      I3 => \BIT_PERIOD_TX_reg_n_0_[5]\,
      I4 => \BIT_PERIOD_TX_reg_n_0_[4]\,
      I5 => \BIT_PERIOD_TX_reg_n_0_[6]\,
      O => counter_rx0_carry_i_4_n_0
    );
counter_rx0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \BIT_PERIOD_TX_reg_n_0_[11]\,
      I1 => counter_rx0_carry_i_6_n_0,
      I2 => \BIT_PERIOD_TX_reg_n_0_[10]\,
      I3 => \BIT_PERIOD_TX_reg_n_0_[12]\,
      O => counter_rx0_carry_i_5_n_0
    );
counter_rx0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \BIT_PERIOD_TX_reg_n_0_[8]\,
      I1 => \BIT_PERIOD_TX_reg_n_0_[6]\,
      I2 => \BIT_PERIOD_TX_reg_n_0_[4]\,
      I3 => \BIT_PERIOD_TX_reg_n_0_[5]\,
      I4 => \BIT_PERIOD_TX_reg_n_0_[7]\,
      I5 => \BIT_PERIOD_TX_reg_n_0_[9]\,
      O => counter_rx0_carry_i_6_n_0
    );
counter_rx0_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95556"
    )
        port map (
      I0 => \BIT_PERIOD_TX_reg_n_0_[12]\,
      I1 => \BIT_PERIOD_TX_reg_n_0_[10]\,
      I2 => counter_rx0_carry_i_6_n_0,
      I3 => \BIT_PERIOD_TX_reg_n_0_[11]\,
      I4 => counter_rx_reg(8),
      O => counter_rx0_carry_i_7_n_0
    );
counter_rx0_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95556"
    )
        port map (
      I0 => \BIT_PERIOD_TX_reg_n_0_[7]\,
      I1 => \BIT_PERIOD_TX_reg_n_0_[5]\,
      I2 => \BIT_PERIOD_TX_reg_n_0_[4]\,
      I3 => \BIT_PERIOD_TX_reg_n_0_[6]\,
      I4 => counter_rx_reg(3),
      O => counter_rx0_carry_i_8_n_0
    );
counter_rx0_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \BIT_PERIOD_TX_reg_n_0_[6]\,
      I1 => \BIT_PERIOD_TX_reg_n_0_[4]\,
      I2 => \BIT_PERIOD_TX_reg_n_0_[5]\,
      I3 => \BIT_PERIOD_TX_reg_n_0_[7]\,
      O => counter_rx0_carry_i_9_n_0
    );
\counter_rx[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => rst_n,
      I1 => baud_changed,
      I2 => counter_rx0,
      O => \counter_rx[0]_i_1_n_0\
    );
\counter_rx[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_rx_reg(0),
      O => \counter_rx[0]_i_3_n_0\
    );
\counter_rx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[0]_i_2_n_7\,
      Q => counter_rx_reg(0),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_rx_reg[0]_i_2_n_0\,
      CO(2) => \counter_rx_reg[0]_i_2_n_1\,
      CO(1) => \counter_rx_reg[0]_i_2_n_2\,
      CO(0) => \counter_rx_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_rx_reg[0]_i_2_n_4\,
      O(2) => \counter_rx_reg[0]_i_2_n_5\,
      O(1) => \counter_rx_reg[0]_i_2_n_6\,
      O(0) => \counter_rx_reg[0]_i_2_n_7\,
      S(3 downto 1) => counter_rx_reg(3 downto 1),
      S(0) => \counter_rx[0]_i_3_n_0\
    );
\counter_rx_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[8]_i_1_n_5\,
      Q => counter_rx_reg(10),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[8]_i_1_n_4\,
      Q => counter_rx_reg(11),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[12]_i_1_n_7\,
      Q => counter_rx_reg(12),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_rx_reg[8]_i_1_n_0\,
      CO(3) => \counter_rx_reg[12]_i_1_n_0\,
      CO(2) => \counter_rx_reg[12]_i_1_n_1\,
      CO(1) => \counter_rx_reg[12]_i_1_n_2\,
      CO(0) => \counter_rx_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_rx_reg[12]_i_1_n_4\,
      O(2) => \counter_rx_reg[12]_i_1_n_5\,
      O(1) => \counter_rx_reg[12]_i_1_n_6\,
      O(0) => \counter_rx_reg[12]_i_1_n_7\,
      S(3 downto 0) => counter_rx_reg(15 downto 12)
    );
\counter_rx_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[12]_i_1_n_6\,
      Q => counter_rx_reg(13),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[12]_i_1_n_5\,
      Q => counter_rx_reg(14),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[12]_i_1_n_4\,
      Q => counter_rx_reg(15),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[16]_i_1_n_7\,
      Q => counter_rx_reg(16),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_rx_reg[12]_i_1_n_0\,
      CO(3) => \counter_rx_reg[16]_i_1_n_0\,
      CO(2) => \counter_rx_reg[16]_i_1_n_1\,
      CO(1) => \counter_rx_reg[16]_i_1_n_2\,
      CO(0) => \counter_rx_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_rx_reg[16]_i_1_n_4\,
      O(2) => \counter_rx_reg[16]_i_1_n_5\,
      O(1) => \counter_rx_reg[16]_i_1_n_6\,
      O(0) => \counter_rx_reg[16]_i_1_n_7\,
      S(3 downto 0) => counter_rx_reg(19 downto 16)
    );
\counter_rx_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[16]_i_1_n_6\,
      Q => counter_rx_reg(17),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[16]_i_1_n_5\,
      Q => counter_rx_reg(18),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[16]_i_1_n_4\,
      Q => counter_rx_reg(19),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[0]_i_2_n_6\,
      Q => counter_rx_reg(1),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[20]_i_1_n_7\,
      Q => counter_rx_reg(20),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_rx_reg[16]_i_1_n_0\,
      CO(3) => \counter_rx_reg[20]_i_1_n_0\,
      CO(2) => \counter_rx_reg[20]_i_1_n_1\,
      CO(1) => \counter_rx_reg[20]_i_1_n_2\,
      CO(0) => \counter_rx_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_rx_reg[20]_i_1_n_4\,
      O(2) => \counter_rx_reg[20]_i_1_n_5\,
      O(1) => \counter_rx_reg[20]_i_1_n_6\,
      O(0) => \counter_rx_reg[20]_i_1_n_7\,
      S(3 downto 0) => counter_rx_reg(23 downto 20)
    );
\counter_rx_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[20]_i_1_n_6\,
      Q => counter_rx_reg(21),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[20]_i_1_n_5\,
      Q => counter_rx_reg(22),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[20]_i_1_n_4\,
      Q => counter_rx_reg(23),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[24]_i_1_n_7\,
      Q => counter_rx_reg(24),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_rx_reg[20]_i_1_n_0\,
      CO(3) => \counter_rx_reg[24]_i_1_n_0\,
      CO(2) => \counter_rx_reg[24]_i_1_n_1\,
      CO(1) => \counter_rx_reg[24]_i_1_n_2\,
      CO(0) => \counter_rx_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_rx_reg[24]_i_1_n_4\,
      O(2) => \counter_rx_reg[24]_i_1_n_5\,
      O(1) => \counter_rx_reg[24]_i_1_n_6\,
      O(0) => \counter_rx_reg[24]_i_1_n_7\,
      S(3 downto 0) => counter_rx_reg(27 downto 24)
    );
\counter_rx_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[24]_i_1_n_6\,
      Q => counter_rx_reg(25),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[24]_i_1_n_5\,
      Q => counter_rx_reg(26),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[24]_i_1_n_4\,
      Q => counter_rx_reg(27),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[28]_i_1_n_7\,
      Q => counter_rx_reg(28),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_rx_reg[24]_i_1_n_0\,
      CO(3) => \NLW_counter_rx_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_rx_reg[28]_i_1_n_1\,
      CO(1) => \counter_rx_reg[28]_i_1_n_2\,
      CO(0) => \counter_rx_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_rx_reg[28]_i_1_n_4\,
      O(2) => \counter_rx_reg[28]_i_1_n_5\,
      O(1) => \counter_rx_reg[28]_i_1_n_6\,
      O(0) => \counter_rx_reg[28]_i_1_n_7\,
      S(3 downto 0) => counter_rx_reg(31 downto 28)
    );
\counter_rx_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[28]_i_1_n_6\,
      Q => counter_rx_reg(29),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[0]_i_2_n_5\,
      Q => counter_rx_reg(2),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[28]_i_1_n_5\,
      Q => counter_rx_reg(30),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[28]_i_1_n_4\,
      Q => counter_rx_reg(31),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[0]_i_2_n_4\,
      Q => counter_rx_reg(3),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[4]_i_1_n_7\,
      Q => counter_rx_reg(4),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_rx_reg[0]_i_2_n_0\,
      CO(3) => \counter_rx_reg[4]_i_1_n_0\,
      CO(2) => \counter_rx_reg[4]_i_1_n_1\,
      CO(1) => \counter_rx_reg[4]_i_1_n_2\,
      CO(0) => \counter_rx_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_rx_reg[4]_i_1_n_4\,
      O(2) => \counter_rx_reg[4]_i_1_n_5\,
      O(1) => \counter_rx_reg[4]_i_1_n_6\,
      O(0) => \counter_rx_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_rx_reg(7 downto 4)
    );
\counter_rx_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[4]_i_1_n_6\,
      Q => counter_rx_reg(5),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[4]_i_1_n_5\,
      Q => counter_rx_reg(6),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[4]_i_1_n_4\,
      Q => counter_rx_reg(7),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[8]_i_1_n_7\,
      Q => counter_rx_reg(8),
      R => \counter_rx[0]_i_1_n_0\
    );
\counter_rx_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_rx_reg[4]_i_1_n_0\,
      CO(3) => \counter_rx_reg[8]_i_1_n_0\,
      CO(2) => \counter_rx_reg[8]_i_1_n_1\,
      CO(1) => \counter_rx_reg[8]_i_1_n_2\,
      CO(0) => \counter_rx_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_rx_reg[8]_i_1_n_4\,
      O(2) => \counter_rx_reg[8]_i_1_n_5\,
      O(1) => \counter_rx_reg[8]_i_1_n_6\,
      O(0) => \counter_rx_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_rx_reg(11 downto 8)
    );
\counter_rx_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_rx_reg[8]_i_1_n_6\,
      Q => counter_rx_reg(9),
      R => \counter_rx[0]_i_1_n_0\
    );
counter_tx0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter_tx0_carry_n_0,
      CO(2) => counter_tx0_carry_n_1,
      CO(1) => counter_tx0_carry_n_2,
      CO(0) => counter_tx0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_counter_tx0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => counter_tx0_carry_i_1_n_0,
      S(2) => counter_tx0_carry_i_2_n_0,
      S(1) => counter_tx0_carry_i_3_n_0,
      S(0) => counter_tx0_carry_i_4_n_0
    );
\counter_tx0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter_tx0_carry_n_0,
      CO(3) => \counter_tx0_carry__0_n_0\,
      CO(2) => \counter_tx0_carry__0_n_1\,
      CO(1) => \counter_tx0_carry__0_n_2\,
      CO(0) => \counter_tx0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_counter_tx0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \counter_tx0_carry__0_i_1_n_0\,
      S(2) => \counter_tx0_carry__0_i_2_n_0\,
      S(1) => \counter_tx0_carry__0_i_3_n_0\,
      S(0) => \counter_tx0_carry__0_i_4_n_0\
    );
\counter_tx0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0810"
    )
        port map (
      I0 => counter_tx_reg(22),
      I1 => counter_tx_reg(21),
      I2 => \counter_tx1_carry__2_n_2\,
      I3 => counter_tx_reg(23),
      O => \counter_tx0_carry__0_i_1_n_0\
    );
\counter_tx0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0810"
    )
        port map (
      I0 => counter_tx_reg(19),
      I1 => counter_tx_reg(18),
      I2 => \counter_tx1_carry__2_n_2\,
      I3 => counter_tx_reg(20),
      O => \counter_tx0_carry__0_i_2_n_0\
    );
\counter_tx0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0810"
    )
        port map (
      I0 => counter_tx_reg(16),
      I1 => counter_tx_reg(15),
      I2 => \counter_tx1_carry__2_n_2\,
      I3 => counter_tx_reg(17),
      O => \counter_tx0_carry__0_i_3_n_0\
    );
\counter_tx0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900990090000"
    )
        port map (
      I0 => counter_tx_reg(13),
      I1 => counter_tx1(13),
      I2 => counter_tx_reg(12),
      I3 => counter_tx1(12),
      I4 => counter_tx_reg(14),
      I5 => \counter_tx1_carry__2_n_2\,
      O => \counter_tx0_carry__0_i_4_n_0\
    );
\counter_tx0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_tx0_carry__0_n_0\,
      CO(3) => \NLW_counter_tx0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => counter_tx0,
      CO(1) => \counter_tx0_carry__1_n_2\,
      CO(0) => \counter_tx0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_counter_tx0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \counter_tx0_carry__1_i_1_n_0\,
      S(1) => \counter_tx0_carry__1_i_2_n_0\,
      S(0) => \counter_tx0_carry__1_i_3_n_0\
    );
\counter_tx0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \counter_tx1_carry__2_n_2\,
      I1 => counter_tx_reg(30),
      I2 => counter_tx_reg(31),
      O => \counter_tx0_carry__1_i_1_n_0\
    );
\counter_tx0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0810"
    )
        port map (
      I0 => counter_tx_reg(28),
      I1 => counter_tx_reg(27),
      I2 => \counter_tx1_carry__2_n_2\,
      I3 => counter_tx_reg(29),
      O => \counter_tx0_carry__1_i_2_n_0\
    );
\counter_tx0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0810"
    )
        port map (
      I0 => counter_tx_reg(25),
      I1 => counter_tx_reg(24),
      I2 => \counter_tx1_carry__2_n_2\,
      I3 => counter_tx_reg(26),
      O => \counter_tx0_carry__1_i_3_n_0\
    );
counter_tx0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_tx_reg(10),
      I1 => counter_tx1(10),
      I2 => counter_tx_reg(9),
      I3 => counter_tx1(9),
      I4 => counter_tx1(11),
      I5 => counter_tx_reg(11),
      O => counter_tx0_carry_i_1_n_0
    );
counter_tx0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_tx_reg(7),
      I1 => counter_tx1(7),
      I2 => counter_tx_reg(6),
      I3 => counter_tx1(6),
      I4 => counter_tx1(8),
      I5 => counter_tx_reg(8),
      O => counter_tx0_carry_i_2_n_0
    );
counter_tx0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_tx_reg(4),
      I1 => counter_tx1(4),
      I2 => counter_tx_reg(3),
      I3 => counter_tx1(3),
      I4 => counter_tx1(5),
      I5 => counter_tx_reg(5),
      O => counter_tx0_carry_i_3_n_0
    );
counter_tx0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0990000000000990"
    )
        port map (
      I0 => counter_tx_reg(1),
      I1 => counter_tx1(1),
      I2 => \BIT_PERIOD_TX_reg_n_0_[0]\,
      I3 => counter_tx_reg(0),
      I4 => counter_tx1(2),
      I5 => counter_tx_reg(2),
      O => counter_tx0_carry_i_4_n_0
    );
counter_tx1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter_tx1_carry_n_0,
      CO(2) => counter_tx1_carry_n_1,
      CO(1) => counter_tx1_carry_n_2,
      CO(0) => counter_tx1_carry_n_3,
      CYINIT => \BIT_PERIOD_TX_reg_n_0_[0]\,
      DI(3) => \BIT_PERIOD_TX_reg_n_0_[4]\,
      DI(2) => \BIT_PERIOD_TX_reg_n_0_[3]\,
      DI(1) => \BIT_PERIOD_TX_reg_n_0_[2]\,
      DI(0) => \BIT_PERIOD_TX_reg_n_0_[1]\,
      O(3 downto 0) => counter_tx1(4 downto 1),
      S(3) => counter_tx1_carry_i_1_n_0,
      S(2) => counter_tx1_carry_i_2_n_0,
      S(1) => counter_tx1_carry_i_3_n_0,
      S(0) => counter_tx1_carry_i_4_n_0
    );
\counter_tx1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter_tx1_carry_n_0,
      CO(3) => \counter_tx1_carry__0_n_0\,
      CO(2) => \counter_tx1_carry__0_n_1\,
      CO(1) => \counter_tx1_carry__0_n_2\,
      CO(0) => \counter_tx1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \BIT_PERIOD_TX_reg_n_0_[8]\,
      DI(2) => \BIT_PERIOD_TX_reg_n_0_[7]\,
      DI(1) => \BIT_PERIOD_TX_reg_n_0_[6]\,
      DI(0) => \BIT_PERIOD_TX_reg_n_0_[5]\,
      O(3 downto 0) => counter_tx1(8 downto 5),
      S(3) => \counter_tx1_carry__0_i_1_n_0\,
      S(2) => \counter_tx1_carry__0_i_2_n_0\,
      S(1) => \counter_tx1_carry__0_i_3_n_0\,
      S(0) => \counter_tx1_carry__0_i_4_n_0\
    );
\counter_tx1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BIT_PERIOD_TX_reg_n_0_[8]\,
      O => \counter_tx1_carry__0_i_1_n_0\
    );
\counter_tx1_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BIT_PERIOD_TX_reg_n_0_[7]\,
      O => \counter_tx1_carry__0_i_2_n_0\
    );
\counter_tx1_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BIT_PERIOD_TX_reg_n_0_[6]\,
      O => \counter_tx1_carry__0_i_3_n_0\
    );
\counter_tx1_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BIT_PERIOD_TX_reg_n_0_[5]\,
      O => \counter_tx1_carry__0_i_4_n_0\
    );
\counter_tx1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_tx1_carry__0_n_0\,
      CO(3) => \counter_tx1_carry__1_n_0\,
      CO(2) => \counter_tx1_carry__1_n_1\,
      CO(1) => \counter_tx1_carry__1_n_2\,
      CO(0) => \counter_tx1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \BIT_PERIOD_TX_reg_n_0_[12]\,
      DI(2) => \BIT_PERIOD_TX_reg_n_0_[11]\,
      DI(1) => \BIT_PERIOD_TX_reg_n_0_[10]\,
      DI(0) => \BIT_PERIOD_TX_reg_n_0_[9]\,
      O(3 downto 0) => counter_tx1(12 downto 9),
      S(3) => \counter_tx1_carry__1_i_1_n_0\,
      S(2) => \counter_tx1_carry__1_i_2_n_0\,
      S(1) => \counter_tx1_carry__1_i_3_n_0\,
      S(0) => \counter_tx1_carry__1_i_4_n_0\
    );
\counter_tx1_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BIT_PERIOD_TX_reg_n_0_[12]\,
      O => \counter_tx1_carry__1_i_1_n_0\
    );
\counter_tx1_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BIT_PERIOD_TX_reg_n_0_[11]\,
      O => \counter_tx1_carry__1_i_2_n_0\
    );
\counter_tx1_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BIT_PERIOD_TX_reg_n_0_[10]\,
      O => \counter_tx1_carry__1_i_3_n_0\
    );
\counter_tx1_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BIT_PERIOD_TX_reg_n_0_[9]\,
      O => \counter_tx1_carry__1_i_4_n_0\
    );
\counter_tx1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_tx1_carry__1_n_0\,
      CO(3 downto 2) => \NLW_counter_tx1_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_tx1_carry__2_n_2\,
      CO(0) => \NLW_counter_tx1_carry__2_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \BIT_PERIOD_TX_reg_n_0_[13]\,
      O(3 downto 1) => \NLW_counter_tx1_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => counter_tx1(13),
      S(3 downto 1) => B"001",
      S(0) => \counter_tx1_carry__2_i_1_n_0\
    );
\counter_tx1_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BIT_PERIOD_TX_reg_n_0_[13]\,
      O => \counter_tx1_carry__2_i_1_n_0\
    );
counter_tx1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BIT_PERIOD_TX_reg_n_0_[4]\,
      O => counter_tx1_carry_i_1_n_0
    );
counter_tx1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BIT_PERIOD_TX_reg_n_0_[3]\,
      O => counter_tx1_carry_i_2_n_0
    );
counter_tx1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BIT_PERIOD_TX_reg_n_0_[2]\,
      O => counter_tx1_carry_i_3_n_0
    );
counter_tx1_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BIT_PERIOD_TX_reg_n_0_[1]\,
      O => counter_tx1_carry_i_4_n_0
    );
\counter_tx[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => rst_n,
      I1 => baud_changed,
      I2 => counter_tx0,
      O => \counter_tx[0]_i_1_n_0\
    );
\counter_tx[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_tx_reg(0),
      O => \counter_tx[0]_i_3_n_0\
    );
\counter_tx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[0]_i_2_n_7\,
      Q => counter_tx_reg(0),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_tx_reg[0]_i_2_n_0\,
      CO(2) => \counter_tx_reg[0]_i_2_n_1\,
      CO(1) => \counter_tx_reg[0]_i_2_n_2\,
      CO(0) => \counter_tx_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_tx_reg[0]_i_2_n_4\,
      O(2) => \counter_tx_reg[0]_i_2_n_5\,
      O(1) => \counter_tx_reg[0]_i_2_n_6\,
      O(0) => \counter_tx_reg[0]_i_2_n_7\,
      S(3 downto 1) => counter_tx_reg(3 downto 1),
      S(0) => \counter_tx[0]_i_3_n_0\
    );
\counter_tx_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[8]_i_1_n_5\,
      Q => counter_tx_reg(10),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[8]_i_1_n_4\,
      Q => counter_tx_reg(11),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[12]_i_1_n_7\,
      Q => counter_tx_reg(12),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_tx_reg[8]_i_1_n_0\,
      CO(3) => \counter_tx_reg[12]_i_1_n_0\,
      CO(2) => \counter_tx_reg[12]_i_1_n_1\,
      CO(1) => \counter_tx_reg[12]_i_1_n_2\,
      CO(0) => \counter_tx_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_tx_reg[12]_i_1_n_4\,
      O(2) => \counter_tx_reg[12]_i_1_n_5\,
      O(1) => \counter_tx_reg[12]_i_1_n_6\,
      O(0) => \counter_tx_reg[12]_i_1_n_7\,
      S(3 downto 0) => counter_tx_reg(15 downto 12)
    );
\counter_tx_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[12]_i_1_n_6\,
      Q => counter_tx_reg(13),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[12]_i_1_n_5\,
      Q => counter_tx_reg(14),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[12]_i_1_n_4\,
      Q => counter_tx_reg(15),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[16]_i_1_n_7\,
      Q => counter_tx_reg(16),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_tx_reg[12]_i_1_n_0\,
      CO(3) => \counter_tx_reg[16]_i_1_n_0\,
      CO(2) => \counter_tx_reg[16]_i_1_n_1\,
      CO(1) => \counter_tx_reg[16]_i_1_n_2\,
      CO(0) => \counter_tx_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_tx_reg[16]_i_1_n_4\,
      O(2) => \counter_tx_reg[16]_i_1_n_5\,
      O(1) => \counter_tx_reg[16]_i_1_n_6\,
      O(0) => \counter_tx_reg[16]_i_1_n_7\,
      S(3 downto 0) => counter_tx_reg(19 downto 16)
    );
\counter_tx_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[16]_i_1_n_6\,
      Q => counter_tx_reg(17),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[16]_i_1_n_5\,
      Q => counter_tx_reg(18),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[16]_i_1_n_4\,
      Q => counter_tx_reg(19),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[0]_i_2_n_6\,
      Q => counter_tx_reg(1),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[20]_i_1_n_7\,
      Q => counter_tx_reg(20),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_tx_reg[16]_i_1_n_0\,
      CO(3) => \counter_tx_reg[20]_i_1_n_0\,
      CO(2) => \counter_tx_reg[20]_i_1_n_1\,
      CO(1) => \counter_tx_reg[20]_i_1_n_2\,
      CO(0) => \counter_tx_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_tx_reg[20]_i_1_n_4\,
      O(2) => \counter_tx_reg[20]_i_1_n_5\,
      O(1) => \counter_tx_reg[20]_i_1_n_6\,
      O(0) => \counter_tx_reg[20]_i_1_n_7\,
      S(3 downto 0) => counter_tx_reg(23 downto 20)
    );
\counter_tx_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[20]_i_1_n_6\,
      Q => counter_tx_reg(21),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[20]_i_1_n_5\,
      Q => counter_tx_reg(22),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[20]_i_1_n_4\,
      Q => counter_tx_reg(23),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[24]_i_1_n_7\,
      Q => counter_tx_reg(24),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_tx_reg[20]_i_1_n_0\,
      CO(3) => \counter_tx_reg[24]_i_1_n_0\,
      CO(2) => \counter_tx_reg[24]_i_1_n_1\,
      CO(1) => \counter_tx_reg[24]_i_1_n_2\,
      CO(0) => \counter_tx_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_tx_reg[24]_i_1_n_4\,
      O(2) => \counter_tx_reg[24]_i_1_n_5\,
      O(1) => \counter_tx_reg[24]_i_1_n_6\,
      O(0) => \counter_tx_reg[24]_i_1_n_7\,
      S(3 downto 0) => counter_tx_reg(27 downto 24)
    );
\counter_tx_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[24]_i_1_n_6\,
      Q => counter_tx_reg(25),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[24]_i_1_n_5\,
      Q => counter_tx_reg(26),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[24]_i_1_n_4\,
      Q => counter_tx_reg(27),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[28]_i_1_n_7\,
      Q => counter_tx_reg(28),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_tx_reg[24]_i_1_n_0\,
      CO(3) => \NLW_counter_tx_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_tx_reg[28]_i_1_n_1\,
      CO(1) => \counter_tx_reg[28]_i_1_n_2\,
      CO(0) => \counter_tx_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_tx_reg[28]_i_1_n_4\,
      O(2) => \counter_tx_reg[28]_i_1_n_5\,
      O(1) => \counter_tx_reg[28]_i_1_n_6\,
      O(0) => \counter_tx_reg[28]_i_1_n_7\,
      S(3 downto 0) => counter_tx_reg(31 downto 28)
    );
\counter_tx_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[28]_i_1_n_6\,
      Q => counter_tx_reg(29),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[0]_i_2_n_5\,
      Q => counter_tx_reg(2),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[28]_i_1_n_5\,
      Q => counter_tx_reg(30),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[28]_i_1_n_4\,
      Q => counter_tx_reg(31),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[0]_i_2_n_4\,
      Q => counter_tx_reg(3),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[4]_i_1_n_7\,
      Q => counter_tx_reg(4),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_tx_reg[0]_i_2_n_0\,
      CO(3) => \counter_tx_reg[4]_i_1_n_0\,
      CO(2) => \counter_tx_reg[4]_i_1_n_1\,
      CO(1) => \counter_tx_reg[4]_i_1_n_2\,
      CO(0) => \counter_tx_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_tx_reg[4]_i_1_n_4\,
      O(2) => \counter_tx_reg[4]_i_1_n_5\,
      O(1) => \counter_tx_reg[4]_i_1_n_6\,
      O(0) => \counter_tx_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_tx_reg(7 downto 4)
    );
\counter_tx_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[4]_i_1_n_6\,
      Q => counter_tx_reg(5),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[4]_i_1_n_5\,
      Q => counter_tx_reg(6),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[4]_i_1_n_4\,
      Q => counter_tx_reg(7),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[8]_i_1_n_7\,
      Q => counter_tx_reg(8),
      R => \counter_tx[0]_i_1_n_0\
    );
\counter_tx_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_tx_reg[4]_i_1_n_0\,
      CO(3) => \counter_tx_reg[8]_i_1_n_0\,
      CO(2) => \counter_tx_reg[8]_i_1_n_1\,
      CO(1) => \counter_tx_reg[8]_i_1_n_2\,
      CO(0) => \counter_tx_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_tx_reg[8]_i_1_n_4\,
      O(2) => \counter_tx_reg[8]_i_1_n_5\,
      O(1) => \counter_tx_reg[8]_i_1_n_6\,
      O(0) => \counter_tx_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_tx_reg(11 downto 8)
    );
\counter_tx_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_tx_reg[8]_i_1_n_6\,
      Q => counter_tx_reg(9),
      R => \counter_tx[0]_i_1_n_0\
    );
tick_rx_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => counter_rx0,
      I1 => rst_n,
      I2 => baud_changed,
      O => tick_rx_i_1_n_0
    );
tick_rx_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tick_rx_i_1_n_0,
      Q => E(0),
      R => '0'
    );
tick_tx_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => counter_tx0,
      I1 => rst_n,
      I2 => baud_changed,
      O => tick_tx_i_1_n_0
    );
tick_tx_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tick_tx_i_1_n_0,
      Q => baud_o,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0_ff is
  port (
    tx : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_0 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_uart_0_0_ff : entity is "ff";
end design_1_axi4_uart_0_0_ff;

architecture STRUCTURE of design_1_axi4_uart_0_0_ff is
begin
Q_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => E(0),
      D => data_0,
      Q => tx,
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0_ff_0 is
  port (
    data_0 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_1 : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_d0_sampled : in STD_LOGIC;
    load_en_sampled : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_uart_0_0_ff_0 : entity is "ff";
end design_1_axi4_uart_0_0_ff_0;

architecture STRUCTURE of design_1_axi4_uart_0_0_ff_0 is
  signal f1 : STD_LOGIC;
begin
Q_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2230"
    )
        port map (
      I0 => Q(0),
      I1 => load_d0_sampled,
      I2 => f1,
      I3 => load_en_sampled,
      O => data_0
    );
Q_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => E(0),
      D => data_1,
      Q => f1,
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0_ff_1 is
  port (
    data_1 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_2 : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_en_sampled : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_uart_0_0_ff_1 : entity is "ff";
end design_1_axi4_uart_0_0_ff_1;

architecture STRUCTURE of design_1_axi4_uart_0_0_ff_1 is
  signal f2 : STD_LOGIC;
begin
\Q_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(0),
      I1 => load_en_sampled,
      I2 => f2,
      O => data_1
    );
Q_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => E(0),
      D => data_2,
      Q => f2,
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0_ff_2 is
  port (
    data_2 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_3 : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_en_sampled : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_uart_0_0_ff_2 : entity is "ff";
end design_1_axi4_uart_0_0_ff_2;

architecture STRUCTURE of design_1_axi4_uart_0_0_ff_2 is
  signal f3 : STD_LOGIC;
begin
\Q_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(0),
      I1 => load_en_sampled,
      I2 => f3,
      O => data_2
    );
Q_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => E(0),
      D => data_3,
      Q => f3,
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0_ff_3 is
  port (
    data_3 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_4 : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_en_sampled : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_uart_0_0_ff_3 : entity is "ff";
end design_1_axi4_uart_0_0_ff_3;

architecture STRUCTURE of design_1_axi4_uart_0_0_ff_3 is
  signal f4 : STD_LOGIC;
begin
\Q_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(0),
      I1 => load_en_sampled,
      I2 => f4,
      O => data_3
    );
Q_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => E(0),
      D => data_4,
      Q => f4,
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0_ff_4 is
  port (
    data_4 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_5 : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_en_sampled : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_uart_0_0_ff_4 : entity is "ff";
end design_1_axi4_uart_0_0_ff_4;

architecture STRUCTURE of design_1_axi4_uart_0_0_ff_4 is
  signal f5 : STD_LOGIC;
begin
\Q_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(0),
      I1 => load_en_sampled,
      I2 => f5,
      O => data_4
    );
Q_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => E(0),
      D => data_5,
      Q => f5,
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0_ff_5 is
  port (
    data_5 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_6 : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_en_sampled : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_uart_0_0_ff_5 : entity is "ff";
end design_1_axi4_uart_0_0_ff_5;

architecture STRUCTURE of design_1_axi4_uart_0_0_ff_5 is
  signal f6 : STD_LOGIC;
begin
\Q_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(0),
      I1 => load_en_sampled,
      I2 => f6,
      O => data_5
    );
Q_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => E(0),
      D => data_6,
      Q => f6,
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0_ff_6 is
  port (
    data_6 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    load_en_sampled : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_uart_0_0_ff_6 : entity is "ff";
end design_1_axi4_uart_0_0_ff_6;

architecture STRUCTURE of design_1_axi4_uart_0_0_ff_6 is
  signal data_7 : STD_LOGIC;
  signal f7 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__5\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \Q_i_1__6\ : label is "soft_lutpair59";
begin
\Q_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(0),
      I1 => load_en_sampled,
      I2 => f7,
      O => data_6
    );
\Q_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(1),
      I1 => load_en_sampled,
      O => data_7
    );
Q_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => E(0),
      D => data_7,
      Q => f7,
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0_receiver_controller is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    parity_check : out STD_LOGIC;
    p_4_in : out STD_LOGIC;
    stop_bit_2_check : out STD_LOGIC;
    stop_bit_1_check : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \total_data_size_sampled_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \fcr_d_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[0]_0\ : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    rst_n_0 : out STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_data_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_data_reg[0]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_current_state_reg[0]_3\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_4\ : in STD_LOGIC;
    ocr : in STD_LOGIC_VECTOR ( 0 to 0 );
    stop_bit_2_check_sampled_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    stop_bit_2_check_sampled_reg_0 : in STD_LOGIC;
    stop_bit_2_check_sampled_reg_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    stop_bit_1_check_sampled_reg : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    \mem_reg_0_15_6_7__0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fifo_rx_full_o : in STD_LOGIC;
    fifo_rx_pop_d : in STD_LOGIC;
    fifo_rx_pop : in STD_LOGIC;
    fifo_rx_empty : in STD_LOGIC;
    \data_o_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_current_state_reg[0]_5\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_uart_0_0_receiver_controller : entity is "receiver_controller";
end design_1_axi4_uart_0_0_receiver_controller;

architecture STRUCTURE of design_1_axi4_uart_0_0_receiver_controller is
  signal \FSM_sequential_current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \clk_1x__3\ : STD_LOGIC;
  signal \clk_2x__3\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \data_o[7]_i_3_n_0\ : STD_LOGIC;
  signal data_valid_d_i_2_n_0 : STD_LOGIC;
  signal \^fcr_d_reg[0]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal next_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^p_4_in\ : STD_LOGIC;
  signal parity_check_sampled_i_3_n_0 : STD_LOGIC;
  signal \receive_data_fi__6\ : STD_LOGIC;
  signal stop_bit_1_check_sampled_i_2_n_0 : STD_LOGIC;
  signal stop_bit_2_check_sampled_i_2_n_0 : STD_LOGIC;
  signal \^total_data_size_sampled_reg[3]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_4\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_2\ : label is "soft_lutpair41";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "RECEIVE_DATA:100,RECEIVE_PARITY:101,RECEIVE_STOP:110,FINISH:111,WAIT_START:011,SCAN:010,IDLE:000,RTS:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "RECEIVE_DATA:100,RECEIVE_PARITY:101,RECEIVE_STOP:110,FINISH:111,WAIT_START:011,SCAN:010,IDLE:000,RTS:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "RECEIVE_DATA:100,RECEIVE_PARITY:101,RECEIVE_STOP:110,FINISH:111,WAIT_START:011,SCAN:010,IDLE:000,RTS:001";
  attribute SOFT_HLUTNM of \count_data[3]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \count_data[3]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of data_valid_d_i_2 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \lsr[6]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of parity_check_sampled_i_1 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \shift_regs[7]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \wr_ptr[3]_i_2\ : label is "soft_lutpair40";
begin
  Q(0) <= \^q\(0);
  \fcr_d_reg[0]\(0) <= \^fcr_d_reg[0]\(0);
  p_4_in <= \^p_4_in\;
  \total_data_size_sampled_reg[3]\(0) <= \^total_data_size_sampled_reg[3]\(0);
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I1 => current_state(1),
      I2 => \FSM_sequential_current_state_reg[0]_1\,
      I3 => current_state(2),
      I4 => \FSM_sequential_current_state[0]_i_4_n_0\,
      O => next_state(0)
    );
\FSM_sequential_current_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"005500C0"
    )
        port map (
      I0 => \clk_2x__3\,
      I1 => \receive_data_fi__6\,
      I2 => \FSM_sequential_current_state_reg[0]_2\(0),
      I3 => current_state(1),
      I4 => \^q\(0),
      O => \FSM_sequential_current_state[0]_i_2_n_0\
    );
\FSM_sequential_current_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAABBAAF0FF0000"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[0]_3\,
      I1 => \clk_1x__3\,
      I2 => \FSM_sequential_current_state_reg[0]_4\,
      I3 => \^q\(0),
      I4 => ocr(0),
      I5 => current_state(1),
      O => \FSM_sequential_current_state[0]_i_4_n_0\
    );
\FSM_sequential_current_state[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F445500"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[0]_4\,
      I1 => ocr(0),
      I2 => \clk_1x__3\,
      I3 => \^q\(0),
      I4 => current_state(1),
      O => \FSM_sequential_current_state[1]_i_2__0_n_0\
    );
\FSM_sequential_current_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF23220100"
    )
        port map (
      I0 => \^q\(0),
      I1 => current_state(1),
      I2 => \FSM_sequential_current_state_reg[0]_2\(0),
      I3 => \receive_data_fi__6\,
      I4 => \clk_2x__3\,
      I5 => \FSM_sequential_current_state[1]_i_5_n_0\,
      O => \FSM_sequential_current_state[1]_i_3_n_0\
    );
\FSM_sequential_current_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \count_data_reg[0]\(0),
      I1 => \count_data_reg[0]_0\(1),
      I2 => \count_data_reg[0]_0\(0),
      I3 => \count_data_reg[0]_0\(3),
      I4 => \count_data_reg[0]_0\(2),
      O => \clk_2x__3\
    );
\FSM_sequential_current_state[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F00"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[0]_4\,
      I1 => ocr(0),
      I2 => \^q\(0),
      I3 => current_state(1),
      O => \FSM_sequential_current_state[1]_i_5_n_0\
    );
\FSM_sequential_current_state[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F80"
    )
        port map (
      I0 => \clk_1x__3\,
      I1 => current_state(1),
      I2 => \^q\(0),
      I3 => current_state(2),
      O => next_state(2)
    );
\FSM_sequential_current_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \count_data_reg[0]\(0),
      I1 => \count_data_reg[0]_0\(0),
      I2 => \count_data_reg[0]_0\(1),
      I3 => \count_data_reg[0]_0\(3),
      I4 => \count_data_reg[0]_0\(2),
      O => \clk_1x__3\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => next_state(0),
      Q => \^q\(0),
      R => \FSM_sequential_current_state_reg[0]_5\(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => next_state(1),
      Q => current_state(1),
      R => \FSM_sequential_current_state_reg[0]_5\(0)
    );
\FSM_sequential_current_state_reg[1]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_current_state[1]_i_2__0_n_0\,
      I1 => \FSM_sequential_current_state[1]_i_3_n_0\,
      O => next_state(1),
      S => current_state(2)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => next_state(2),
      Q => current_state(2),
      R => \FSM_sequential_current_state_reg[0]_5\(0)
    );
\count_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^p_4_in\,
      I1 => \^total_data_size_sampled_reg[3]\(0),
      I2 => rst_n,
      O => SR(0)
    );
\count_data[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => current_state(2),
      I1 => \^q\(0),
      I2 => current_state(1),
      I3 => \clk_1x__3\,
      O => \^p_4_in\
    );
\data_o[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => \data_o_reg[0]\(3),
      I1 => stop_bit_2_check_sampled_reg(3),
      I2 => \data_o_reg[0]\(2),
      I3 => stop_bit_2_check_sampled_reg(2),
      I4 => \data_o[7]_i_3_n_0\,
      O => \^total_data_size_sampled_reg[3]\(0)
    );
\data_o[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => stop_bit_2_check_sampled_reg(0),
      I1 => \data_o_reg[0]\(0),
      I2 => stop_bit_2_check_sampled_reg(1),
      I3 => \data_o_reg[0]\(1),
      O => \data_o[7]_i_3_n_0\
    );
data_valid_d_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0222200F000F0"
    )
        port map (
      I0 => fifo_rx_pop_d,
      I1 => fifo_rx_pop,
      I2 => current_state(2),
      I3 => data_valid_d_i_2_n_0,
      I4 => fifo_rx_empty,
      I5 => \mem_reg_0_15_6_7__0\(0),
      O => data_valid
    );
data_valid_d_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(0),
      I1 => current_state(1),
      O => data_valid_d_i_2_n_0
    );
\lsr[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(0),
      I1 => current_state(1),
      I2 => current_state(2),
      I3 => \mem_reg_0_15_6_7__0\(0),
      O => \FSM_sequential_current_state_reg[0]_0\
    );
\mem_reg_0_15_0_5_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^fcr_d_reg[0]\(0),
      I1 => rst_n,
      I2 => \mem_reg_0_15_6_7__0\(1),
      O => rst_n_0
    );
parity_check_sampled_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \receive_data_fi__6\,
      I1 => \^p_4_in\,
      O => parity_check
    );
parity_check_sampled_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => stop_bit_2_check_sampled_reg_1(3),
      I1 => stop_bit_2_check_sampled_reg(3),
      I2 => stop_bit_2_check_sampled_reg_1(2),
      I3 => stop_bit_2_check_sampled_reg(2),
      I4 => parity_check_sampled_i_3_n_0,
      O => \receive_data_fi__6\
    );
parity_check_sampled_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => stop_bit_2_check_sampled_reg(0),
      I1 => stop_bit_2_check_sampled_reg_1(0),
      I2 => stop_bit_2_check_sampled_reg(1),
      I3 => stop_bit_2_check_sampled_reg_1(1),
      O => parity_check_sampled_i_3_n_0
    );
\shift_regs[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^q\(0),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => \clk_1x__3\,
      O => E(0)
    );
stop_bit_1_check_sampled_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0480804040080804"
    )
        port map (
      I0 => stop_bit_2_check_sampled_reg(2),
      I1 => stop_bit_1_check_sampled_i_2_n_0,
      I2 => stop_bit_2_check_sampled_reg(3),
      I3 => stop_bit_1_check_sampled_reg,
      I4 => stop_bit_2_check_sampled_reg_1(2),
      I5 => stop_bit_2_check_sampled_reg_1(3),
      O => stop_bit_1_check
    );
stop_bit_1_check_sampled_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6108086100000000"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[0]_2\(0),
      I1 => stop_bit_2_check_sampled_reg_1(0),
      I2 => stop_bit_2_check_sampled_reg(0),
      I3 => stop_bit_2_check_sampled_reg_1(1),
      I4 => stop_bit_2_check_sampled_reg(1),
      I5 => \^p_4_in\,
      O => stop_bit_1_check_sampled_i_2_n_0
    );
stop_bit_2_check_sampled_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080802020080802"
    )
        port map (
      I0 => stop_bit_2_check_sampled_i_2_n_0,
      I1 => stop_bit_2_check_sampled_reg(2),
      I2 => stop_bit_2_check_sampled_reg(3),
      I3 => stop_bit_2_check_sampled_reg_0,
      I4 => stop_bit_2_check_sampled_reg_1(2),
      I5 => stop_bit_2_check_sampled_reg_1(3),
      O => stop_bit_2_check
    );
stop_bit_2_check_sampled_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4281142800000000"
    )
        port map (
      I0 => stop_bit_2_check_sampled_reg_1(1),
      I1 => stop_bit_2_check_sampled_reg_1(0),
      I2 => \FSM_sequential_current_state_reg[0]_2\(0),
      I3 => stop_bit_2_check_sampled_reg(1),
      I4 => stop_bit_2_check_sampled_reg(0),
      I5 => \^p_4_in\,
      O => stop_bit_2_check_sampled_i_2_n_0
    );
\wr_ptr[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \mem_reg_0_15_6_7__0\(0),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => \^q\(0),
      I4 => fifo_rx_full_o,
      O => \^fcr_d_reg[0]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0_receiver_fifo is
  port (
    rst_n_0 : out STD_LOGIC;
    fifo_rx_full_o : out STD_LOGIC;
    fifo_rx_pop_ready : out STD_LOGIC;
    fifo_rx_empty : out STD_LOGIC;
    fifo_rx_triggered : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \rd_ptr_reg[0]_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \data_o_reg[1]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_n : in STD_LOGIC;
    \lsr_reg[6]\ : in STD_LOGIC;
    \lsr_reg[6]_0\ : in STD_LOGIC;
    \lsr_reg[6]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    lsr6_reset : in STD_LOGIC;
    p_38_in : in STD_LOGIC;
    fifo_rx_pop : in STD_LOGIC;
    rts_no_i_2 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_uart_0_0_receiver_fifo : entity is "receiver_fifo";
end design_1_axi4_uart_0_0_receiver_fifo;

architecture STRUCTURE of design_1_axi4_uart_0_0_receiver_fifo is
  signal \count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_i_2__0_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^fifo_rx_full_o\ : STD_LOGIC;
  signal fifo_rx_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_ptr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_ptr0 : STD_LOGIC;
  signal \rd_ptr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \rd_ptr[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \rd_ptr[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \rd_ptr[3]_i_1__0_n_0\ : STD_LOGIC;
  signal rts_no_i_5_n_0 : STD_LOGIC;
  signal \wr_ptr_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_ptr_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_ptr_reg_n_0_[2]\ : STD_LOGIC;
  signal \wr_ptr_reg_n_0_[3]\ : STD_LOGIC;
  signal NLW_mem_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_6_7_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_mem_reg_0_15_6_7__0_SPO_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \data_o[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data_o[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data_o[2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data_o[3]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \data_o[4]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \data_o[5]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data_o[6]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \data_o[7]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of data_valid_d_i_3 : label is "soft_lutpair30";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_15_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_15_0_5 : label is 128;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0_15_0_5 : label is "uart_rx_top_inst/fifo_rx_inst/mem_reg_0_15_0_5";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0_15_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0_15_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0_15_0_5 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0_15_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0_15_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0_15_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_15_6_7 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_15_6_7 : label is 128;
  attribute RTL_RAM_NAME of mem_reg_0_15_6_7 : label is "uart_rx_top_inst/fifo_rx_inst/mem_reg_0_15_6_7";
  attribute RTL_RAM_TYPE of mem_reg_0_15_6_7 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_15_6_7 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_6_7 : label is 15;
  attribute ram_offset of mem_reg_0_15_6_7 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_6_7 : label is 6;
  attribute ram_slice_end of mem_reg_0_15_6_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of \mem_reg_0_15_6_7__0\ : label is "";
  attribute RTL_RAM_BITS of \mem_reg_0_15_6_7__0\ : label is 128;
  attribute RTL_RAM_NAME of \mem_reg_0_15_6_7__0\ : label is "uart_rx_top_inst/fifo_rx_inst/mem_reg_0_15_6_7";
  attribute RTL_RAM_TYPE of \mem_reg_0_15_6_7__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \mem_reg_0_15_6_7__0\ : label is 0;
  attribute ram_addr_end of \mem_reg_0_15_6_7__0\ : label is 15;
  attribute ram_offset of \mem_reg_0_15_6_7__0\ : label is 0;
  attribute ram_slice_begin of \mem_reg_0_15_6_7__0\ : label is 6;
  attribute ram_slice_end of \mem_reg_0_15_6_7__0\ : label is 7;
  attribute SOFT_HLUTNM of \rd_ptr[0]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rd_ptr[1]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rd_ptr[2]_i_2__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rd_ptr[3]_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of rts_no_i_5 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \wr_ptr[0]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \wr_ptr[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \wr_ptr[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \wr_ptr[3]_i_3__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \wr_ptr[3]_i_4\ : label is "soft_lutpair30";
begin
  fifo_rx_full_o <= \^fifo_rx_full_o\;
\count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_1__0_n_0\
    );
\count[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA55555554AAAA"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(2),
      I2 => count_reg(4),
      I3 => count_reg(3),
      I4 => fifo_rx_pop,
      I5 => count_reg(1),
      O => \count[1]_i_1__0_n_0\
    );
\count[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFF5500FF5500A8"
    )
        port map (
      I0 => fifo_rx_pop,
      I1 => count_reg(3),
      I2 => count_reg(4),
      I3 => count_reg(0),
      I4 => count_reg(2),
      I5 => count_reg(1),
      O => \count[2]_i_1__0_n_0\
    );
\count[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDFF2200FFBB0040"
    )
        port map (
      I0 => count_reg(1),
      I1 => fifo_rx_pop,
      I2 => count_reg(4),
      I3 => count_reg(0),
      I4 => count_reg(3),
      I5 => count_reg(2),
      O => \count[3]_i_1__0_n_0\
    );
\count[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rd_ptr0,
      I1 => E(0),
      O => \count[4]_i_1_n_0\
    );
\count[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFF2000FFFB0000"
    )
        port map (
      I0 => count_reg(1),
      I1 => fifo_rx_pop,
      I2 => count_reg(2),
      I3 => count_reg(0),
      I4 => count_reg(4),
      I5 => count_reg(3),
      O => \count[4]_i_2__0_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[4]_i_1_n_0\,
      D => \count[0]_i_1__0_n_0\,
      Q => count_reg(0),
      R => \rd_ptr_reg[0]_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[4]_i_1_n_0\,
      D => \count[1]_i_1__0_n_0\,
      Q => count_reg(1),
      R => \rd_ptr_reg[0]_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[4]_i_1_n_0\,
      D => \count[2]_i_1__0_n_0\,
      Q => count_reg(2),
      R => \rd_ptr_reg[0]_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[4]_i_1_n_0\,
      D => \count[3]_i_1__0_n_0\,
      Q => count_reg(3),
      R => \rd_ptr_reg[0]_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[4]_i_1_n_0\,
      D => \count[4]_i_2__0_n_0\,
      Q => count_reg(4),
      R => \rd_ptr_reg[0]_0\
    );
\data_o[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_rx_o(0),
      I1 => rts_no_i_2(0),
      I2 => Q(0),
      O => D(0)
    );
\data_o[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_rx_o(1),
      I1 => rts_no_i_2(0),
      I2 => Q(1),
      O => D(1)
    );
\data_o[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_rx_o(2),
      I1 => rts_no_i_2(0),
      I2 => Q(2),
      O => D(2)
    );
\data_o[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_rx_o(3),
      I1 => rts_no_i_2(0),
      I2 => Q(3),
      O => D(3)
    );
\data_o[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_rx_o(4),
      I1 => rts_no_i_2(0),
      I2 => Q(4),
      O => D(4)
    );
\data_o[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_rx_o(5),
      I1 => rts_no_i_2(0),
      I2 => Q(5),
      O => D(5)
    );
\data_o[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_rx_o(6),
      I1 => rts_no_i_2(0),
      I2 => Q(6),
      O => D(6)
    );
\data_o[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_rx_o(7),
      I1 => rts_no_i_2(0),
      I2 => Q(7),
      O => D(7)
    );
data_valid_d_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      I2 => count_reg(2),
      I3 => count_reg(4),
      I4 => count_reg(3),
      O => fifo_rx_empty
    );
fifo_rx_pop_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => p_38_in,
      I1 => count_reg(3),
      I2 => count_reg(4),
      I3 => count_reg(2),
      I4 => count_reg(1),
      I5 => count_reg(0),
      O => fifo_rx_pop_ready
    );
\lsr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAA888"
    )
        port map (
      I0 => rst_n,
      I1 => \lsr_reg[6]\,
      I2 => \^fifo_rx_full_o\,
      I3 => \lsr_reg[6]_0\,
      I4 => \lsr_reg[6]_1\(0),
      I5 => lsr6_reset,
      O => rst_n_0
    );
mem_reg_0_15_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => rd_ptr(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => rd_ptr(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => rd_ptr(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3) => \wr_ptr_reg_n_0_[3]\,
      ADDRD(2) => \wr_ptr_reg_n_0_[2]\,
      ADDRD(1) => \wr_ptr_reg_n_0_[1]\,
      ADDRD(0) => \wr_ptr_reg_n_0_[0]\,
      DIA(1 downto 0) => Q(1 downto 0),
      DIB(1 downto 0) => Q(3 downto 2),
      DIC(1 downto 0) => Q(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => fifo_rx_o(1 downto 0),
      DOB(1 downto 0) => fifo_rx_o(3 downto 2),
      DOC(1 downto 0) => fifo_rx_o(5 downto 4),
      DOD(1 downto 0) => NLW_mem_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \data_o_reg[1]\
    );
mem_reg_0_15_6_7: unisim.vcomponents.RAM32X1D
     port map (
      A0 => \wr_ptr_reg_n_0_[0]\,
      A1 => \wr_ptr_reg_n_0_[1]\,
      A2 => \wr_ptr_reg_n_0_[2]\,
      A3 => \wr_ptr_reg_n_0_[3]\,
      A4 => '0',
      D => Q(6),
      DPO => fifo_rx_o(6),
      DPRA0 => rd_ptr(0),
      DPRA1 => rd_ptr(1),
      DPRA2 => rd_ptr(2),
      DPRA3 => rd_ptr(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_6_7_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \data_o_reg[1]\
    );
\mem_reg_0_15_6_7__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => \wr_ptr_reg_n_0_[0]\,
      A1 => \wr_ptr_reg_n_0_[1]\,
      A2 => \wr_ptr_reg_n_0_[2]\,
      A3 => \wr_ptr_reg_n_0_[3]\,
      A4 => '0',
      D => Q(7),
      DPO => fifo_rx_o(7),
      DPRA0 => rd_ptr(0),
      DPRA1 => rd_ptr(1),
      DPRA2 => rd_ptr(2),
      DPRA3 => rd_ptr(3),
      DPRA4 => '0',
      SPO => \NLW_mem_reg_0_15_6_7__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => \data_o_reg[1]\
    );
\rd_ptr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_ptr(0),
      O => \rd_ptr[0]_i_1__0_n_0\
    );
\rd_ptr[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr(0),
      I1 => rd_ptr(1),
      O => \rd_ptr[1]_i_1__0_n_0\
    );
\rd_ptr[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => fifo_rx_pop,
      I1 => count_reg(3),
      I2 => count_reg(4),
      I3 => count_reg(2),
      I4 => count_reg(1),
      I5 => count_reg(0),
      O => rd_ptr0
    );
\rd_ptr[2]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd_ptr(0),
      I1 => rd_ptr(1),
      I2 => rd_ptr(2),
      O => \rd_ptr[2]_i_2__0_n_0\
    );
\rd_ptr[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_ptr(1),
      I1 => rd_ptr(0),
      I2 => rd_ptr(2),
      I3 => rd_ptr(3),
      O => \rd_ptr[3]_i_1__0_n_0\
    );
\rd_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rd_ptr0,
      D => \rd_ptr[0]_i_1__0_n_0\,
      Q => rd_ptr(0),
      R => \rd_ptr_reg[0]_0\
    );
\rd_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rd_ptr0,
      D => \rd_ptr[1]_i_1__0_n_0\,
      Q => rd_ptr(1),
      R => \rd_ptr_reg[0]_0\
    );
\rd_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rd_ptr0,
      D => \rd_ptr[2]_i_2__0_n_0\,
      Q => rd_ptr(2),
      R => \rd_ptr_reg[0]_0\
    );
\rd_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rd_ptr0,
      D => \rd_ptr[3]_i_1__0_n_0\,
      Q => rd_ptr(3),
      R => \rd_ptr_reg[0]_0\
    );
rts_no_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ECFE"
    )
        port map (
      I0 => rts_no_i_5_n_0,
      I1 => count_reg(4),
      I2 => count_reg(3),
      I3 => rts_no_i_2(2),
      O => fifo_rx_triggered
    );
rts_no_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FAF8FAE"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(1),
      I2 => rts_no_i_2(1),
      I3 => rts_no_i_2(2),
      I4 => count_reg(0),
      O => rts_no_i_5_n_0
    );
\wr_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wr_ptr_reg_n_0_[0]\,
      O => \p_0_in__0\(0)
    );
\wr_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_ptr_reg_n_0_[0]\,
      I1 => \wr_ptr_reg_n_0_[1]\,
      O => \p_0_in__0\(1)
    );
\wr_ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \wr_ptr_reg_n_0_[0]\,
      I1 => \wr_ptr_reg_n_0_[1]\,
      I2 => \wr_ptr_reg_n_0_[2]\,
      O => \p_0_in__0\(2)
    );
\wr_ptr[3]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \wr_ptr_reg_n_0_[1]\,
      I1 => \wr_ptr_reg_n_0_[0]\,
      I2 => \wr_ptr_reg_n_0_[2]\,
      I3 => \wr_ptr_reg_n_0_[3]\,
      O => \p_0_in__0\(3)
    );
\wr_ptr[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      I2 => count_reg(2),
      I3 => count_reg(3),
      I4 => count_reg(4),
      O => \^fifo_rx_full_o\
    );
\wr_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(0),
      Q => \wr_ptr_reg_n_0_[0]\,
      R => \rd_ptr_reg[0]_0\
    );
\wr_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(1),
      Q => \wr_ptr_reg_n_0_[1]\,
      R => \rd_ptr_reg[0]_0\
    );
\wr_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(2),
      Q => \wr_ptr_reg_n_0_[2]\,
      R => \rd_ptr_reg[0]_0\
    );
\wr_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(3),
      Q => \wr_ptr_reg_n_0_[3]\,
      R => \rd_ptr_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0_shift_register is
  port (
    rst_n_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst_n : in STD_LOGIC;
    parity_err_o_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    parity_check_sampled : in STD_LOGIC;
    parity_bit_sampled : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_sync : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_uart_0_0_shift_register : entity is "shift_register";
end design_1_axi4_uart_0_0_shift_register;

architecture STRUCTURE of design_1_axi4_uart_0_0_shift_register is
  signal \^d\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \expected_parity_bit__0\ : STD_LOGIC;
  signal parity_err_o_i_3_n_0 : STD_LOGIC;
  signal shift_regs : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_o[5]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \data_o[6]_i_1__0\ : label is "soft_lutpair45";
begin
  D(6 downto 0) <= \^d\(6 downto 0);
  Q(0) <= \^q\(0);
\data_o[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCAA00F0CCAA"
    )
        port map (
      I0 => shift_regs(3),
      I1 => shift_regs(1),
      I2 => shift_regs(2),
      I3 => parity_err_o_reg(1),
      I4 => parity_err_o_reg(0),
      I5 => shift_regs(0),
      O => \^d\(0)
    );
\data_o[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => shift_regs(1),
      I1 => shift_regs(3),
      I2 => parity_err_o_reg(0),
      I3 => shift_regs(2),
      I4 => parity_err_o_reg(1),
      I5 => shift_regs(4),
      O => \^d\(1)
    );
\data_o[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => shift_regs(2),
      I1 => shift_regs(4),
      I2 => parity_err_o_reg(0),
      I3 => shift_regs(3),
      I4 => parity_err_o_reg(1),
      I5 => shift_regs(5),
      O => \^d\(2)
    );
\data_o[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => shift_regs(3),
      I1 => shift_regs(5),
      I2 => parity_err_o_reg(0),
      I3 => shift_regs(4),
      I4 => parity_err_o_reg(1),
      I5 => shift_regs(6),
      O => \^d\(3)
    );
\data_o[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => shift_regs(4),
      I1 => shift_regs(6),
      I2 => parity_err_o_reg(0),
      I3 => shift_regs(5),
      I4 => parity_err_o_reg(1),
      I5 => \^q\(0),
      O => \^d\(4)
    );
\data_o[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCF000"
    )
        port map (
      I0 => shift_regs(5),
      I1 => \^q\(0),
      I2 => shift_regs(6),
      I3 => parity_err_o_reg(1),
      I4 => parity_err_o_reg(0),
      O => \^d\(5)
    );
\data_o[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => shift_regs(6),
      I1 => \^q\(0),
      I2 => parity_err_o_reg(1),
      I3 => parity_err_o_reg(0),
      O => \^d\(6)
    );
parity_err_o_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40008000"
    )
        port map (
      I0 => \expected_parity_bit__0\,
      I1 => rst_n,
      I2 => parity_err_o_reg(2),
      I3 => parity_check_sampled,
      I4 => parity_bit_sampled,
      O => rst_n_0
    );
parity_err_o_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => parity_err_o_reg(3),
      I1 => \^d\(2),
      I2 => \^d\(3),
      I3 => \^d\(0),
      I4 => \^d\(1),
      I5 => parity_err_o_i_3_n_0,
      O => \expected_parity_bit__0\
    );
parity_err_o_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6C933F3F936CC0C0"
    )
        port map (
      I0 => shift_regs(4),
      I1 => shift_regs(6),
      I2 => parity_err_o_reg(0),
      I3 => shift_regs(5),
      I4 => parity_err_o_reg(1),
      I5 => \^q\(0),
      O => parity_err_o_i_3_n_0
    );
\shift_regs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => shift_regs(1),
      Q => shift_regs(0),
      R => SR(0)
    );
\shift_regs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => shift_regs(2),
      Q => shift_regs(1),
      R => SR(0)
    );
\shift_regs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => shift_regs(3),
      Q => shift_regs(2),
      R => SR(0)
    );
\shift_regs_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => shift_regs(4),
      Q => shift_regs(3),
      R => SR(0)
    );
\shift_regs_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => shift_regs(5),
      Q => shift_regs(4),
      R => SR(0)
    );
\shift_regs_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => shift_regs(6),
      Q => shift_regs(5),
      R => SR(0)
    );
\shift_regs_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(0),
      Q => shift_regs(6),
      R => SR(0)
    );
\shift_regs_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => tx_sync,
      Q => \^q\(0),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0_synchronizer is
  port (
    sync_reg_0 : out STD_LOGIC;
    \cts_n__0\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    cts_n : in STD_LOGIC;
    clk : in STD_LOGIC;
    \FSM_sequential_current_state[0]_i_2__0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_uart_0_0_synchronizer : entity is "synchronizer";
end design_1_axi4_uart_0_0_synchronizer;

architecture STRUCTURE of design_1_axi4_uart_0_0_synchronizer is
  signal d1 : STD_LOGIC;
  signal \^sync_reg_0\ : STD_LOGIC;
begin
  sync_reg_0 <= \^sync_reg_0\;
\FSM_sequential_current_state[0]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^sync_reg_0\,
      I1 => \FSM_sequential_current_state[0]_i_2__0\(0),
      O => \cts_n__0\
    );
d1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cts_n,
      Q => d1,
      R => SR(0)
    );
sync_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1,
      Q => \^sync_reg_0\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0_synchronizer_7 is
  port (
    tx_sync : out STD_LOGIC;
    d1_reg_0 : out STD_LOGIC;
    parity_bit : out STD_LOGIC;
    \ocr_d_reg[2]\ : out STD_LOGIC;
    stop_bit_err_0 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx : in STD_LOGIC;
    clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    d1 : in STD_LOGIC;
    ocr : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    parity_check_sampled : in STD_LOGIC;
    stop_bit_2_check_sampled : in STD_LOGIC;
    stop_bit_err_o_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    stop_bit_1_check_sampled : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_uart_0_0_synchronizer_7 : entity is "synchronizer";
end design_1_axi4_uart_0_0_synchronizer_7;

architecture STRUCTURE of design_1_axi4_uart_0_0_synchronizer_7 is
  signal d1_reg_n_0 : STD_LOGIC;
  signal \^tx_sync\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of parity_bit_sampled_i_1 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of stop_bit_err_o_i_1 : label is "soft_lutpair46";
begin
  tx_sync <= \^tx_sync\;
\FSM_sequential_current_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000C00AAAAAAAA"
    )
        port map (
      I0 => E(0),
      I1 => d1,
      I2 => \^tx_sync\,
      I3 => ocr(0),
      I4 => \FSM_sequential_current_state_reg[0]\,
      I5 => Q(0),
      O => d1_reg_0
    );
\FSM_sequential_current_state[0]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF0020"
    )
        port map (
      I0 => ocr(0),
      I1 => \^tx_sync\,
      I2 => d1,
      I3 => Q(0),
      I4 => \FSM_sequential_current_state_reg[0]\,
      O => \ocr_d_reg[2]\
    );
d1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rx,
      Q => d1_reg_n_0,
      R => SR(0)
    );
parity_bit_sampled_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => parity_check_sampled,
      I1 => \^tx_sync\,
      O => parity_bit
    );
stop_bit_err_o_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F08"
    )
        port map (
      I0 => stop_bit_2_check_sampled,
      I1 => stop_bit_err_o_reg(0),
      I2 => \^tx_sync\,
      I3 => stop_bit_1_check_sampled,
      O => stop_bit_err_0
    );
sync_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_reg_n_0,
      Q => \^tx_sync\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0_transmitter_controller is
  port (
    \FSM_sequential_current_state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rd_ptr0 : out STD_LOGIC;
    rst_n_0 : out STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    lsr0_set : out STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    start_tx : in STD_LOGIC;
    clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_tx_empty : in STD_LOGIC;
    ocr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tx_busy_pulse : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    tx_busy : in STD_LOGIC;
    cts_sync : in STD_LOGIC;
    \FSM_sequential_current_state_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    tick_d : in STD_LOGIC;
    baud_o : in STD_LOGIC;
    \cts_n__0\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    trans_data_fi_sampled : in STD_LOGIC;
    trans_stop_fi_sampled : in STD_LOGIC;
    p_2_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_uart_0_0_transmitter_controller : entity is "transmitter_controller";
end design_1_axi4_uart_0_0_transmitter_controller;

architecture STRUCTURE of design_1_axi4_uart_0_0_transmitter_controller is
  signal \FSM_sequential_current_state[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_3__0_n_0\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal negedge_start : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^rd_ptr0\ : STD_LOGIC;
  signal start_en_d : STD_LOGIC;
  signal start_en_d1 : STD_LOGIC;
  signal start_tx_d : STD_LOGIC;
  signal tx_busy_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_1\ : label is "soft_lutpair62";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "TRANS_DATA:100,TRANS_PARITY:101,TRANS_STOP:110,FINISH:111,TRANS_START:011,WAIT:010,IDLE:000,CTS:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "TRANS_DATA:100,TRANS_PARITY:101,TRANS_STOP:110,FINISH:111,TRANS_START:011,WAIT:010,IDLE:000,CTS:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "TRANS_DATA:100,TRANS_PARITY:101,TRANS_STOP:110,FINISH:111,TRANS_START:011,WAIT:010,IDLE:000,CTS:001";
  attribute SOFT_HLUTNM of Q_i_1 : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \cnt_data_trans[3]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \lsr[0]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rd_ptr[2]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of tx_busy_i_2 : label is "soft_lutpair62";
begin
  rd_ptr0 <= \^rd_ptr0\;
\FSM_sequential_current_state[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33FA33F0F0FF0000"
    )
        port map (
      I0 => start_en_d1,
      I1 => tick_d,
      I2 => \cts_n__0\,
      I3 => current_state(0),
      I4 => ocr(0),
      I5 => current_state(1),
      O => \FSM_sequential_current_state[0]_i_2__0_n_0\
    );
\FSM_sequential_current_state[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF40EA000040EA"
    )
        port map (
      I0 => current_state(0),
      I1 => \FSM_sequential_current_state_reg[0]_1\(0),
      I2 => trans_data_fi_sampled,
      I3 => tick_d,
      I4 => current_state(1),
      I5 => \FSM_sequential_current_state[0]_i_5_n_0\,
      O => \FSM_sequential_current_state[0]_i_3__0_n_0\
    );
\FSM_sequential_current_state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCCC0000AAAAAAAA"
    )
        port map (
      I0 => trans_stop_fi_sampled,
      I1 => start_en_d1,
      I2 => cts_sync,
      I3 => \FSM_sequential_current_state_reg[1]_0\(0),
      I4 => ocr(0),
      I5 => current_state(0),
      O => \FSM_sequential_current_state[0]_i_5_n_0\
    );
\FSM_sequential_current_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF777770700000"
    )
        port map (
      I0 => cts_sync,
      I1 => \FSM_sequential_current_state_reg[1]_0\(0),
      I2 => ocr(0),
      I3 => tick_d,
      I4 => current_state(1),
      I5 => current_state(0),
      O => \FSM_sequential_current_state[1]_i_2_n_0\
    );
\FSM_sequential_current_state[1]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF000F0FF44FF44"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[0]_1\(0),
      I1 => trans_data_fi_sampled,
      I2 => tick_d,
      I3 => current_state(1),
      I4 => p_2_in,
      I5 => current_state(0),
      O => \FSM_sequential_current_state[1]_i_3__0_n_0\
    );
\FSM_sequential_current_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7780"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => tick_d,
      I3 => current_state(2),
      O => next_state(2)
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => next_state(0),
      Q => current_state(0),
      R => SR(0)
    );
\FSM_sequential_current_state_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_current_state[0]_i_2__0_n_0\,
      I1 => \FSM_sequential_current_state[0]_i_3__0_n_0\,
      O => next_state(0),
      S => current_state(2)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => next_state(1),
      Q => current_state(1),
      R => SR(0)
    );
\FSM_sequential_current_state_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_current_state[1]_i_3__0_n_0\,
      O => next_state(1),
      S => current_state(2)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => next_state(2),
      Q => current_state(2),
      R => SR(0)
    );
Q_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => baud_o,
      O => \FSM_sequential_current_state_reg[2]_1\(0)
    );
\cnt_data_trans[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"87FF"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => current_state(2),
      I3 => rst_n,
      O => \FSM_sequential_current_state_reg[0]_0\(0)
    );
\count[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^rd_ptr0\,
      I1 => E(0),
      O => \FSM_sequential_current_state_reg[2]_0\(0)
    );
\lsr[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      O => lsr0_set
    );
\rd_ptr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => Q(0),
      I4 => fifo_tx_empty,
      O => \^rd_ptr0\
    );
start_en_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => start_en_d,
      Q => start_en_d1,
      R => SR(0)
    );
start_en_d_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20222222"
    )
        port map (
      I0 => start_tx_d,
      I1 => ocr(1),
      I2 => fifo_tx_empty,
      I3 => Q(0),
      I4 => tx_busy_pulse,
      O => negedge_start
    );
start_en_d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => negedge_start,
      Q => start_en_d,
      R => SR(0)
    );
start_tx_d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => start_tx,
      Q => start_tx_d,
      R => SR(0)
    );
tx_busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA800000AA80AA80"
    )
        port map (
      I0 => rst_n,
      I1 => start_tx,
      I2 => ocr(0),
      I3 => tx_busy,
      I4 => tx_busy_i_2_n_0,
      I5 => current_state(2),
      O => rst_n_0
    );
tx_busy_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      O => tx_busy_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0_transmitter_fifo is
  port (
    fifo_tx_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    start_tx : out STD_LOGIC;
    \count_reg[0]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \sampled_data_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \wr_ptr_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_ptr0 : in STD_LOGIC;
    tx_busy_pulse : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ocr : in STD_LOGIC_VECTOR ( 0 to 0 );
    write_data_d1 : in STD_LOGIC;
    write_data_d2 : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_uart_0_0_transmitter_fifo : entity is "transmitter_fifo";
end design_1_axi4_uart_0_0_transmitter_fifo;

architecture STRUCTURE of design_1_axi4_uart_0_0_transmitter_fifo is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_i_3_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg[0]_0\ : STD_LOGIC;
  signal mem_reg_0_15_0_5_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_ptr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rd_ptr[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr[1]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr[2]_i_2_n_0\ : STD_LOGIC;
  signal \rd_ptr[3]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr[3]_i_3_n_0\ : STD_LOGIC;
  signal wr_ptr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_6_7_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_mem_reg_0_15_6_7__0_SPO_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair53";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_15_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_15_0_5 : label is 128;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0_15_0_5 : label is "uart_tx_top_inst/fifo_tx_inst/mem_reg_0_15_0_5";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0_15_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0_15_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0_15_0_5 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0_15_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0_15_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0_15_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_15_6_7 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_15_6_7 : label is 128;
  attribute RTL_RAM_NAME of mem_reg_0_15_6_7 : label is "uart_tx_top_inst/fifo_tx_inst/mem_reg_0_15_6_7";
  attribute RTL_RAM_TYPE of mem_reg_0_15_6_7 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_15_6_7 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_6_7 : label is 15;
  attribute ram_offset of mem_reg_0_15_6_7 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_6_7 : label is 6;
  attribute ram_slice_end of mem_reg_0_15_6_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of \mem_reg_0_15_6_7__0\ : label is "";
  attribute RTL_RAM_BITS of \mem_reg_0_15_6_7__0\ : label is 128;
  attribute RTL_RAM_NAME of \mem_reg_0_15_6_7__0\ : label is "uart_tx_top_inst/fifo_tx_inst/mem_reg_0_15_6_7";
  attribute RTL_RAM_TYPE of \mem_reg_0_15_6_7__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \mem_reg_0_15_6_7__0\ : label is 0;
  attribute ram_addr_end of \mem_reg_0_15_6_7__0\ : label is 15;
  attribute ram_offset of \mem_reg_0_15_6_7__0\ : label is 0;
  attribute ram_slice_begin of \mem_reg_0_15_6_7__0\ : label is 6;
  attribute ram_slice_end of \mem_reg_0_15_6_7__0\ : label is 7;
  attribute SOFT_HLUTNM of \rd_ptr[0]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rd_ptr[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rd_ptr[2]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rd_ptr[3]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of start_tx_d_i_2 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \wr_ptr[0]_i_1__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \wr_ptr[1]_i_1__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \wr_ptr[2]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \wr_ptr[3]_i_2__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \wr_ptr[3]_i_3\ : label is "soft_lutpair52";
begin
  E(0) <= \^e\(0);
  \count_reg[0]_0\ <= \^count_reg[0]_0\;
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => count_reg(0),
      I1 => rd_ptr0,
      I2 => count_reg(1),
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B4D2"
    )
        port map (
      I0 => rd_ptr0,
      I1 => count_reg(0),
      I2 => count_reg(2),
      I3 => count_reg(1),
      O => \count[2]_i_1_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF20FB04"
    )
        port map (
      I0 => count_reg(1),
      I1 => rd_ptr0,
      I2 => count_reg(0),
      I3 => count_reg(3),
      I4 => count_reg(2),
      O => \count[3]_i_1_n_0\
    );
\count[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFF2000FFFB0004"
    )
        port map (
      I0 => count_reg(1),
      I1 => rd_ptr0,
      I2 => count_reg(0),
      I3 => count_reg(2),
      I4 => count_reg(4),
      I5 => count_reg(3),
      O => \count[4]_i_3_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_reg[0]_1\(0),
      D => \count[0]_i_1_n_0\,
      Q => count_reg(0),
      R => \wr_ptr_reg[0]_0\(0)
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_reg[0]_1\(0),
      D => \count[1]_i_1_n_0\,
      Q => count_reg(1),
      R => \wr_ptr_reg[0]_0\(0)
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_reg[0]_1\(0),
      D => \count[2]_i_1_n_0\,
      Q => count_reg(2),
      R => \wr_ptr_reg[0]_0\(0)
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_reg[0]_1\(0),
      D => \count[3]_i_1_n_0\,
      Q => count_reg(3),
      R => \wr_ptr_reg[0]_0\(0)
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_reg[0]_1\(0),
      D => \count[4]_i_3_n_0\,
      Q => count_reg(4),
      R => \wr_ptr_reg[0]_0\(0)
    );
mem_reg_0_15_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => rd_ptr(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => rd_ptr(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => rd_ptr(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => wr_ptr_reg(3 downto 0),
      DIA(1 downto 0) => \sampled_data_reg[7]\(1 downto 0),
      DIB(1 downto 0) => \sampled_data_reg[7]\(3 downto 2),
      DIC(1 downto 0) => \sampled_data_reg[7]\(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => fifo_tx_o(1 downto 0),
      DOB(1 downto 0) => fifo_tx_o(3 downto 2),
      DOC(1 downto 0) => fifo_tx_o(5 downto 4),
      DOD(1 downto 0) => NLW_mem_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => mem_reg_0_15_0_5_i_1_n_0
    );
mem_reg_0_15_0_5_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^e\(0),
      I1 => rst_n,
      I2 => Q(1),
      O => mem_reg_0_15_0_5_i_1_n_0
    );
mem_reg_0_15_6_7: unisim.vcomponents.RAM32X1D
     port map (
      A0 => wr_ptr_reg(0),
      A1 => wr_ptr_reg(1),
      A2 => wr_ptr_reg(2),
      A3 => wr_ptr_reg(3),
      A4 => '0',
      D => \sampled_data_reg[7]\(6),
      DPO => fifo_tx_o(6),
      DPRA0 => rd_ptr(0),
      DPRA1 => rd_ptr(1),
      DPRA2 => rd_ptr(2),
      DPRA3 => rd_ptr(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_6_7_SPO_UNCONNECTED,
      WCLK => clk,
      WE => mem_reg_0_15_0_5_i_1_n_0
    );
\mem_reg_0_15_6_7__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => wr_ptr_reg(0),
      A1 => wr_ptr_reg(1),
      A2 => wr_ptr_reg(2),
      A3 => wr_ptr_reg(3),
      A4 => '0',
      D => \sampled_data_reg[7]\(7),
      DPO => fifo_tx_o(7),
      DPRA0 => rd_ptr(0),
      DPRA1 => rd_ptr(1),
      DPRA2 => rd_ptr(2),
      DPRA3 => rd_ptr(3),
      DPRA4 => '0',
      SPO => \NLW_mem_reg_0_15_6_7__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => mem_reg_0_15_0_5_i_1_n_0
    );
\rd_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_ptr(0),
      O => \rd_ptr[0]_i_1_n_0\
    );
\rd_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr(0),
      I1 => rd_ptr(1),
      O => \rd_ptr[1]_i_1_n_0\
    );
\rd_ptr[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd_ptr(0),
      I1 => rd_ptr(1),
      I2 => rd_ptr(2),
      O => \rd_ptr[2]_i_2_n_0\
    );
\rd_ptr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_ptr(1),
      I1 => rd_ptr(0),
      I2 => rd_ptr(2),
      I3 => rd_ptr(3),
      O => \rd_ptr[3]_i_1_n_0\
    );
\rd_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rd_ptr0,
      D => \rd_ptr[0]_i_1_n_0\,
      Q => rd_ptr(0),
      R => \wr_ptr_reg[0]_0\(0)
    );
\rd_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rd_ptr0,
      D => \rd_ptr[1]_i_1_n_0\,
      Q => rd_ptr(1),
      R => \wr_ptr_reg[0]_0\(0)
    );
\rd_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rd_ptr0,
      D => \rd_ptr[2]_i_2_n_0\,
      Q => rd_ptr(2),
      R => \wr_ptr_reg[0]_0\(0)
    );
\rd_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rd_ptr0,
      D => \rd_ptr[3]_i_1_n_0\,
      Q => rd_ptr(3),
      R => \wr_ptr_reg[0]_0\(0)
    );
start_tx_d_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => tx_busy_pulse,
      I1 => Q(0),
      I2 => \^count_reg[0]_0\,
      I3 => ocr(0),
      O => start_tx
    );
start_tx_d_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      I2 => count_reg(2),
      I3 => count_reg(4),
      I4 => count_reg(3),
      O => \^count_reg[0]_0\
    );
\wr_ptr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_ptr_reg(0),
      O => p_0_in(0)
    );
\wr_ptr[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_ptr_reg(0),
      I1 => wr_ptr_reg(1),
      O => p_0_in(1)
    );
\wr_ptr[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => wr_ptr_reg(0),
      I1 => wr_ptr_reg(1),
      I2 => wr_ptr_reg(2),
      O => p_0_in(2)
    );
\wr_ptr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040004040404040"
    )
        port map (
      I0 => write_data_d1,
      I1 => write_data_d2,
      I2 => Q(0),
      I3 => count_reg(4),
      I4 => count_reg(3),
      I5 => \wr_ptr[3]_i_3_n_0\,
      O => \^e\(0)
    );
\wr_ptr[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => wr_ptr_reg(1),
      I1 => wr_ptr_reg(0),
      I2 => wr_ptr_reg(2),
      I3 => wr_ptr_reg(3),
      O => p_0_in(3)
    );
\wr_ptr[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(1),
      I2 => count_reg(0),
      O => \wr_ptr[3]_i_3_n_0\
    );
\wr_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => p_0_in(0),
      Q => wr_ptr_reg(0),
      R => \wr_ptr_reg[0]_0\(0)
    );
\wr_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => p_0_in(1),
      Q => wr_ptr_reg(1),
      R => \wr_ptr_reg[0]_0\(0)
    );
\wr_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => p_0_in(2),
      Q => wr_ptr_reg(2),
      R => \wr_ptr_reg[0]_0\(0)
    );
\wr_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => p_0_in(3),
      Q => wr_ptr_reg(3),
      R => \wr_ptr_reg[0]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0_piso is
  port (
    tx : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    load_d0_sampled : in STD_LOGIC;
    load_en_sampled : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_uart_0_0_piso : entity is "piso";
end design_1_axi4_uart_0_0_piso;

architecture STRUCTURE of design_1_axi4_uart_0_0_piso is
  signal data_0 : STD_LOGIC;
  signal data_1 : STD_LOGIC;
  signal data_2 : STD_LOGIC;
  signal data_3 : STD_LOGIC;
  signal data_4 : STD_LOGIC;
  signal data_5 : STD_LOGIC;
  signal data_6 : STD_LOGIC;
begin
ff_1_inst: entity work.design_1_axi4_uart_0_0_ff
     port map (
      E(0) => E(0),
      SR(0) => SR(0),
      clk => clk,
      data_0 => data_0,
      tx => tx
    );
ff_2_inst: entity work.design_1_axi4_uart_0_0_ff_0
     port map (
      E(0) => E(0),
      Q(0) => Q(0),
      SR(0) => SR(0),
      clk => clk,
      data_0 => data_0,
      data_1 => data_1,
      load_d0_sampled => load_d0_sampled,
      load_en_sampled => load_en_sampled
    );
ff_3_inst: entity work.design_1_axi4_uart_0_0_ff_1
     port map (
      E(0) => E(0),
      Q(0) => Q(1),
      SR(0) => SR(0),
      clk => clk,
      data_1 => data_1,
      data_2 => data_2,
      load_en_sampled => load_en_sampled
    );
ff_4_inst: entity work.design_1_axi4_uart_0_0_ff_2
     port map (
      E(0) => E(0),
      Q(0) => Q(2),
      SR(0) => SR(0),
      clk => clk,
      data_2 => data_2,
      data_3 => data_3,
      load_en_sampled => load_en_sampled
    );
ff_5_inst: entity work.design_1_axi4_uart_0_0_ff_3
     port map (
      E(0) => E(0),
      Q(0) => Q(3),
      SR(0) => SR(0),
      clk => clk,
      data_3 => data_3,
      data_4 => data_4,
      load_en_sampled => load_en_sampled
    );
ff_6_inst: entity work.design_1_axi4_uart_0_0_ff_4
     port map (
      E(0) => E(0),
      Q(0) => Q(4),
      SR(0) => SR(0),
      clk => clk,
      data_4 => data_4,
      data_5 => data_5,
      load_en_sampled => load_en_sampled
    );
ff_7_inst: entity work.design_1_axi4_uart_0_0_ff_5
     port map (
      E(0) => E(0),
      Q(0) => Q(5),
      SR(0) => SR(0),
      clk => clk,
      data_5 => data_5,
      data_6 => data_6,
      load_en_sampled => load_en_sampled
    );
ff_8_inst: entity work.design_1_axi4_uart_0_0_ff_6
     port map (
      E(0) => E(0),
      Q(1 downto 0) => Q(7 downto 6),
      SR(0) => SR(0),
      clk => clk,
      data_6 => data_6,
      load_en_sampled => load_en_sampled
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0_uart_receiver is
  port (
    stop_bit_err : out STD_LOGIC;
    parity_err : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[0]\ : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    \shift_regs_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \fcr_d_reg[0]\ : out STD_LOGIC;
    rst_n_0 : out STD_LOGIC;
    \data_o_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx : in STD_LOGIC;
    clk : in STD_LOGIC;
    parity_err_o_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \clk_div_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[0]_0\ : in STD_LOGIC;
    ocr : in STD_LOGIC_VECTOR ( 0 to 0 );
    stop_bit_2_check_sampled_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    stop_bit_1_check_sampled_reg_0 : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    \mem_reg_0_15_6_7__0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fifo_rx_full_o : in STD_LOGIC;
    fifo_rx_pop_d : in STD_LOGIC;
    fifo_rx_pop : in STD_LOGIC;
    fifo_rx_empty : in STD_LOGIC;
    \total_data_size_sampled_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_uart_0_0_uart_receiver : entity is "uart_receiver";
end design_1_axi4_uart_0_0_uart_receiver;

architecture STRUCTURE of design_1_axi4_uart_0_0_uart_receiver is
  signal clk_div_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal count_data_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal current_state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal d1 : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_4_in : STD_LOGIC;
  signal parity_bit : STD_LOGIC;
  signal parity_bit_sampled : STD_LOGIC;
  signal parity_check : STD_LOGIC;
  signal parity_check_sampled : STD_LOGIC;
  signal \^parity_err\ : STD_LOGIC;
  signal receive_total_fi_i : STD_LOGIC;
  signal receiver_controller_inst_n_6 : STD_LOGIC;
  signal shift_receive_en : STD_LOGIC;
  signal shift_register_inst_n_0 : STD_LOGIC;
  signal stop_bit_1_check : STD_LOGIC;
  signal stop_bit_1_check_sampled : STD_LOGIC;
  signal stop_bit_2_check : STD_LOGIC;
  signal stop_bit_2_check_sampled : STD_LOGIC;
  signal \^stop_bit_err\ : STD_LOGIC;
  signal stop_bit_err_0 : STD_LOGIC;
  signal sync_n_1 : STD_LOGIC;
  signal sync_n_3 : STD_LOGIC;
  signal total_data_size_sampled : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tx_sync : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clk_div[0]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \clk_div[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \clk_div[2]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \clk_div[3]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \count_data[0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \count_data[1]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \count_data[2]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \count_data[3]_i_3\ : label is "soft_lutpair47";
begin
  parity_err <= \^parity_err\;
  stop_bit_err <= \^stop_bit_err\;
\clk_div[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_div_reg(0),
      O => \p_0_in__1\(0)
    );
\clk_div[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clk_div_reg(0),
      I1 => clk_div_reg(1),
      O => \p_0_in__1\(1)
    );
\clk_div[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => clk_div_reg(0),
      I1 => clk_div_reg(1),
      I2 => clk_div_reg(2),
      O => \p_0_in__1\(2)
    );
\clk_div[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => clk_div_reg(1),
      I1 => clk_div_reg(0),
      I2 => clk_div_reg(2),
      I3 => clk_div_reg(3),
      O => \p_0_in__1\(3)
    );
\clk_div_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \clk_div_reg[0]_0\(0),
      D => \p_0_in__1\(0),
      Q => clk_div_reg(0),
      R => SR(0)
    );
\clk_div_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \clk_div_reg[0]_0\(0),
      D => \p_0_in__1\(1),
      Q => clk_div_reg(1),
      R => SR(0)
    );
\clk_div_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \clk_div_reg[0]_0\(0),
      D => \p_0_in__1\(2),
      Q => clk_div_reg(2),
      R => SR(0)
    );
\clk_div_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \clk_div_reg[0]_0\(0),
      D => \p_0_in__1\(3),
      Q => clk_div_reg(3),
      R => SR(0)
    );
\count_data[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_data_reg(0),
      O => p_0_in(0)
    );
\count_data[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_data_reg(0),
      I1 => count_data_reg(1),
      O => p_0_in(1)
    );
\count_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_data_reg(0),
      I1 => count_data_reg(1),
      I2 => count_data_reg(2),
      O => p_0_in(2)
    );
\count_data[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => count_data_reg(1),
      I1 => count_data_reg(0),
      I2 => count_data_reg(2),
      I3 => count_data_reg(3),
      O => p_0_in(3)
    );
\count_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_in,
      D => p_0_in(0),
      Q => count_data_reg(0),
      R => receiver_controller_inst_n_6
    );
\count_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_in,
      D => p_0_in(1),
      Q => count_data_reg(1),
      R => receiver_controller_inst_n_6
    );
\count_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_in,
      D => p_0_in(2),
      Q => count_data_reg(2),
      R => receiver_controller_inst_n_6
    );
\count_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_in,
      D => p_0_in(3),
      Q => count_data_reg(3),
      R => receiver_controller_inst_n_6
    );
d1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tx_sync,
      Q => d1,
      R => SR(0)
    );
\data_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => receive_total_fi_i,
      D => data(0),
      Q => \data_o_reg[7]_0\(0),
      R => SR(0)
    );
\data_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => receive_total_fi_i,
      D => data(1),
      Q => \data_o_reg[7]_0\(1),
      R => SR(0)
    );
\data_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => receive_total_fi_i,
      D => data(2),
      Q => \data_o_reg[7]_0\(2),
      R => SR(0)
    );
\data_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => receive_total_fi_i,
      D => data(3),
      Q => \data_o_reg[7]_0\(3),
      R => SR(0)
    );
\data_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => receive_total_fi_i,
      D => data(4),
      Q => \data_o_reg[7]_0\(4),
      R => SR(0)
    );
\data_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => receive_total_fi_i,
      D => data(5),
      Q => \data_o_reg[7]_0\(5),
      R => SR(0)
    );
\data_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => receive_total_fi_i,
      D => data(6),
      Q => \data_o_reg[7]_0\(6),
      R => SR(0)
    );
\data_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => receive_total_fi_i,
      D => D(0),
      Q => \data_o_reg[7]_0\(7),
      R => SR(0)
    );
\lsr[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \mem_reg_0_15_6_7__0\(0),
      I1 => \^stop_bit_err\,
      I2 => \^parity_err\,
      O => \fcr_d_reg[0]\
    );
parity_bit_sampled_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => parity_bit,
      Q => parity_bit_sampled,
      R => SR(0)
    );
parity_check_sampled_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => parity_check,
      Q => parity_check_sampled,
      R => SR(0)
    );
parity_err_o_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => shift_register_inst_n_0,
      Q => \^parity_err\,
      R => '0'
    );
receiver_controller_inst: entity work.design_1_axi4_uart_0_0_receiver_controller
     port map (
      E(0) => shift_receive_en,
      \FSM_sequential_current_state_reg[0]_0\ => \FSM_sequential_current_state_reg[0]\,
      \FSM_sequential_current_state_reg[0]_1\ => sync_n_1,
      \FSM_sequential_current_state_reg[0]_2\(0) => parity_err_o_reg_0(3),
      \FSM_sequential_current_state_reg[0]_3\ => sync_n_3,
      \FSM_sequential_current_state_reg[0]_4\ => \FSM_sequential_current_state_reg[0]_0\,
      \FSM_sequential_current_state_reg[0]_5\(0) => SR(0),
      Q(0) => current_state(0),
      SR(0) => receiver_controller_inst_n_6,
      clk => clk,
      \count_data_reg[0]\(0) => \clk_div_reg[0]_0\(0),
      \count_data_reg[0]_0\(3 downto 0) => clk_div_reg(3 downto 0),
      \data_o_reg[0]\(3 downto 0) => total_data_size_sampled(3 downto 0),
      data_valid => data_valid,
      \fcr_d_reg[0]\(0) => E(0),
      fifo_rx_empty => fifo_rx_empty,
      fifo_rx_full_o => fifo_rx_full_o,
      fifo_rx_pop => fifo_rx_pop,
      fifo_rx_pop_d => fifo_rx_pop_d,
      \mem_reg_0_15_6_7__0\(1 downto 0) => \mem_reg_0_15_6_7__0\(1 downto 0),
      ocr(0) => ocr(0),
      p_4_in => p_4_in,
      parity_check => parity_check,
      rst_n => rst_n,
      rst_n_0 => rst_n_0,
      stop_bit_1_check => stop_bit_1_check,
      stop_bit_1_check_sampled_reg => stop_bit_1_check_sampled_reg_0,
      stop_bit_2_check => stop_bit_2_check,
      stop_bit_2_check_sampled_reg(3 downto 0) => count_data_reg(3 downto 0),
      stop_bit_2_check_sampled_reg_0 => stop_bit_2_check_sampled_reg_0,
      stop_bit_2_check_sampled_reg_1(3 downto 0) => Q(3 downto 0),
      \total_data_size_sampled_reg[3]\(0) => receive_total_fi_i
    );
shift_register_inst: entity work.design_1_axi4_uart_0_0_shift_register
     port map (
      D(6 downto 0) => data(6 downto 0),
      E(0) => shift_receive_en,
      Q(0) => \shift_regs_reg[7]\(0),
      SR(0) => SR(0),
      clk => clk,
      parity_bit_sampled => parity_bit_sampled,
      parity_check_sampled => parity_check_sampled,
      parity_err_o_reg(3 downto 2) => parity_err_o_reg_0(4 downto 3),
      parity_err_o_reg(1 downto 0) => parity_err_o_reg_0(1 downto 0),
      rst_n => rst_n,
      rst_n_0 => shift_register_inst_n_0,
      tx_sync => tx_sync
    );
stop_bit_1_check_sampled_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => stop_bit_1_check,
      Q => stop_bit_1_check_sampled,
      R => SR(0)
    );
stop_bit_2_check_sampled_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => stop_bit_2_check,
      Q => stop_bit_2_check_sampled,
      R => SR(0)
    );
stop_bit_err_o_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => stop_bit_err_0,
      Q => \^stop_bit_err\,
      R => SR(0)
    );
sync: entity work.design_1_axi4_uart_0_0_synchronizer_7
     port map (
      E(0) => receive_total_fi_i,
      \FSM_sequential_current_state_reg[0]\ => \FSM_sequential_current_state_reg[0]_0\,
      Q(0) => current_state(0),
      SR(0) => SR(0),
      clk => clk,
      d1 => d1,
      d1_reg_0 => sync_n_1,
      ocr(0) => ocr(0),
      \ocr_d_reg[2]\ => sync_n_3,
      parity_bit => parity_bit,
      parity_check_sampled => parity_check_sampled,
      rx => rx,
      stop_bit_1_check_sampled => stop_bit_1_check_sampled,
      stop_bit_2_check_sampled => stop_bit_2_check_sampled,
      stop_bit_err_0 => stop_bit_err_0,
      stop_bit_err_o_reg(0) => parity_err_o_reg_0(2),
      tx_sync => tx_sync
    );
\total_data_size_sampled_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \total_data_size_sampled_reg[3]_0\(0),
      Q => total_data_size_sampled(0),
      R => SR(0)
    );
\total_data_size_sampled_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \total_data_size_sampled_reg[3]_0\(1),
      Q => total_data_size_sampled(1),
      R => SR(0)
    );
\total_data_size_sampled_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \total_data_size_sampled_reg[3]_0\(2),
      Q => total_data_size_sampled(2),
      R => SR(0)
    );
\total_data_size_sampled_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \total_data_size_sampled_reg[3]_0\(3),
      Q => total_data_size_sampled(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0_uart_rx_top is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    stop_bit_err : out STD_LOGIC;
    parity_err : out STD_LOGIC;
    rts_no_reg_0 : out STD_LOGIC;
    rst_n_0 : out STD_LOGIC;
    fifo_rx_empty : out STD_LOGIC;
    fifo_rx_pop_ready : out STD_LOGIC;
    fifo_rx_triggered : out STD_LOGIC;
    \shift_regs_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \fcr_d_reg[0]\ : out STD_LOGIC;
    data_o_valid_reg_0 : out STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rx : in STD_LOGIC;
    fifo_rx_pop : in STD_LOGIC;
    \rd_ptr_reg[0]\ : in STD_LOGIC;
    rts_no_reg_1 : in STD_LOGIC;
    parity_err_o_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \clk_div_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ocr : in STD_LOGIC_VECTOR ( 0 to 0 );
    stop_bit_2_check_sampled_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    stop_bit_1_check_sampled_reg : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    rts_no_i_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \lsr_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    lsr6_reset : in STD_LOGIC;
    p_38_in : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    rdr_empty_reg : in STD_LOGIC;
    \total_data_size_sampled_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_uart_0_0_uart_rx_top : entity is "uart_rx_top";
end design_1_axi4_uart_0_0_uart_rx_top;

architecture STRUCTURE of design_1_axi4_uart_0_0_uart_rx_top is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data_valid : STD_LOGIC;
  signal data_valid_d : STD_LOGIC;
  signal \^fifo_rx_empty\ : STD_LOGIC;
  signal fifo_rx_full_o : STD_LOGIC;
  signal fifo_rx_pop_d : STD_LOGIC;
  signal \lsr[6]_i_2_n_0\ : STD_LOGIC;
  signal msg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^rts_no_reg_0\ : STD_LOGIC;
  signal uart_rx_inst_n_10 : STD_LOGIC;
  signal uart_rx_inst_n_11 : STD_LOGIC;
  signal uart_rx_inst_n_12 : STD_LOGIC;
  signal uart_rx_inst_n_13 : STD_LOGIC;
  signal uart_rx_inst_n_14 : STD_LOGIC;
  signal uart_rx_inst_n_15 : STD_LOGIC;
  signal uart_rx_inst_n_3 : STD_LOGIC;
  signal uart_rx_inst_n_7 : STD_LOGIC;
  signal uart_rx_inst_n_8 : STD_LOGIC;
  signal uart_rx_inst_n_9 : STD_LOGIC;
  signal wr_ptr0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \lsr[6]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of rdr_empty_i_1 : label is "soft_lutpair51";
begin
  E(0) <= \^e\(0);
  fifo_rx_empty <= \^fifo_rx_empty\;
  rts_no_reg_0 <= \^rts_no_reg_0\;
\data_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_valid_d,
      D => msg(0),
      Q => data_o(0),
      R => SR(0)
    );
\data_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_valid_d,
      D => msg(1),
      Q => data_o(1),
      R => SR(0)
    );
\data_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_valid_d,
      D => msg(2),
      Q => data_o(2),
      R => SR(0)
    );
\data_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_valid_d,
      D => msg(3),
      Q => data_o(3),
      R => SR(0)
    );
\data_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_valid_d,
      D => msg(4),
      Q => data_o(4),
      R => SR(0)
    );
\data_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_valid_d,
      D => msg(5),
      Q => data_o(5),
      R => SR(0)
    );
\data_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_valid_d,
      D => msg(6),
      Q => data_o(6),
      R => SR(0)
    );
\data_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_valid_d,
      D => msg(7),
      Q => data_o(7),
      R => SR(0)
    );
data_o_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data_valid_d,
      Q => \^e\(0),
      R => SR(0)
    );
data_valid_d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data_valid,
      Q => data_valid_d,
      R => SR(0)
    );
fifo_rx_inst: entity work.design_1_axi4_uart_0_0_receiver_fifo
     port map (
      D(7 downto 0) => msg(7 downto 0),
      E(0) => wr_ptr0,
      Q(7) => uart_rx_inst_n_8,
      Q(6) => uart_rx_inst_n_9,
      Q(5) => uart_rx_inst_n_10,
      Q(4) => uart_rx_inst_n_11,
      Q(3) => uart_rx_inst_n_12,
      Q(2) => uart_rx_inst_n_13,
      Q(1) => uart_rx_inst_n_14,
      Q(0) => uart_rx_inst_n_15,
      clk => clk,
      \data_o_reg[1]\ => uart_rx_inst_n_7,
      fifo_rx_empty => \^fifo_rx_empty\,
      fifo_rx_full_o => fifo_rx_full_o,
      fifo_rx_pop => fifo_rx_pop,
      fifo_rx_pop_ready => fifo_rx_pop_ready,
      fifo_rx_triggered => fifo_rx_triggered,
      lsr6_reset => lsr6_reset,
      \lsr_reg[6]\ => \lsr[6]_i_2_n_0\,
      \lsr_reg[6]_0\ => uart_rx_inst_n_3,
      \lsr_reg[6]_1\(0) => \lsr_reg[6]\(0),
      p_38_in => p_38_in,
      \rd_ptr_reg[0]_0\ => \rd_ptr_reg[0]\,
      rst_n => rst_n,
      rst_n_0 => rst_n_0,
      rts_no_i_2(2 downto 1) => rts_no_i_2(3 downto 2),
      rts_no_i_2(0) => rts_no_i_2(0)
    );
fifo_rx_pop_d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fifo_rx_pop,
      Q => fifo_rx_pop_d,
      R => SR(0)
    );
\lsr[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rdr_empty_reg,
      I1 => \^e\(0),
      I2 => rts_no_i_2(0),
      O => \lsr[6]_i_2_n_0\
    );
rdr_empty_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \^e\(0),
      I1 => p_38_in,
      I2 => rdr_empty_reg,
      O => data_o_valid_reg_0
    );
rts_no_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rts_no_reg_1,
      Q => \^rts_no_reg_0\,
      R => '0'
    );
uart_rx_inst: entity work.design_1_axi4_uart_0_0_uart_receiver
     port map (
      D(0) => D(0),
      E(0) => wr_ptr0,
      \FSM_sequential_current_state_reg[0]\ => uart_rx_inst_n_3,
      \FSM_sequential_current_state_reg[0]_0\ => \^rts_no_reg_0\,
      Q(3 downto 0) => Q(3 downto 0),
      SR(0) => SR(0),
      clk => clk,
      \clk_div_reg[0]_0\(0) => \clk_div_reg[0]\(0),
      \data_o_reg[7]_0\(7) => uart_rx_inst_n_8,
      \data_o_reg[7]_0\(6) => uart_rx_inst_n_9,
      \data_o_reg[7]_0\(5) => uart_rx_inst_n_10,
      \data_o_reg[7]_0\(4) => uart_rx_inst_n_11,
      \data_o_reg[7]_0\(3) => uart_rx_inst_n_12,
      \data_o_reg[7]_0\(2) => uart_rx_inst_n_13,
      \data_o_reg[7]_0\(1) => uart_rx_inst_n_14,
      \data_o_reg[7]_0\(0) => uart_rx_inst_n_15,
      data_valid => data_valid,
      \fcr_d_reg[0]\ => \fcr_d_reg[0]\,
      fifo_rx_empty => \^fifo_rx_empty\,
      fifo_rx_full_o => fifo_rx_full_o,
      fifo_rx_pop => fifo_rx_pop,
      fifo_rx_pop_d => fifo_rx_pop_d,
      \mem_reg_0_15_6_7__0\(1 downto 0) => rts_no_i_2(1 downto 0),
      ocr(0) => ocr(0),
      parity_err => parity_err,
      parity_err_o_reg_0(4 downto 0) => parity_err_o_reg(4 downto 0),
      rst_n => rst_n,
      rst_n_0 => uart_rx_inst_n_7,
      rx => rx,
      \shift_regs_reg[7]\(0) => \shift_regs_reg[7]\(0),
      stop_bit_1_check_sampled_reg_0 => stop_bit_1_check_sampled_reg,
      stop_bit_2_check_sampled_reg_0 => stop_bit_2_check_sampled_reg,
      stop_bit_err => stop_bit_err,
      \total_data_size_sampled_reg[3]_0\(3 downto 0) => \total_data_size_sampled_reg[3]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0_uart_transmitter is
  port (
    tx : out STD_LOGIC;
    \FSM_sequential_current_state_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rd_ptr0 : out STD_LOGIC;
    rst_n_0 : out STD_LOGIC;
    lsr0_set : out STD_LOGIC;
    \data_size_sampled_reg[1]_0\ : out STD_LOGIC;
    \data_size_sampled_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_size_sampled_reg[1]_1\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    start_tx : in STD_LOGIC;
    clk : in STD_LOGIC;
    baud_o : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_tx_empty : in STD_LOGIC;
    ocr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tx_busy_pulse : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    tx_busy : in STD_LOGIC;
    cts_sync : in STD_LOGIC;
    \FSM_sequential_current_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_d0_sampled_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \cts_n__0\ : in STD_LOGIC;
    p_2_in : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \data_size_sampled_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \total_data_sampled_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_uart_0_0_uart_transmitter : entity is "uart_transmitter";
end design_1_axi4_uart_0_0_uart_transmitter;

architecture STRUCTURE of design_1_axi4_uart_0_0_uart_transmitter is
  signal cnt_data_trans_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^data_size_sampled_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal load_d0 : STD_LOGIC;
  signal load_d0_sampled : STD_LOGIC;
  signal load_d0_sampled_i_2_n_0 : STD_LOGIC;
  signal load_d0_sampled_i_3_n_0 : STD_LOGIC;
  signal load_d0_sampled_i_4_n_0 : STD_LOGIC;
  signal load_d0_sampled_i_5_n_0 : STD_LOGIC;
  signal load_d0_sampled_i_6_n_0 : STD_LOGIC;
  signal load_en : STD_LOGIC;
  signal load_en_sampled : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sampled_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shift_en : STD_LOGIC;
  signal tick_d : STD_LOGIC;
  signal total_data_sampled : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal trans_data_fi : STD_LOGIC;
  signal trans_data_fi_sampled : STD_LOGIC;
  signal trans_data_fi_sampled_i_2_n_0 : STD_LOGIC;
  signal trans_data_fi_sampled_i_3_n_0 : STD_LOGIC;
  signal trans_stop_fi : STD_LOGIC;
  signal trans_stop_fi_sampled : STD_LOGIC;
  signal trans_stop_fi_sampled_i_2_n_0 : STD_LOGIC;
  signal transmitter_controller_inst_n_5 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_data_trans[0]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \cnt_data_trans[1]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \cnt_data_trans[2]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \cnt_data_trans[3]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of load_d0_sampled_i_2 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of load_d0_sampled_i_4 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of load_d0_sampled_i_5 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of stop_bit_1_check_sampled_i_3 : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of stop_bit_2_check_sampled_i_3 : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of trans_stop_fi_sampled_i_2 : label is "soft_lutpair65";
begin
  \data_size_sampled_reg[3]_0\(3 downto 0) <= \^data_size_sampled_reg[3]_0\(3 downto 0);
\cnt_data_trans[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_data_trans_reg(0),
      O => \p_0_in__0\(0)
    );
\cnt_data_trans[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt_data_trans_reg(0),
      I1 => cnt_data_trans_reg(1),
      O => \p_0_in__0\(1)
    );
\cnt_data_trans[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cnt_data_trans_reg(0),
      I1 => cnt_data_trans_reg(1),
      I2 => cnt_data_trans_reg(2),
      O => \p_0_in__0\(2)
    );
\cnt_data_trans[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cnt_data_trans_reg(1),
      I1 => cnt_data_trans_reg(0),
      I2 => cnt_data_trans_reg(2),
      I3 => cnt_data_trans_reg(3),
      O => \p_0_in__0\(3)
    );
\cnt_data_trans_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_en,
      D => \p_0_in__0\(0),
      Q => cnt_data_trans_reg(0),
      R => transmitter_controller_inst_n_5
    );
\cnt_data_trans_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_en,
      D => \p_0_in__0\(1),
      Q => cnt_data_trans_reg(1),
      R => transmitter_controller_inst_n_5
    );
\cnt_data_trans_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_en,
      D => \p_0_in__0\(2),
      Q => cnt_data_trans_reg(2),
      R => transmitter_controller_inst_n_5
    );
\cnt_data_trans_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_en,
      D => \p_0_in__0\(3),
      Q => cnt_data_trans_reg(3),
      R => transmitter_controller_inst_n_5
    );
\data_size_sampled_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_size_sampled_reg[3]_1\(0),
      Q => \^data_size_sampled_reg[3]_0\(0),
      R => SR(0)
    );
\data_size_sampled_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_size_sampled_reg[3]_1\(1),
      Q => \^data_size_sampled_reg[3]_0\(1),
      R => SR(0)
    );
\data_size_sampled_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_size_sampled_reg[3]_1\(2),
      Q => \^data_size_sampled_reg[3]_0\(2),
      R => SR(0)
    );
\data_size_sampled_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_size_sampled_reg[3]_1\(3),
      Q => \^data_size_sampled_reg[3]_0\(3),
      R => SR(0)
    );
load_d0_sampled_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAAEAAAAAAAA"
    )
        port map (
      I0 => load_d0_sampled_i_2_n_0,
      I1 => trans_data_fi,
      I2 => load_d0_sampled_reg_0(3),
      I3 => load_d0_sampled_i_3_n_0,
      I4 => load_d0_sampled_i_4_n_0,
      I5 => load_d0_sampled_reg_0(2),
      O => load_d0
    );
load_d0_sampled_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => cnt_data_trans_reg(1),
      I1 => cnt_data_trans_reg(0),
      I2 => cnt_data_trans_reg(3),
      I3 => cnt_data_trans_reg(2),
      O => load_d0_sampled_i_2_n_0
    );
load_d0_sampled_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"966900003CC30000"
    )
        port map (
      I0 => sampled_data(7),
      I1 => load_d0_sampled_i_5_n_0,
      I2 => sampled_data(6),
      I3 => load_d0_sampled_i_6_n_0,
      I4 => load_d0_sampled_reg_0(1),
      I5 => load_d0_sampled_reg_0(0),
      O => load_d0_sampled_i_3_n_0
    );
load_d0_sampled_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000069C3"
    )
        port map (
      I0 => sampled_data(5),
      I1 => sampled_data(4),
      I2 => load_d0_sampled_i_6_n_0,
      I3 => load_d0_sampled_reg_0(0),
      I4 => load_d0_sampled_reg_0(1),
      O => load_d0_sampled_i_4_n_0
    );
load_d0_sampled_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sampled_data(5),
      I1 => sampled_data(4),
      O => load_d0_sampled_i_5_n_0
    );
load_d0_sampled_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => sampled_data(2),
      I1 => sampled_data(3),
      I2 => sampled_data(0),
      I3 => sampled_data(1),
      O => load_d0_sampled_i_6_n_0
    );
load_d0_sampled_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => load_d0,
      Q => load_d0_sampled,
      R => SR(0)
    );
load_en_sampled_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => cnt_data_trans_reg(1),
      I1 => cnt_data_trans_reg(0),
      I2 => cnt_data_trans_reg(3),
      I3 => cnt_data_trans_reg(2),
      O => load_en
    );
load_en_sampled_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => load_en,
      Q => load_en_sampled,
      R => SR(0)
    );
piso_inst: entity work.design_1_axi4_uart_0_0_piso
     port map (
      E(0) => shift_en,
      Q(7 downto 0) => sampled_data(7 downto 0),
      SR(0) => SR(0),
      clk => clk,
      load_d0_sampled => load_d0_sampled,
      load_en_sampled => load_en_sampled,
      tx => tx
    );
\sampled_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(0),
      Q => sampled_data(0),
      R => SR(0)
    );
\sampled_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(1),
      Q => sampled_data(1),
      R => SR(0)
    );
\sampled_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(2),
      Q => sampled_data(2),
      R => SR(0)
    );
\sampled_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(3),
      Q => sampled_data(3),
      R => SR(0)
    );
\sampled_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(4),
      Q => sampled_data(4),
      R => SR(0)
    );
\sampled_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(5),
      Q => sampled_data(5),
      R => SR(0)
    );
\sampled_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(6),
      Q => sampled_data(6),
      R => SR(0)
    );
\sampled_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(7),
      Q => sampled_data(7),
      R => SR(0)
    );
stop_bit_1_check_sampled_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^data_size_sampled_reg[3]_0\(1),
      I1 => \^data_size_sampled_reg[3]_0\(0),
      I2 => load_d0_sampled_reg_0(2),
      O => \data_size_sampled_reg[1]_1\
    );
stop_bit_2_check_sampled_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^data_size_sampled_reg[3]_0\(1),
      I1 => load_d0_sampled_reg_0(2),
      I2 => \^data_size_sampled_reg[3]_0\(0),
      O => \data_size_sampled_reg[1]_0\
    );
tick_d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => baud_o,
      Q => tick_d,
      R => SR(0)
    );
\total_data_sampled_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \total_data_sampled_reg[3]_0\(0),
      Q => total_data_sampled(0),
      R => SR(0)
    );
\total_data_sampled_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \total_data_sampled_reg[3]_0\(1),
      Q => total_data_sampled(1),
      R => SR(0)
    );
\total_data_sampled_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \total_data_sampled_reg[3]_0\(2),
      Q => total_data_sampled(2),
      R => SR(0)
    );
\total_data_sampled_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \total_data_sampled_reg[3]_0\(3),
      Q => total_data_sampled(3),
      R => SR(0)
    );
trans_data_fi_sampled_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0480804040080804"
    )
        port map (
      I0 => cnt_data_trans_reg(2),
      I1 => trans_data_fi_sampled_i_2_n_0,
      I2 => cnt_data_trans_reg(3),
      I3 => trans_data_fi_sampled_i_3_n_0,
      I4 => \^data_size_sampled_reg[3]_0\(2),
      I5 => \^data_size_sampled_reg[3]_0\(3),
      O => trans_data_fi
    );
trans_data_fi_sampled_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0188442211884422"
    )
        port map (
      I0 => cnt_data_trans_reg(0),
      I1 => cnt_data_trans_reg(1),
      I2 => \^data_size_sampled_reg[3]_0\(2),
      I3 => \^data_size_sampled_reg[3]_0\(0),
      I4 => \^data_size_sampled_reg[3]_0\(1),
      I5 => \^data_size_sampled_reg[3]_0\(3),
      O => trans_data_fi_sampled_i_2_n_0
    );
trans_data_fi_sampled_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_size_sampled_reg[3]_0\(1),
      I1 => \^data_size_sampled_reg[3]_0\(0),
      O => trans_data_fi_sampled_i_3_n_0
    );
trans_data_fi_sampled_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => trans_data_fi,
      Q => trans_data_fi_sampled,
      R => SR(0)
    );
trans_stop_fi_sampled_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => total_data_sampled(3),
      I1 => cnt_data_trans_reg(3),
      I2 => total_data_sampled(2),
      I3 => cnt_data_trans_reg(2),
      I4 => trans_stop_fi_sampled_i_2_n_0,
      O => trans_stop_fi
    );
trans_stop_fi_sampled_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cnt_data_trans_reg(0),
      I1 => total_data_sampled(0),
      I2 => cnt_data_trans_reg(1),
      I3 => total_data_sampled(1),
      O => trans_stop_fi_sampled_i_2_n_0
    );
trans_stop_fi_sampled_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => trans_stop_fi,
      Q => trans_stop_fi_sampled,
      R => SR(0)
    );
transmitter_controller_inst: entity work.design_1_axi4_uart_0_0_transmitter_controller
     port map (
      E(0) => E(0),
      \FSM_sequential_current_state_reg[0]_0\(0) => transmitter_controller_inst_n_5,
      \FSM_sequential_current_state_reg[0]_1\(0) => load_d0_sampled_reg_0(2),
      \FSM_sequential_current_state_reg[1]_0\(0) => \FSM_sequential_current_state_reg[1]\(0),
      \FSM_sequential_current_state_reg[2]_0\(0) => \FSM_sequential_current_state_reg[2]\(0),
      \FSM_sequential_current_state_reg[2]_1\(0) => shift_en,
      Q(0) => Q(0),
      SR(0) => SR(0),
      baud_o => baud_o,
      clk => clk,
      \cts_n__0\ => \cts_n__0\,
      cts_sync => cts_sync,
      fifo_tx_empty => fifo_tx_empty,
      lsr0_set => lsr0_set,
      ocr(1 downto 0) => ocr(1 downto 0),
      p_2_in => p_2_in,
      rd_ptr0 => rd_ptr0,
      rst_n => rst_n,
      rst_n_0 => rst_n_0,
      start_tx => start_tx,
      tick_d => tick_d,
      trans_data_fi_sampled => trans_data_fi_sampled,
      trans_stop_fi_sampled => trans_stop_fi_sampled,
      tx_busy => tx_busy,
      tx_busy_pulse => tx_busy_pulse
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0_uart_tx_top is
  port (
    fifo_tx_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cts_sync : out STD_LOGIC;
    tx : out STD_LOGIC;
    fifo_tx_empty : out STD_LOGIC;
    lsr0_set : out STD_LOGIC;
    \data_size_sampled_reg[1]\ : out STD_LOGIC;
    \data_size_sampled_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_size_sampled_reg[1]_0\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    \sampled_data_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    baud_o : in STD_LOGIC;
    cpu_write_tdr_d : in STD_LOGIC;
    cts_n : in STD_LOGIC;
    \wr_ptr_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ocr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rst_n : in STD_LOGIC;
    \FSM_sequential_current_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_d0_sampled_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_2_in : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \data_size_sampled_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \total_data_sampled_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_uart_0_0_uart_tx_top : entity is "uart_tx_top";
end design_1_axi4_uart_0_0_uart_tx_top;

architecture STRUCTURE of design_1_axi4_uart_0_0_uart_tx_top is
  signal \cts_n__0\ : STD_LOGIC;
  signal \^cts_sync\ : STD_LOGIC;
  signal \^fifo_tx_empty\ : STD_LOGIC;
  signal negedge_tx_busy : STD_LOGIC;
  signal rd_ptr0 : STD_LOGIC;
  signal start_tx : STD_LOGIC;
  signal tx_busy : STD_LOGIC;
  signal tx_busy_d : STD_LOGIC;
  signal tx_busy_pulse : STD_LOGIC;
  signal uart_tx_inst_n_1 : STD_LOGIC;
  signal uart_tx_inst_n_3 : STD_LOGIC;
  signal wr_ptr0 : STD_LOGIC;
  signal write_data_d1 : STD_LOGIC;
  signal write_data_d2 : STD_LOGIC;
begin
  cts_sync <= \^cts_sync\;
  fifo_tx_empty <= \^fifo_tx_empty\;
fifo_tx_inst: entity work.design_1_axi4_uart_0_0_transmitter_fifo
     port map (
      E(0) => wr_ptr0,
      Q(1 downto 0) => Q(1 downto 0),
      clk => clk,
      \count_reg[0]_0\ => \^fifo_tx_empty\,
      \count_reg[0]_1\(0) => uart_tx_inst_n_1,
      fifo_tx_o(7 downto 0) => fifo_tx_o(7 downto 0),
      ocr(0) => ocr(1),
      rd_ptr0 => rd_ptr0,
      rst_n => rst_n,
      \sampled_data_reg[7]\(7 downto 0) => \sampled_data_reg[7]\(7 downto 0),
      start_tx => start_tx,
      tx_busy_pulse => tx_busy_pulse,
      \wr_ptr_reg[0]_0\(0) => \wr_ptr_reg[0]\(0),
      write_data_d1 => write_data_d1,
      write_data_d2 => write_data_d2
    );
inst_synchronizer: entity work.design_1_axi4_uart_0_0_synchronizer
     port map (
      \FSM_sequential_current_state[0]_i_2__0\(0) => \FSM_sequential_current_state_reg[1]\(0),
      SR(0) => SR(0),
      clk => clk,
      cts_n => cts_n,
      \cts_n__0\ => \cts_n__0\,
      sync_reg_0 => \^cts_sync\
    );
tx_busy_d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tx_busy,
      Q => tx_busy_d,
      R => SR(0)
    );
tx_busy_pulse_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tx_busy_d,
      I1 => tx_busy,
      O => negedge_tx_busy
    );
tx_busy_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => negedge_tx_busy,
      Q => tx_busy_pulse,
      R => SR(0)
    );
tx_busy_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => uart_tx_inst_n_3,
      Q => tx_busy,
      R => '0'
    );
uart_tx_inst: entity work.design_1_axi4_uart_0_0_uart_transmitter
     port map (
      D(7 downto 0) => D(7 downto 0),
      E(0) => wr_ptr0,
      \FSM_sequential_current_state_reg[1]\(0) => \FSM_sequential_current_state_reg[1]\(0),
      \FSM_sequential_current_state_reg[2]\(0) => uart_tx_inst_n_1,
      Q(0) => Q(0),
      SR(0) => SR(0),
      baud_o => baud_o,
      clk => clk,
      \cts_n__0\ => \cts_n__0\,
      cts_sync => \^cts_sync\,
      \data_size_sampled_reg[1]_0\ => \data_size_sampled_reg[1]\,
      \data_size_sampled_reg[1]_1\ => \data_size_sampled_reg[1]_0\,
      \data_size_sampled_reg[3]_0\(3 downto 0) => \data_size_sampled_reg[3]\(3 downto 0),
      \data_size_sampled_reg[3]_1\(3 downto 0) => \data_size_sampled_reg[3]_0\(3 downto 0),
      fifo_tx_empty => \^fifo_tx_empty\,
      load_d0_sampled_reg_0(3 downto 0) => load_d0_sampled_reg(3 downto 0),
      lsr0_set => lsr0_set,
      ocr(1 downto 0) => ocr(1 downto 0),
      p_2_in => p_2_in,
      rd_ptr0 => rd_ptr0,
      rst_n => rst_n,
      rst_n_0 => uart_tx_inst_n_3,
      start_tx => start_tx,
      \total_data_sampled_reg[3]_0\(3 downto 0) => \total_data_sampled_reg[3]\(3 downto 0),
      tx => tx,
      tx_busy => tx_busy,
      tx_busy_pulse => tx_busy_pulse
    );
write_data_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cpu_write_tdr_d,
      Q => write_data_d1,
      R => SR(0)
    );
write_data_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => write_data_d1,
      Q => write_data_d2,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0_axi4_uart is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    irq : out STD_LOGIC;
    cts_n : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC;
    rts_n : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_uart_0_0_axi4_uart : entity is "axi4_uart";
  attribute SAMPLING_RATE : integer;
  attribute SAMPLING_RATE of design_1_axi4_uart_0_0_axi4_uart : entity is 16;
  attribute SYSTEM_FREQUENCY : integer;
  attribute SYSTEM_FREQUENCY of design_1_axi4_uart_0_0_axi4_uart : entity is 50000000;
end design_1_axi4_uart_0_0_axi4_uart;

architecture STRUCTURE of design_1_axi4_uart_0_0_axi4_uart is
  signal \<const0>\ : STD_LOGIC;
  signal BIT_PERIOD_TX : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal baud_o : STD_LOGIC;
  signal cpu_write_tdr : STD_LOGIC;
  signal cpu_write_tdr_d : STD_LOGIC;
  signal cts_sync : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \data__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_o_valid : STD_LOGIC;
  signal data_size : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal data_size_sampled : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal fcr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fifo_rx_empty : STD_LOGIC;
  signal fifo_rx_pop : STD_LOGIC;
  signal fifo_rx_pop_ready : STD_LOGIC;
  signal fifo_rx_trig_level_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal fifo_rx_triggered : STD_LOGIC;
  signal fifo_tx_empty : STD_LOGIC;
  signal \fifo_tx_inst/count\ : STD_LOGIC;
  signal fifo_tx_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hcr : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \iir_reg_n_0_[0]\ : STD_LOGIC;
  signal \iir_reg_n_0_[1]\ : STD_LOGIC;
  signal \iir_reg_n_0_[2]\ : STD_LOGIC;
  signal inst_axi4_lite_n_0 : STD_LOGIC;
  signal inst_axi4_lite_n_1 : STD_LOGIC;
  signal inst_axi4_lite_n_112 : STD_LOGIC;
  signal inst_axi4_lite_n_113 : STD_LOGIC;
  signal inst_axi4_lite_n_114 : STD_LOGIC;
  signal inst_axi4_lite_n_2 : STD_LOGIC;
  signal inst_axi4_lite_n_24 : STD_LOGIC;
  signal inst_axi4_lite_n_25 : STD_LOGIC;
  signal inst_axi4_lite_n_26 : STD_LOGIC;
  signal inst_axi4_lite_n_3 : STD_LOGIC;
  signal inst_axi4_lite_n_32 : STD_LOGIC;
  signal inst_axi4_lite_n_34 : STD_LOGIC;
  signal inst_axi4_lite_n_67 : STD_LOGIC;
  signal inst_axi4_lite_n_68 : STD_LOGIC;
  signal inst_axi4_lite_n_69 : STD_LOGIC;
  signal inst_axi4_lite_n_70 : STD_LOGIC;
  signal inst_axi4_lite_n_75 : STD_LOGIC;
  signal inst_axi4_lite_n_79 : STD_LOGIC;
  signal inst_axi4_lite_n_83 : STD_LOGIC;
  signal inst_axi4_lite_n_84 : STD_LOGIC;
  signal inst_axi4_lite_n_85 : STD_LOGIC;
  signal inst_axi4_lite_n_86 : STD_LOGIC;
  signal inst_axi4_lite_n_88 : STD_LOGIC;
  signal lcr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal lsr0_set : STD_LOGIC;
  signal lsr6_reset : STD_LOGIC;
  signal \lsr_reg_n_0_[0]\ : STD_LOGIC;
  signal \lsr_reg_n_0_[1]\ : STD_LOGIC;
  signal \lsr_reg_n_0_[2]\ : STD_LOGIC;
  signal \lsr_reg_n_0_[3]\ : STD_LOGIC;
  signal \lsr_reg_n_0_[4]\ : STD_LOGIC;
  signal \lsr_reg_n_0_[5]\ : STD_LOGIC;
  signal ocr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_38_in : STD_LOGIC;
  signal parity_err : STD_LOGIC;
  signal rdr_empty_reg_n_0 : STD_LOGIC;
  signal \rdr_reg_n_0_[0]\ : STD_LOGIC;
  signal \rdr_reg_n_0_[1]\ : STD_LOGIC;
  signal \rdr_reg_n_0_[2]\ : STD_LOGIC;
  signal \rdr_reg_n_0_[3]\ : STD_LOGIC;
  signal \rdr_reg_n_0_[4]\ : STD_LOGIC;
  signal \rdr_reg_n_0_[5]\ : STD_LOGIC;
  signal \rdr_reg_n_0_[6]\ : STD_LOGIC;
  signal \rdr_reg_n_0_[7]\ : STD_LOGIC;
  signal \^rts_n\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \s_axi_rdata_prev_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_axi_rdata_prev_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_axi_rdata_prev_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_axi_rdata_prev_reg_n_0_[5]\ : STD_LOGIC;
  signal shift_regs : STD_LOGIC_VECTOR ( 7 to 7 );
  signal stop_bit_err : STD_LOGIC;
  signal tdr_d : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tdr_empty_reg_n_0 : STD_LOGIC;
  signal tick_rx : STD_LOGIC;
  signal total_data_size : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal uart_rx_top_inst_n_10 : STD_LOGIC;
  signal uart_rx_top_inst_n_4 : STD_LOGIC;
  signal uart_rx_top_inst_n_9 : STD_LOGIC;
  signal \uart_tx_inst/transmitter_controller_inst/p_2_in\ : STD_LOGIC;
  signal uart_tx_top_inst_n_12 : STD_LOGIC;
  signal uart_tx_top_inst_n_17 : STD_LOGIC;
begin
  rts_n <= \^rts_n\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
baud_gen_inst: entity work.design_1_axi4_uart_0_0_baud_generator
     port map (
      BIT_PERIOD_TX(13 downto 0) => BIT_PERIOD_TX(13 downto 0),
      E(0) => tick_rx,
      Q(2) => inst_axi4_lite_n_24,
      Q(1) => inst_axi4_lite_n_25,
      Q(0) => inst_axi4_lite_n_26,
      SR(0) => inst_axi4_lite_n_75,
      baud_o => baud_o,
      clk => clk,
      rst_n => rst_n
    );
cpu_write_tdr_d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cpu_write_tdr,
      Q => cpu_write_tdr_d,
      R => inst_axi4_lite_n_75
    );
fifo_rx_pop_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fifo_rx_pop_ready,
      Q => fifo_rx_pop,
      R => inst_axi4_lite_n_75
    );
\iir_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => inst_axi4_lite_n_2,
      Q => \iir_reg_n_0_[0]\,
      R => '0'
    );
\iir_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => inst_axi4_lite_n_1,
      Q => \iir_reg_n_0_[1]\,
      R => '0'
    );
\iir_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => inst_axi4_lite_n_0,
      Q => \iir_reg_n_0_[2]\,
      R => '0'
    );
inst_axi4_lite: entity work.design_1_axi4_uart_0_0_axi4_lite
     port map (
      BIT_PERIOD_TX(13 downto 0) => BIT_PERIOD_TX(13 downto 0),
      D(2) => \iir_reg_n_0_[2]\,
      D(1) => \iir_reg_n_0_[1]\,
      D(0) => \iir_reg_n_0_[0]\,
      \FSM_onehot_rd_state_reg[2]_0\(1) => s_axi_rvalid,
      \FSM_onehot_rd_state_reg[2]_0\(0) => s_axi_arready,
      \FSM_onehot_wr_state_reg[3]_0\(2) => s_axi_bvalid,
      \FSM_onehot_wr_state_reg[3]_0\(1) => s_axi_wready,
      \FSM_onehot_wr_state_reg[3]_0\(0) => s_axi_awready,
      Q(4 downto 3) => fifo_rx_trig_level_i(1 downto 0),
      Q(2 downto 0) => fcr(2 downto 0),
      SR(0) => inst_axi4_lite_n_75,
      clk => clk,
      cpu_write_tdr => cpu_write_tdr,
      cpu_write_tdr_d => cpu_write_tdr_d,
      cpu_write_tdr_d_reg => inst_axi4_lite_n_114,
      cts_sync => cts_sync,
      \data_o_reg[7]\(0) => shift_regs(7),
      \fcr_d_reg[1]_0\ => inst_axi4_lite_n_67,
      \fcr_d_reg[2]_0\(0) => \fifo_tx_inst/count\,
      fifo_rx_empty => fifo_rx_empty,
      fifo_rx_triggered => fifo_rx_triggered,
      fifo_tx_empty => fifo_tx_empty,
      fifo_tx_o(7 downto 0) => fifo_tx_o(7 downto 0),
      \hcr_d_reg[0]_0\(0) => hcr(0),
      \lcr_d_reg[0]_0\(3) => inst_axi4_lite_n_88,
      \lcr_d_reg[0]_0\(2 downto 0) => data_size(2 downto 0),
      \lcr_d_reg[2]_0\(3) => inst_axi4_lite_n_79,
      \lcr_d_reg[2]_0\(2 downto 0) => total_data_size(2 downto 0),
      \lcr_d_reg[2]_1\(3) => inst_axi4_lite_n_83,
      \lcr_d_reg[2]_1\(2) => inst_axi4_lite_n_84,
      \lcr_d_reg[2]_1\(1) => inst_axi4_lite_n_85,
      \lcr_d_reg[2]_1\(0) => inst_axi4_lite_n_86,
      \lcr_d_reg[7]_0\(7) => inst_axi4_lite_n_24,
      \lcr_d_reg[7]_0\(6) => inst_axi4_lite_n_25,
      \lcr_d_reg[7]_0\(5) => inst_axi4_lite_n_26,
      \lcr_d_reg[7]_0\(4 downto 0) => lcr(4 downto 0),
      lsr0_set => lsr0_set,
      lsr6_reset => lsr6_reset,
      \lsr_reg[0]_0\ => inst_axi4_lite_n_34,
      \lsr_reg[1]_0\ => rdr_empty_reg_n_0,
      \lsr_reg[5]_0\ => uart_rx_top_inst_n_9,
      \lsr_reg[6]_0\(6) => p_2_in,
      \lsr_reg[6]_0\(5) => \lsr_reg_n_0_[5]\,
      \lsr_reg[6]_0\(4) => \lsr_reg_n_0_[4]\,
      \lsr_reg[6]_0\(3) => \lsr_reg_n_0_[3]\,
      \lsr_reg[6]_0\(2) => \lsr_reg_n_0_[2]\,
      \lsr_reg[6]_0\(1) => \lsr_reg_n_0_[1]\,
      \lsr_reg[6]_0\(0) => \lsr_reg_n_0_[0]\,
      \lsr_reg[6]_1\(4) => p_0_in,
      \lsr_reg[6]_1\(3) => \s_axi_rdata_prev_reg_n_0_[5]\,
      \lsr_reg[6]_1\(2) => \s_axi_rdata_prev_reg_n_0_[3]\,
      \lsr_reg[6]_1\(1) => \s_axi_rdata_prev_reg_n_0_[2]\,
      \lsr_reg[6]_1\(0) => \s_axi_rdata_prev_reg_n_0_[0]\,
      ocr(2 downto 0) => ocr(2 downto 0),
      p_2_in => \uart_tx_inst/transmitter_controller_inst/p_2_in\,
      p_38_in => p_38_in,
      parity_err => parity_err,
      \rdr_reg[7]_0\(7) => \rdr_reg_n_0_[7]\,
      \rdr_reg[7]_0\(6) => \rdr_reg_n_0_[6]\,
      \rdr_reg[7]_0\(5) => \rdr_reg_n_0_[5]\,
      \rdr_reg[7]_0\(4) => \rdr_reg_n_0_[4]\,
      \rdr_reg[7]_0\(3) => \rdr_reg_n_0_[3]\,
      \rdr_reg[7]_0\(2) => \rdr_reg_n_0_[2]\,
      \rdr_reg[7]_0\(1) => \rdr_reg_n_0_[1]\,
      \rdr_reg[7]_0\(0) => \rdr_reg_n_0_[0]\,
      rst_n => rst_n,
      rst_n_0 => inst_axi4_lite_n_0,
      rst_n_1 => inst_axi4_lite_n_1,
      rst_n_2 => inst_axi4_lite_n_2,
      rst_n_3 => inst_axi4_lite_n_68,
      rst_n_4 => inst_axi4_lite_n_69,
      rst_n_5 => inst_axi4_lite_n_70,
      rst_n_6 => inst_axi4_lite_n_112,
      rst_n_7 => inst_axi4_lite_n_113,
      rts_no_reg => inst_axi4_lite_n_32,
      rts_no_reg_0 => \^rts_n\,
      s_axi_araddr(11 downto 0) => s_axi_araddr(11 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(11 downto 0) => s_axi_awaddr(11 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_rdata(31 downto 0) => \^s_axi_rdata\(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      \shift_regs_reg[7]\(0) => data(7),
      stop_bit_err => stop_bit_err,
      \tdr_d_reg[7]_0\(7) => inst_axi4_lite_n_3,
      \tdr_d_reg[7]_0\(6 downto 0) => \data__0\(6 downto 0),
      \tdr_d_reg[7]_1\(7 downto 0) => tdr_d(7 downto 0),
      tdr_empty_reg => tdr_empty_reg_n_0
    );
irq_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \iir_reg_n_0_[0]\,
      O => irq
    );
\lsr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => inst_axi4_lite_n_34,
      Q => \lsr_reg_n_0_[0]\,
      R => '0'
    );
\lsr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => inst_axi4_lite_n_113,
      Q => \lsr_reg_n_0_[1]\,
      R => '0'
    );
\lsr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => inst_axi4_lite_n_68,
      Q => \lsr_reg_n_0_[2]\,
      R => '0'
    );
\lsr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => inst_axi4_lite_n_69,
      Q => \lsr_reg_n_0_[3]\,
      R => '0'
    );
\lsr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => inst_axi4_lite_n_112,
      Q => \lsr_reg_n_0_[4]\,
      R => '0'
    );
\lsr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => inst_axi4_lite_n_70,
      Q => \lsr_reg_n_0_[5]\,
      R => '0'
    );
\lsr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => uart_rx_top_inst_n_4,
      Q => p_2_in,
      R => '0'
    );
rdr_empty_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => uart_rx_top_inst_n_10,
      Q => rdr_empty_reg_n_0,
      S => inst_axi4_lite_n_75
    );
\rdr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_o_valid,
      D => data_o(0),
      Q => \rdr_reg_n_0_[0]\,
      R => inst_axi4_lite_n_75
    );
\rdr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_o_valid,
      D => data_o(1),
      Q => \rdr_reg_n_0_[1]\,
      R => inst_axi4_lite_n_75
    );
\rdr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_o_valid,
      D => data_o(2),
      Q => \rdr_reg_n_0_[2]\,
      R => inst_axi4_lite_n_75
    );
\rdr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_o_valid,
      D => data_o(3),
      Q => \rdr_reg_n_0_[3]\,
      R => inst_axi4_lite_n_75
    );
\rdr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_o_valid,
      D => data_o(4),
      Q => \rdr_reg_n_0_[4]\,
      R => inst_axi4_lite_n_75
    );
\rdr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_o_valid,
      D => data_o(5),
      Q => \rdr_reg_n_0_[5]\,
      R => inst_axi4_lite_n_75
    );
\rdr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_o_valid,
      D => data_o(6),
      Q => \rdr_reg_n_0_[6]\,
      R => inst_axi4_lite_n_75
    );
\rdr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_o_valid,
      D => data_o(7),
      Q => \rdr_reg_n_0_[7]\,
      R => inst_axi4_lite_n_75
    );
\s_axi_rdata_prev_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^s_axi_rdata\(0),
      Q => \s_axi_rdata_prev_reg_n_0_[0]\,
      R => inst_axi4_lite_n_75
    );
\s_axi_rdata_prev_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^s_axi_rdata\(2),
      Q => \s_axi_rdata_prev_reg_n_0_[2]\,
      R => inst_axi4_lite_n_75
    );
\s_axi_rdata_prev_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^s_axi_rdata\(3),
      Q => \s_axi_rdata_prev_reg_n_0_[3]\,
      R => inst_axi4_lite_n_75
    );
\s_axi_rdata_prev_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^s_axi_rdata\(5),
      Q => \s_axi_rdata_prev_reg_n_0_[5]\,
      R => inst_axi4_lite_n_75
    );
\s_axi_rdata_prev_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^s_axi_rdata\(6),
      Q => p_0_in,
      R => inst_axi4_lite_n_75
    );
tdr_empty_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => inst_axi4_lite_n_114,
      Q => tdr_empty_reg_n_0,
      S => inst_axi4_lite_n_75
    );
uart_rx_top_inst: entity work.design_1_axi4_uart_0_0_uart_rx_top
     port map (
      D(0) => data(7),
      E(0) => data_o_valid,
      Q(3 downto 0) => data_size_sampled(3 downto 0),
      SR(0) => inst_axi4_lite_n_75,
      clk => clk,
      \clk_div_reg[0]\(0) => tick_rx,
      data_o(7 downto 0) => data_o(7 downto 0),
      data_o_valid_reg_0 => uart_rx_top_inst_n_10,
      \fcr_d_reg[0]\ => uart_rx_top_inst_n_9,
      fifo_rx_empty => fifo_rx_empty,
      fifo_rx_pop => fifo_rx_pop,
      fifo_rx_pop_ready => fifo_rx_pop_ready,
      fifo_rx_triggered => fifo_rx_triggered,
      lsr6_reset => lsr6_reset,
      \lsr_reg[6]\(0) => p_2_in,
      ocr(0) => ocr(2),
      p_38_in => p_38_in,
      parity_err => parity_err,
      parity_err_o_reg(4 downto 0) => lcr(4 downto 0),
      \rd_ptr_reg[0]\ => inst_axi4_lite_n_67,
      rdr_empty_reg => rdr_empty_reg_n_0,
      rst_n => rst_n,
      rst_n_0 => uart_rx_top_inst_n_4,
      rts_no_i_2(3 downto 2) => fifo_rx_trig_level_i(1 downto 0),
      rts_no_i_2(1 downto 0) => fcr(1 downto 0),
      rts_no_reg_0 => \^rts_n\,
      rts_no_reg_1 => inst_axi4_lite_n_32,
      rx => rx,
      \shift_regs_reg[7]\(0) => shift_regs(7),
      stop_bit_1_check_sampled_reg => uart_tx_top_inst_n_17,
      stop_bit_2_check_sampled_reg => uart_tx_top_inst_n_12,
      stop_bit_err => stop_bit_err,
      \total_data_size_sampled_reg[3]\(3) => inst_axi4_lite_n_79,
      \total_data_size_sampled_reg[3]\(2 downto 0) => total_data_size(2 downto 0)
    );
uart_tx_top_inst: entity work.design_1_axi4_uart_0_0_uart_tx_top
     port map (
      D(7) => inst_axi4_lite_n_3,
      D(6 downto 0) => \data__0\(6 downto 0),
      \FSM_sequential_current_state_reg[1]\(0) => hcr(0),
      Q(1) => fcr(2),
      Q(0) => fcr(0),
      SR(0) => inst_axi4_lite_n_75,
      baud_o => baud_o,
      clk => clk,
      cpu_write_tdr_d => cpu_write_tdr_d,
      cts_n => cts_n,
      cts_sync => cts_sync,
      \data_size_sampled_reg[1]\ => uart_tx_top_inst_n_12,
      \data_size_sampled_reg[1]_0\ => uart_tx_top_inst_n_17,
      \data_size_sampled_reg[3]\(3 downto 0) => data_size_sampled(3 downto 0),
      \data_size_sampled_reg[3]_0\(3) => inst_axi4_lite_n_88,
      \data_size_sampled_reg[3]_0\(2 downto 0) => data_size(2 downto 0),
      fifo_tx_empty => fifo_tx_empty,
      fifo_tx_o(7 downto 0) => fifo_tx_o(7 downto 0),
      load_d0_sampled_reg(3 downto 2) => lcr(4 downto 3),
      load_d0_sampled_reg(1 downto 0) => lcr(1 downto 0),
      lsr0_set => lsr0_set,
      ocr(1 downto 0) => ocr(1 downto 0),
      p_2_in => \uart_tx_inst/transmitter_controller_inst/p_2_in\,
      rst_n => rst_n,
      \sampled_data_reg[7]\(7 downto 0) => tdr_d(7 downto 0),
      \total_data_sampled_reg[3]\(3) => inst_axi4_lite_n_83,
      \total_data_sampled_reg[3]\(2) => inst_axi4_lite_n_84,
      \total_data_sampled_reg[3]\(1) => inst_axi4_lite_n_85,
      \total_data_sampled_reg[3]\(0) => inst_axi4_lite_n_86,
      tx => tx,
      \wr_ptr_reg[0]\(0) => \fifo_tx_inst/count\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_uart_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    irq : out STD_LOGIC;
    cts_n : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC;
    rts_n : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axi4_uart_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axi4_uart_0_0 : entity is "design_1_axi4_uart_0_0,axi4_uart,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axi4_uart_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_axi4_uart_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axi4_uart_0_0 : entity is "axi4_uart,Vivado 2023.1";
end design_1_axi4_uart_0_0;

architecture STRUCTURE of design_1_axi4_uart_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SAMPLING_RATE : integer;
  attribute SAMPLING_RATE of inst : label is 16;
  attribute SYSTEM_FREQUENCY : integer;
  attribute SYSTEM_FREQUENCY of inst : label is 50000000;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axi, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 irq INTERRUPT";
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_axi4_uart_0_0_axi4_uart
     port map (
      clk => clk,
      cts_n => cts_n,
      irq => irq,
      rst_n => rst_n,
      rts_n => rts_n,
      rx => rx,
      s_axi_araddr(31 downto 12) => B"00000000000000000000",
      s_axi_araddr(11 downto 0) => s_axi_araddr(11 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 12) => B"00000000000000000000",
      s_axi_awaddr(11 downto 0) => s_axi_awaddr(11 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => NLW_inst_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => NLW_inst_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      tx => tx
    );
end STRUCTURE;
