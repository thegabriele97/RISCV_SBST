#!/bin/bash

cd $( dirname $0)
root_dir=${PWD}
cd - &>/dev/null

run_dir=${root_dir}/run

export GATE_DIR=${root_dir}/gate
export ZOIX_DIR=${root_dir}/zoix

export TOPLEVEL=riscv_core_0_128_1_16_1_1_0_0_0_0_0_0_0_0_0_3_6_15_5_1a110800

cd ${run_dir}

# Cleaning section
rm -rf flops.txt \
  simout-N0* zoix.progress* *.cdf \
  *.log* \
  log/*.log \
  sim.src \
  zoix.log \
  sim.zdb \
  zoix.sim \
  __ddbfiles__ \
  fault_report.log \
  __fmdict__ \
  fmsh.log \
  fr2fdef.log \
  __fubs__ \
  __globfiles__ \
  sim.fdef \
  user_coverage.sff \
  testability.txt \
  __tests__ \
  __tmp__
rm -rf zoix.sim sim.zdb faults.fdef simout-N0* zoix.log zoix.progress* zoix_rt.log *.log* *.cdf

# Compile DUT & strobe file
zoix -f ${ZOIX_DIR}/bin/read_design.f ${ZOIX_DIR}/bin/strobe.sv +timescale+override+1ps/1ps +top+${TOPLEVEL}+strobe +sv +notimingchecks +define+ZOIX +define+TOPLEVEL=riscv_core_0_128_1_16_1_1_0_0_0_0_0_0_0_0_0_3_6_15_5_1a110800 +suppress+cell +delay_mode_fault +verbose+undriven -l zoix_compile.log

# Fix evcd
${root_dir}/fix_evcd.sh dumpports_gate.evcd


# Check logic simulation 
./zoix.sim +vcd+file+"dumpports_gate.evcd.fixed" +vcd+dut+${TOPLEVEL}+tb_top.riscv_wrapper_i.riscv_core_i +vcd+verify +vcd+verbose -l zoix_logic_sim.log 


# Run fault simulations
fmsh -load ${ZOIX_DIR}/bin/fsim_evcd.fmsh | tee zoix_fsim_evcd.log
