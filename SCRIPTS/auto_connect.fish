#!/usr/bin/env fish

set ssid "VITC-HOS2-4"
set sleep_time 30  # Initial sleep time

function check_connection
    # Ping a reliable server (Google's DNS server) to check internet connectivity
    ping -c 1 8.8.8.8 > /dev/null
    return $status
end

while true
    if check_connection
        echo "Internet is connected."
        set sleep_time 30  # If connected, wait 30 seconds for the next check
    else
        echo "Internet is disconnected. Attempting to reconnect to $ssid..."
        nmcli device wifi connect $ssid
        if nmcli -t -f active,ssid dev wifi | grep -q "^yes:$ssid"
            echo "Connected to $ssid"
            set sleep_time 30  # If reconnected, reset to 30 seconds
        else
            echo "Failed to connect to $ssid. Retrying in 5 seconds..."
            set sleep_time 5  # If still disconnected, retry every 5 seconds
        end
    end
    sleep $sleep_time
end

