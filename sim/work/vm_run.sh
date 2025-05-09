reset

rm -rf xcelium.d INCA* *.log *.key *.simvis* waves* *.shm

xrun -sv -64BIT -debug_opts verisum_pp -log xrun.log -f file_list.f +tcl+run_batch.tcl