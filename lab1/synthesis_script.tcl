set search_path {..}

uplevel #0 source ../pdt2002.dc_setup.tcl

analyze -library work -format vhdl ex1_dataflow.vhd
elaborate ex1
#create_clock -name "clk" -period 200 -waveform { 100 200 } { clk }
#create_clock -name "rst" -period 200 -waveform { 100 200 } { rst }

#compile -exact_map
compile_ultra

report_design
report_area -nosplit
#report_clock -nosplit

write -hierarchy -format verilog -output ../ex1_synth.v
write -hierarchy -format vhdl -output ../ex1_synth.vhd

quit
