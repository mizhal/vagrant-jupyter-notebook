#!/bin/bash

apt-get install -y build-essential python python-pip python-virtualenv python-dev python2.7 python2.7-dev

## Matplotlib dependencies
apt-get install -y pkg-config ## matplotlib won't find freetype without this

apt-get install -y libpng-dev libfreetype6 libfreetype6-dev
apt-get install -y python-pyqt5

apt-get install -y dvipng poppler-utils ghostscript

## the new matlab
pip install markupsafe zmq jsonschema jupyter matplotlib numpy ipykernel