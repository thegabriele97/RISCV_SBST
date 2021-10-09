#!/bin/sh

# Move to the run directory
cd run

# Build the files
vlog ../pdt2002.v 
vcom -2008 -suppress 1141 ../ex1_structural_new.vhd ../ex1_testbench.vhd 

# Invoke QuestaSim shell and run the TCL script
vsim -c -novopt work.tb_ex1 -do ../simulation_script.tcl -wlf sim.wlf

# Alternative: Invoke QuestaSim GUI
#vsim -novopt work.tb_ex1


