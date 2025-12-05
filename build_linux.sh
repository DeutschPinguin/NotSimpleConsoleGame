#!/usr/bin/bash
if [[ ! -d "build_linux" ]]; then
    mkdir build_linux
fi

cd build_linux
cmake .. -DCMAKE_TOOLCHAIN_FILE=linux.cmake
cmake --build .