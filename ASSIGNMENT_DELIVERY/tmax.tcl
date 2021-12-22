# Setup
set_environment_viewer -instance_names
set_messages -log tmax.log -replace

## Build and DRC
read_netlist ../gate/NangateOpenCellLibrary.tlib -library
read_netlist ../gate/riscv_core.v
#run_build_model riscv_core_0_128_1_16_1_1_0_0_0_0_0_0_0_0_0_3_6_15_5_1a110800
#run_build_model riscv_alu_SHARED_INT_DIV0_FPU0
#run_build_model riscv_mult_SHARED_DSP_MULT0
run_build_model riscv_register_file_ADDR_WIDTH6_DATA_WIDTH32_FPU0_Zfinx0

#add_pi_constraints 1 rst_n
#add_pi_constraints 1 enable_i_BAR
#add_pi_constraints 0 operator_i[6]

run_drc

set_faults -model stuck

## Load and check patterns
#set_patterns -external dumpports_gate.evcd.fixed  -sensitive -strobe_period { 10 ns } -strobe_offset { 59 ns }
set_patterns -internal
# run_simulation -sequential

## Fault list (select one of the following)
add_faults -all
#add_faults ex_stage_i/alu_i
#add_faults ex_stage_i/alu_i/int_div_div_i
#add_faults ex_stage_i/mult_i
#add_faults id_stage_i/registers_i/riscv_register_file_i
#add_faults id_stage_i/registers_i/riscv_register_file_i/mem_reg_1__31_
#read_faults previous_fsim_faults.txt -force_retain_code -add

## Fault simulation
#run_fault_sim -sequential

set_atpg -full_seq_atpg
run_atpg -auto_compression

## Reports
set_faults -fault_coverage
report_faults -level {5 100} > report_faults_hierarchy.txt
report_faults -level {100 1} -verbose > report_faults_verbose.txt
report_summaries > ../results/rf_atpg_seq_report_summaries.txt
write_faults fsim_faults.txt -replace -all
write_patterns ../results/rf_atpg_seq.stil -internal -format stil
