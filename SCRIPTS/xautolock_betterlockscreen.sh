#!/bin/bash
betterlockscreen -l 

# Function to update the lock screen with battery info
#update_lock_screen() {
#    while pgrep -x i3lock >/dev/null; do  # Check if the lock screen is active
#        BATTERY_LEVEL=$(cat /sys/class/power_supply/BAT0/capacity)
#        BATTERY_STATUS=$(cat /sys/class/power_supply/BAT0/status)
#        
#        # Refresh lock screen with updated battery status
#        betterlockscreen -l dim --text "Battery: ${BATTERY_LEVEL}% (${BATTERY_STATUS})"
#
#        sleep 30  # Update every 30 seconds
#    done
#}

## Lock the screen and start battery monitoring
#betterlockscreen -l dim --text "Battery: $(cat /sys/class/power_supply/BAT0/capacity)% ($(cat /sys/class/power_supply/BAT0/status))" &
#sleep 1  # Small delay to ensure lock screen is active
#update_lock_screen

