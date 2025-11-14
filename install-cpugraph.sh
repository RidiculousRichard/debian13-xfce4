#!/bin/bash
set -euo pipefail

echo "Install the built cpugraph plugin; will restart the cpugraph plugin"
echo "Requests sudo elevated permissions for the installation; aborts on error"
echo

sudo dpkg -i ./xfce4-cpugraph-plugin_1.2.10-1_amd64.deb
pkill -HUP -f libcpugraph

echo
echo "Completed!"
