
read_netlist pdt2002.v -library
read_netlist c6288.vhd -master
# read_netlist b10.v -master
run_build_model c6288
# run_build_model b10

# add_po_masks -all
# remove_po_masks datao(1)
# remove_po_masks datao(2)
# remove_po_masks datao(3)

add_po_masks datao(1)
add_po_masks datao(2)
add_po_masks datao(3)
# report_primitives -pos

# add_pi_constraints x datai(0)
# add_pi_constraints x datai(1)
# add_pi_constraints x datai(2)

run_drc c6288.stil
# run_drc b10.stil

set_faults -model stuck
add_faults -all

set_patterns -external c6288.stil
run_simulation
run_fault_sim

# set_patterns -internal
# run_atpg -auto_compression

set_faults -summary verbose -fault_coverage
report_summaries

# exit
