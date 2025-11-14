#!/bin/bash
set -euo pipefail

# Change to the script directory
maindir="$(readlink -f $0)"
maindir="$(dirname "$maindir")"
pushd $maindir

# Remove any old build output (both via this script or via apt-get source --compile xfce4-cpugraph-plugin)
rm xfce4-cpugraph-plugin-dbgsym_1.2.10-1_amd64.deb xfce4-cpugraph-plugin_1.2.10-1.debian.tar.xz xfce4-cpugraph-plugin_1.2.10-1.dsc xfce4-cpugraph-plugin_1.2.10-1_amd64.buildinfo xfce4-cpugraph-plugin_1.2.10-1_amd64.changes xfce4-cpugraph-plugin_1.2.10-1_amd64.deb xfce4-cpugraph-plugin_1.2.10.orig.tar.bz2 || true

# Descend into directory and perform the build to get a .deb
pushd xfce4-cpugraph-plugin-1.2.10
dpkg-buildpackage -rfakeroot -uc -b

# Return to original calling directory
popd
popd
echo
echo "Completed"
