#!/bin/bash
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

export IDF_PATH=$SCRIPTPATH/esp-idf
source $IDF_PATH/export.sh