#!/bin/sh

mkdir build
cd build
cmake -DMONERO_DIR=/latestv1.0.0 ..

make -j4
