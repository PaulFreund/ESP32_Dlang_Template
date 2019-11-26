#!/bin/bash
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

export PATH=$PATH:/opt/llvm-xtensa/bin:/opt/ldc-xtensa/bin
export IDF_PATH=$SCRIPTPATH/esp-idf
source $IDF_PATH/export.sh