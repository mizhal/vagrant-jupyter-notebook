#!/bin/bash

mkdir -p /var/pids/jupyter_notebook

rm -f /etc/init.d/jupyter-notebook
mv /tmp/jupyter-notebook.sh /etc/init.d/jupyter-notebook
chmod +x /etc/init.d/jupyter-notebook

rm -f /etc/rc2.d/S10jupyter-notebook
rm -f /etc/rc6.d/K01jupyter-notebook

ln -s /etc/init.d/jupyter-notebook /etc/rc2.d/S10jupyter-notebook
ln -s /etc/init.d/jupyter-notebook /etc/rc6.d/K01jupyter-notebook