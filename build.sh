#!/usr/bin/env bash
# shebang at the top to tell what to run it with

# remove and create build dir
rm -rf build
mkdir build
cd build

# cmake command to create build file
# use make as most systems have this
# build with high optimization
cmake -G "Unix Makefiles" \
    -DCMAKE_BUILD_TYPE=Release \
    ..

# run make with all cores
# nproc returns the number of cores on the system
make -j $(nproc) 
