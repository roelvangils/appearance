#!/bin/bash

# First, compile for ARM64 (your native architecture)
/opt/homebrew/bin/shc -f appearance.sh -o downloads/appearance-arm64

# Then compile for Intel (x86_64)
arch -x86_64 /usr/local/bin/shc -f appearance.sh -o downloads/appearance-x86_64

# Create a universal binary
lipo -create downloads/appearance-arm64 downloads/appearance-x86_64 -output downloads/appearance
