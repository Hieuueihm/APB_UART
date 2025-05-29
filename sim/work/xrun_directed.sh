#!/bin/bash

RTL_DIR="../../hdl"
INC_DIR="../../inc"
TB_DIR="../src"

# Cleanup previous simulation files
echo "Cleaning up previous simulation files..."
rm -rf xcelium.d INCA* *.log *.key *.simvis* waves* *.shm

# Find SystemVerilog files
inc_sverilog_files=$(find "$INC_DIR" -type f -name "*.sv" 2>/dev/null)
sverilog_files=$(find "$RTL_DIR" -type f -name "*.sv" 2>/dev/null)

echo "Running simulation with Xcelium:"
xrun -sv -64bit -debug_opts verisium_pp -log xrun.log \
  -access +rwc \
  +define+SVA \
  +incdir+"$TB_DIR" \
  $inc_sverilog_files \
  $sverilog_files \
  "$TB_DIR/apb_uart_tb.sv" \