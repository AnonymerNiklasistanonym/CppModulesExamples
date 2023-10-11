#!/usr/bin/env bash

export CC=/usr/bin/clang
export CXX=/usr/bin/clang++

rm -rf build
mkdir build
cd build

cmake --version

clang++ --version

ninja --version

cmake -DCMAKE_RULE_MESSAGES:BOOL=OFF -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -GNinja ..

cmake --build .

./hello
