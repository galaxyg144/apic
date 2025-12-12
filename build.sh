#!/bin/bash

set -e

PKG_DIR="$(pwd)"        # The folder this script is in
PKG_NAME="apic"         # Name of the package
OUTPUT="${PKG_NAME}.deb"

echo "== Building ${PKG_NAME}.deb =="

# Make sure the main script is executable
if [ -f usr/local/bin/apic ]; then
    chmod +x usr/local/bin/apic
else
    echo "ERROR: usr/local/bin/apic not found!"
    exit 1
fi

# Check control file
if [ ! -f DEBIAN/control ]; then
    echo "ERROR: DEBIAN/control file missing!"
    exit 1
fi

# Build the .deb
dpkg-deb --build "$PKG_DIR" "$OUTPUT"

echo ""
echo "Build complete!"
echo "Created: $OUTPUT"
