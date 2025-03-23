#!/bin/bash

# First, compile for ARM64
/opt/homebrew/bin/shc -f appearance.sh -o bin/appearance-arm64

# Then compile for Intel (x86_64)
arch -x86_64 /usr/local/bin/shc -f appearance.sh -o bin/appearance-x86_64

# Create a universal binary
lipo -create bin/appearance-arm64 bin/appearance-x86_64 -output bin/appearance
