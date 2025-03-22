#!/bin/bash

# appearance - A simple command to control macOS appearance mode
# Usage: appearance [auto|dark|light]

if [[ $# -ne 1 ]]; then
    echo "Usage: appearance [auto|dark|light]"
    exit 1
fi

case "$1" in
auto)
    osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to auto'
    echo "Appearance set to auto mode"
    ;;
dark)
    osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to true'
    echo "Appearance set to dark mode"
    ;;
light)
    osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to false'
    # echo "Appearance set to light mode"
    ;;
*)
    echo "Error: Invalid option. Use 'auto', 'dark', or 'light'"
    echo "Usage: appearance [auto|dark|light]"
    exit 1
    ;;
esac
#!/bin/zsh

# appearance - A simple command to control macOS appearance mode
# Usage: appearance [auto|dark|light]

if [[ $# -ne 1 ]]; then
    echo "Usage: appearance [auto|dark|light]"
    exit 1
fi

case "$1" in
auto)
    osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to auto'
    # echo "Appearance set to auto mode"
    ;;
dark)
    osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to true'
    # echo "Appearance set to dark mode"
    ;;
light)
    osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to false'
    # echo "Appearance set to light mode"
    ;;
*)
    echo "Error: Invalid option. Use 'auto', 'dark', or 'light'"
    echo "Usage: appearance [auto|dark|light]"
    exit 1
    ;;
esac
