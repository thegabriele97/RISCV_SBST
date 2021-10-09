log -r /*

### Examples of faults

#stuck-at-0
# force -freeze /u_ex1/net2 0

#stuck-at-1
#force -freeze /u_ex1/net2 1

########################

# You can write commands into a separate file 
# (this permits you to automatize the fault injection campaign)
#
source inject_fault.tcl


run -all

#noforce *

quit
