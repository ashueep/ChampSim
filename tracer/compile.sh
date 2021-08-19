#!/bin/bash

~/pin-3.17-98314-g0c048d619-gcc-linux/pin -t obj-intel64/champsim_tracer.so -- $1
xz -z champsim.trace
cd ..
./run_champsim.sh bimodal-no-no-no-no-lru-1core $2 $3 champsim.trace.xz

