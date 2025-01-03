#!/bin/bash

for N in 16 32 64 128 256 512 768 1024
do 
    echo "N = ${N}" >> matmul_result
    output=$(echo "" | ./build/bin/matmul $N 16)
    echo "$output" | grep 'time =' >> matmul_result
    echo "" >> matmul_result
done




