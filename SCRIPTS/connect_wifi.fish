#!/usr/bin/env fish 

set ssid "VITC-HOS2-4"

while true
  # attempt to connect
  nmcli device wifi connect $ssid

  # check if the connection was successful
  if nmcli -t -f active,ssid dev wifi | grep -q "^yes:$ssid"
    echo "Connected to $ssid"
    break
  else
    echo "Failed to connect to $ssid. Retrying in 5 sec brother in christ...."
    sleep 5
  end 
end


