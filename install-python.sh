#!/bin/bash

apt-get install -y python python-pip python-virtualenv

## Matplotlib dependencies
apt-get install -y pkg-config ## matplotlib won't find freetype without this

apt-get install -y libpng-dev libfreetype6 libfreetype6-dev
apt-get install -y python-pyqt5

apt-get install -y dvipng poppler-utils ghostscript

## the new matlab
pip install jupyter
pip install matplotlib
pip install numpy