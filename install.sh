#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

git submodule sync
git submodule update --init --recursive
conda install numpy ninja pyyaml mkl mkl-include setuptools cmake cffi
python setup.py install
