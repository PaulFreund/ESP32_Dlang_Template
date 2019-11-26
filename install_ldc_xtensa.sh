#!/bin/bash

cd ~
wget http://downloads.dlang.org/releases/2.x/2.089.0/dmd_2.089.0-0_amd64.deb
sudo dpkg -i dmd_2.089.0-0_amd64.deb
sudo apt-get install ninja-build cmake unzip
git clone https://github.com/espressif/llvm-xtensa.git
git clone https://github.com/espressif/clang-xtensa.git llvm-xtensa/tools/clang
mkdir llvm_build
cd llvm_build
cmake ../llvm-xtensa -DLLVM_TARGETS_TO_BUILD="Xtensa;X86" -DCMAKE_BUILD_TYPE=Release -G "Ninja" -DCMAKE_INSTALL_PREFIX=/opt/llvm-xtensa
ninja
sudo ninja install
cd ..
wget https://github.com/ldc-developers/ldc/releases/download/v1.18.0/ldc-1.18.0-src.zip
unzip ldc-1.18.0-src.zip
mkdir ldc_build
cd ldc_build
cmake -G Ninja ../ldc-1.18.0-src -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/ldc-xtensa -DLLVM_ROOT_DIR=/opt/llvm-xtensa
ninja
sudo ninja install
cd ..