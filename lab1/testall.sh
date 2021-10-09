#!/bin/bash

OLDIFS=$IFS
IFS=$'\n'

a=1
for line in $(cat $1); do

    echo -e "----------- test $a: $line"

    ./convert_faults.sh run/out.txt $a > run/inject_fault.tcl
    $(./simulation.sh 2> /dev/null)

    minus=$(diff run/monitor_gold.txt run/monitor.txt)

    if [ $(echo $minus | wc -l) -gt 0 ]; then
        diff run/monitor_gold.txt run/monitor.txt
    fi

    echo -e "----------- completed!"
    a=$((a+1))
    read val
done

IFS=$OLDIFS