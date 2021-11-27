#!/bin/sh

# Move to the run directory
mkdir -p run
cd run

# Build the files
vcom -2008 -suppress 1141 ../pdt2002_sim.vhd 
vlog ../b12.v 
vlog ../lfsr.v
vcom -2008 -suppress 1141 ../b12_testbench.vhd 

# Invoke QuestaSim shell and run the TCL script
vsim -c -novopt work.b12_testbench -do ../b12_simulation_script.tcl  -wlf b12_sim.wlf

# Alternative: Invoke QuestaSim GUI
# vsim -novopt work.b12_testbench -do ../b12_wave.do -do ../b12_simulation_script.tcl  -wlf b12_sim.wlf
