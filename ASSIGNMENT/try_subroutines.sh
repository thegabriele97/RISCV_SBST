#!/bin/sh

max=$(cat sbst/alu.S | grep 'n. 0x' | tail -n 1)
max=$(echo ${max} | sed 's/ /\n/g' | tail -n 1)
echo $max
actual=$(cat sbst/crt0.S | grep 'li a0, 0x' | tail -n 1)
actual=$(echo ${actual} | sed 's/ /\n/g' | tail -n 1)
echo $actual

while [ $((actual)) -le $((max)) ]; do
    make parser put_asm build get_signature

    echo "--------------------"
    echo ""
    read -u 3 input

    p1=$(printf "0x%x" $actual)
    p2=$(printf "0x%x" $(($actual<<1)))
    sed -i "s/li a0, ${p1}/li a0, ${p2}/" sbst/crt0.S 
    actual=$(($actual<<1))

    #diff -y --suppress-common-lines tmp/crt0.S sbst/crt0.S
    echo ""
    echo $p2

done 3<&0

