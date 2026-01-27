#!/bin/bash
# Load pywal colors
source "$HOME/.cache/wal/colors-rgb"

# Extract colors (e.g., color1 is usually a prominent, non-black color)
# OpenRGB accepts hex codes. Pywal colors.sh provides them as $color1, $color2 etc.

# Example: Set all devices to the primary color
openrgb --mode direct --color FFFFFF

# Example: Set devices to different colors from the palette
# openrgb --device 0 --mode direct --color $color1
# openrgb --device 1 --mode direct --color $color2
