#!/bin/bash

RTL_DIR="../../hdl"
INC_DIR="../../inc"
TB_DIR="../src"

vlib work

inc_sverilog_files=$(find "$INC_DIR" -type f -name "*.sv")
sverilog_files=$(find "$RTL_DIR" -type f -name "*.sv")

echo "Compiling RTL and include files:"
echo "$inc_sverilog_files"
echo "$sverilog_files"
echo
vlog -sv +define+SVA $inc_sverilog_files
vlog -sv +define+SVA $sverilog_files

echo "-> Compiling directed testbench"
vlog -sv +incdir+"$TB_DIR" "$TB_DIR/apb_uart_tb.sv"

echo "Running simulation:"
vsim -voptargs=+acc work.apb_uart_tb -do "
add wave -recursive sim:/apb_uart_tb/*;
run -all;"
