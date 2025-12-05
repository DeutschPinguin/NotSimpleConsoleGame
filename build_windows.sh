#!/usr/bin/bash
if [[ ! -d "build_windows" ]]; then
    mkdir build_windows
fi

cd build_windows
cmake .. -DCMAKE_TOOLCHAIN_FILE=windows.cmake
cmake --build .