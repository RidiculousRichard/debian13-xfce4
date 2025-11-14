#!/bin/bash
set -euo pipefail
set -x

for pkg in xfce4 libxfce4ui-utils thunar xfce4-appfinder xfce4-panel xfce4-pulseaudio-plugin xfce4-session xfce4-settings xfconf xfdesktop4 xfwm4 xfce4-notifyd xfce4-goodies xfce4-power-manager xfce4-cpugraph-plugin; do
	sudo apt-get build-dep "$pkg"
	apt-get source --compile "$pkg"
done
