# create file 
$ nvim ~/.config/systemd/user/application.service

-----

[Unit]              ----- describes the service
Description=ActivityWatch      ----- short identifier

[Service]
ExecStart=/opt/activitywatch/aw-qt      ----- command to start the service 
Restart=on-failure          ----- will automatically restart the service if it crashes

[Install]
WantedBy=default.target             ----- when to start the service

-----

# Enable and Start the service 

$ systemctl --user enable activitywatch.service
$ systemctl --user start activitywatch.service

-----

# BASIC SYSTEMD Commands

$ systemctl status <service-name>
$ sudo systemctl start <service-name>
$ sudo systemctl stop <service-name>

# Enable -- runs ervice at startup 

$ sudo systemctl enable <service-name>

$ sudo systemctl stop <service-name>
$ sudo systemctl reload <service-name>


