#!/bin/bash

# Check if a custom root is provided, otherwise use '/'
ROOT=${1:-/}

# Copy thumbnailer files to the specified root directory
mkdir -p "$ROOT/usr/share/thumbnailers"
mkdir -p "$ROOT/usr/local/bin"

cp stl.thumbnailer "$ROOT/usr/share/thumbnailers/"
cp scad.thumbnailer "$ROOT/usr/share/thumbnailers/"

cp stl-thumbnailer-script "$ROOT/usr/local/bin/"
cp scad-thumbnailer-script "$ROOT/usr/local/bin/"

chmod +x "$ROOT/usr/local/bin/stl-thumbnailer-script"
chmod +x "$ROOT/usr/local/bin/scad-thumbnailer-script"
