#!/bin/bash

~/pin-3.17-98314-g0c048d619-gcc-linux/pin -t obj-intel64/champsim_tracer.so -o $3 -t 10000000 -- $1 $2
xz -z $3
cd ..
./run_champsim.sh bimodal-no-no-no-no-lru-1core 10 100 $3.xz

