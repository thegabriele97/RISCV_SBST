#!/bin/sh

# Move to the run directory
mkdir -p run
cd run

# Build the files
vcom -2008 -suppress 1141 ../pdt2002_sim.vhd 
vlog ../b06_scan.v 
vlog ../lfsr.v
vcom -2008 -suppress 1141 ../b06_testbench.vhd 

# Invoke QuestaSim shell and run the TCL script
vsim -c -novopt work.b06_testbench -do ../b06_simulation_script.tcl  -wlf b06_sim.wlf

# Alternative: Invoke QuestaSim GUI
# vsim -novopt work.b06_testbench -do ../b06_wave.do -do ../b06_simulation_script.tcl  -wlf b06_sim.wlf
