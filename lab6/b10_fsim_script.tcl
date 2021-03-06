read_netlist pdt2002_tmax.v
read_netlist b10.v
run_build_model b10
add_clocks 0 clock
add_clocks 0 reset
run_drc
set_patterns -external run/b10_dumpports.vcd -sensitive -strobe_period {100 ns} -strobe_offset {40 ns} -vcd_clock auto
run_simulation -sequential
# set_faults -model stuck
set_delay -launch_cycle system_clock
set_faults -model transition
add_faults -all
run_fault_sim -sequential
set_faults -fault_coverage
report_summaries
report_faults -profile
quit
