cd $( dirname $0)
root_dir=${PWD}

run_dir=${root_dir}/run
cd ${run_dir}

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
