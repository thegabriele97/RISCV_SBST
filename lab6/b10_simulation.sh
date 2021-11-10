#!/bin/sh

# Move to the run directory
mkdir -p run
cd run

# Build the files
vcom -2008 -suppress 1141 ../pdt2002_sim.vhd 
vlog ../b10.v 
vlog ../lfsr.v
vcom -2008 -suppress 1141 ../b10_testbench.vhd 

# Invoke QuestaSim shell and run the TCL script
#vsim -c -novopt work.b10_testbench -do ../b10_simulation_script.tcl  -wlf sim.wlf

# Alternative: Invoke QuestaSim GUI
vsim -novopt work.b10_testbench -do ../b10_wave.do -do ../b10_simulation_script.tcl  -wlf sim.wl
