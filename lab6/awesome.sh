#!/bin/sh
rm out.log
for v in 5 10 20 100 200 500 1000 10000 100000
do

    time=$((100+100*$v))
    echo "vcd dumpports /b12_testbench/dut/* -file b12_dumpports.vcd
    run $time ns
    quit
    " > b12_simulation_script.tcl

    ./b12_simulation.sh
    results=$(tmax -shell b12_fsim_script.tcl 2> /dev/null | grep "fault coverage" | tail -n 1)

    echo $results >> out.log
done
