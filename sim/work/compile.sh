#!/bin/bash

RTL_DIR="../../hdl"
INC_DIR="../../inc"
TB_DIR="../src"

# Tạo thư viện work nếu chưa có
vlib work

sverilog_files=$(find "$RTL_DIR" -type f -name "*.sv")
inc_sverilog_files=$(find "$INC_DIR" -type f -name "*.sv")

echo "Compiling RTL and include files:"
echo "$inc_sverilog_files"
echo "$sverilog_files"
echo
vlog -sv $inc_sverilog_files
vlog -sv $sverilog_files

echo
echo "Compiling testbench files (except apb_uart_tb.sv):"

apb_uart_tb_file=$(find "$TB_DIR" -type f -name "apb_uart_tb.sv")



echo "-> Compiling supporting testbench files"
vlog -sv +incdir+"$TB_DIR" \
  "$TB_DIR/uart_reg_pkg.sv" \
  "$TB_DIR/apb_agent_pkg.sv" \
  "$TB_DIR/apb_assertion.sv" \
  "$TB_DIR/uart_agent_pkg.sv" \
  "$TB_DIR/uart_env_pkg.sv" \
  "$TB_DIR/apb_sequence_pkg.sv" \
  "$TB_DIR/uart_sequence_pkg.sv" \
  "$TB_DIR/uart_vsquence_pkg.sv" \
  "$TB_DIR/uart_test_pkg.sv" \
  "$TB_DIR/apb_uart_uvm_tb.sv"



echo
echo "Running simulation:"
vsim -voptargs=+acc -c -do "run -all; quit" work.apb_uart_uvm_tb
