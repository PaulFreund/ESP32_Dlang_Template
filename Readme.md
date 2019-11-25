# Getting started Linux (WSL Debian)

1. Install prerequisites
```
sudo apt-get install git wget flex bison gperf pythonpython-pip python-setuptools python-serial python-clickpython-cryptography python-future python-pyparsingpython-pyelftools cmake ninja-build ccache
```
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
idf.py build 
```
or (legacy)
```
make
```

