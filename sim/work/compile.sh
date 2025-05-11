RTL_DIR="$HOME/workspace/APB_UART/hdl"

INC_DIR="$HOME/workspace/APB_UART/inc"

vlib work
sverilog_files=$(find "$RTL_DIR" -type f -name "*.sv")
inc_sverilog_files=$(find "$INC_DIR" -type f -name "*.sv")

echo "Compiling the following files:"
echo "$inc_sverilog_files"
echo "$sverilog_files"
echo
vlog $inc_sverilog_files
vlog $sverilog_files


TB_DIR="$HOME/workspace/APB_UART/sim/src"
sv_files=$(find "$TB_DIR" -type f -name "*.sv")
echo "Compiling testbench files:"
echo "$sv_files"
echo
vlog -sv +acc +vpi -timescale=1ns/1ps $sv_files
# 
vsim -voptargs=+acc -c -do "run -all; quit" apb_uart_tb
