#!/bin/bash

monitors=$(hyprctl monitors | grep 'Monitor' | awk '{print $2}')

# Take and blur a screenshot for each monitor
for mon in $monitors; do
    output="/tmp/hyprlock-bg-$mon.png"
    grim -o "$mon" "$output"        # Take screenshot
    convert "$output" -blur 0x9 "$output"  # Apply blur
done

# Run Hyprlock with the blurred image
hyprlock
