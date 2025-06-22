transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {}
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_14
vlib activehdl/processing_system7_vip_v1_0_16
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/gigantic_mux
vlib activehdl/xlconcat_v2_1_4
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/fifo_generator_v13_2_8
vlib activehdl/axi_data_fifo_v2_1_27
vlib activehdl/axi_register_slice_v2_1_28
vlib activehdl/axi_protocol_converter_v2_1_28

vlog -work xilinx_vip  -sv2k12 "+incdir+/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l gigantic_mux -l xlconcat_v2_1_4 -l generic_baseblocks_v2_1_0 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_register_slice_v2_1_28 -l axi_protocol_converter_v2_1_28 \
"/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l gigantic_mux -l xlconcat_v2_1_4 -l generic_baseblocks_v2_1_0 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_register_slice_v2_1_28 -l axi_protocol_converter_v2_1_28 \
"/home/hieu/Tools/vivado/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/hieu/Tools/vivado/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"/home/hieu/Tools/vivado/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l gigantic_mux -l xlconcat_v2_1_4 -l generic_baseblocks_v2_1_0 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_register_slice_v2_1_28 -l axi_protocol_converter_v2_1_28 \
"../../../bd/design_1/ipshared/4b06/src/common_pkg.sv" \
"../../../bd/design_1/ipshared/4b06/src/axi4_lite.sv" \
"../../../bd/design_1/ipshared/4b06/src/baud_generator.sv" \
"../../../bd/design_1/ipshared/4b06/src/ff.sv" \
"../../../bd/design_1/ipshared/4b06/src/parity.sv" \
"../../../bd/design_1/ipshared/4b06/src/piso.sv" \
"../../../bd/design_1/ipshared/4b06/src/receiver_controller.sv" \
"../../../bd/design_1/ipshared/4b06/src/receiver_fifo.sv" \
"../../../bd/design_1/ipshared/4b06/src/shift_register.sv" \
"../../../bd/design_1/ipshared/4b06/src/synchronizer.sv" \
"../../../bd/design_1/ipshared/4b06/src/transmitter_controller.sv" \
"../../../bd/design_1/ipshared/4b06/src/transmitter_fifo.sv" \
"../../../bd/design_1/ipshared/4b06/src/uart_receiver.sv" \
"../../../bd/design_1/ipshared/4b06/src/uart_rx_top.sv" \
"../../../bd/design_1/ipshared/4b06/src/uart_transmitter.sv" \
"../../../bd/design_1/ipshared/4b06/src/uart_tx_top.sv" \
"../../../bd/design_1/ipshared/4b06/src/axi4_uart.sv" \
"../../../bd/design_1/ip/design_1_axi4_uart_0_0/sim/design_1_axi4_uart_0_0.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l gigantic_mux -l xlconcat_v2_1_4 -l generic_baseblocks_v2_1_0 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_register_slice_v2_1_28 -l axi_protocol_converter_v2_1_28 \
"../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_14  -sv2k12 "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l gigantic_mux -l xlconcat_v2_1_4 -l generic_baseblocks_v2_1_0 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_register_slice_v2_1_28 -l axi_protocol_converter_v2_1_28 \
"../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/ed63/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_16  -sv2k12 "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l gigantic_mux -l xlconcat_v2_1_4 -l generic_baseblocks_v2_1_0 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_register_slice_v2_1_28 -l axi_protocol_converter_v2_1_28 \
"../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/aed8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l gigantic_mux -l xlconcat_v2_1_4 -l generic_baseblocks_v2_1_0 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_register_slice_v2_1_28 -l axi_protocol_converter_v2_1_28 \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_0/sim/design_1_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l gigantic_mux -l xlconcat_v2_1_4 -l generic_baseblocks_v2_1_0 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_register_slice_v2_1_28 -l axi_protocol_converter_v2_1_28 \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_0/sim/bd_f60c_ila_lib_0.v" \

vlog -work gigantic_mux  -v2k5 "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l gigantic_mux -l xlconcat_v2_1_4 -l generic_baseblocks_v2_1_0 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_register_slice_v2_1_28 -l axi_protocol_converter_v2_1_28 \
"../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/e87a/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l gigantic_mux -l xlconcat_v2_1_4 -l generic_baseblocks_v2_1_0 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_register_slice_v2_1_28 -l axi_protocol_converter_v2_1_28 \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_1/bd_f60c_g_inst_0_gigantic_mux.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_1/sim/bd_f60c_g_inst_0.v" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l gigantic_mux -l xlconcat_v2_1_4 -l generic_baseblocks_v2_1_0 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_register_slice_v2_1_28 -l axi_protocol_converter_v2_1_28 \
"../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l gigantic_mux -l xlconcat_v2_1_4 -l generic_baseblocks_v2_1_0 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_register_slice_v2_1_28 -l axi_protocol_converter_v2_1_28 \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_2/sim/bd_f60c_slot_0_aw_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_3/sim/bd_f60c_slot_0_w_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_4/sim/bd_f60c_slot_0_b_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_5/sim/bd_f60c_slot_0_ar_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_6/sim/bd_f60c_slot_0_r_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/sim/bd_f60c.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/sim/design_1_system_ila_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l gigantic_mux -l xlconcat_v2_1_4 -l generic_baseblocks_v2_1_0 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_register_slice_v2_1_28 -l axi_protocol_converter_v2_1_28 \
"../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_8  -v2k5 "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l gigantic_mux -l xlconcat_v2_1_4 -l generic_baseblocks_v2_1_0 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_register_slice_v2_1_28 -l axi_protocol_converter_v2_1_28 \
"../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/c97d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_8 -93  \
"../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_8  -v2k5 "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l gigantic_mux -l xlconcat_v2_1_4 -l generic_baseblocks_v2_1_0 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_register_slice_v2_1_28 -l axi_protocol_converter_v2_1_28 \
"../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_27  -v2k5 "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l gigantic_mux -l xlconcat_v2_1_4 -l generic_baseblocks_v2_1_0 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_register_slice_v2_1_28 -l axi_protocol_converter_v2_1_28 \
"../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/fab7/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_28  -v2k5 "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l gigantic_mux -l xlconcat_v2_1_4 -l generic_baseblocks_v2_1_0 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_register_slice_v2_1_28 -l axi_protocol_converter_v2_1_28 \
"../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/87d1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_28  -v2k5 "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l gigantic_mux -l xlconcat_v2_1_4 -l generic_baseblocks_v2_1_0 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_register_slice_v2_1_28 -l axi_protocol_converter_v2_1_28 \
"../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/8c02/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../axi4_uart.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+/home/hieu/Tools/vivado/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l gigantic_mux -l xlconcat_v2_1_4 -l generic_baseblocks_v2_1_0 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_register_slice_v2_1_28 -l axi_protocol_converter_v2_1_28 \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

