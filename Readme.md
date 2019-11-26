# Introduction

Aim of this project template is to make getting D (betterC) code to run on the ESP32 as easy as possible 

# Getting started Linux (WSL Debian)

1. Install prerequisites
```
sudo apt-get install git wget flex bison gperf pythonpython-pip python-setuptools python-serial python-clickpython-cryptography python-future python-pyparsingpython-pyelftools cmake ninja-build ccache
```
Make sure everything in install_ldc_xtensa.sh was executed.

Also Visual Studio Code and on Windows the "Remote - WSL" as well as the C/C++ extension

2. Install and Open Debian app (Windows Subsystem for Linux)

3. Open Clone this repository
```
git clone
```

4. Download submodules
```
    git submodule update --init --recursive
```

5. Install ESP-IDF requirements
```
cd ./esp-idf
./install.sh
cd ..
```

6. Execute code command to open VSCode with this remote

7. Open the internal VSCode shell

8. Source the build environment
```
source ./env.sh
```

9. Build
```
make
```
The new build system is not yet supported, see Todo
```
idf.py build 
```


# Todo

* Better description of steps to get LDC Xtensa to work
* Add support for CMake
* Cleanup

# Acknowledgements

Thanks for this guide!: https://wiki.dlang.org/D_on_esp32/esp8266(llvm-xtensa%2Bldc)_and_how_to_get_started