#!/bin/bash

# First, compile for ARM64 (your native architecture)
/opt/homebrew/bin/shc -f appearance.sh -o appearance_arm64

# Then compile for Intel (x86_64)
arch -x86_64 /usr/local/bin/shc -f appearance.sh -o appearance_intel

# Create a universal binary
lipo -create appearance_arm64 appearance_intel -output appearance
