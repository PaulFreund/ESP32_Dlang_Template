#!/bin/bash
# SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
SCRIPTPATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export PATH=$PATH:/opt/llvm-xtensa/bin:/opt/ldc-xtensa/bin
export IDF_PATH=$SCRIPTPATH/esp-idf
source $IDF_PATH/export.sh
