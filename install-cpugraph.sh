#!/bin/bash
set -euo pipefail

echo "Install the built cpugraph plugin; will restart the cpugraph plugin"
echo "Requests sudo elevated permissions for the installation; aborts on error"
echo

sudo dpkg -i ./xfce4-cpugraph-plugin_1.2.10-1_amd64.deb
pkill -HUP -f libcpugraph

echo
echo "Note that apt will overwrite your locally built package with the original unless you command it not to do so/"
echo "e.g. sudo apt-mark hold xfce4-cpugraph-plugin"
echo
echo "Completed!"
