
$ disown <PID>     # to disown a application from the terminal
$ pidof <application_name>     # to get the process id of the application 
$ pgrep <application_name>    # to get the PID of the app 
$ 

# To check for the free space

$ free -h 

$ swapon --show

# Swap files

$ sudo nvim /etc/systemd/zram-generator.conf

[
[zram0]
zram-size = 8192                    # for 8 gb swap space - x gb * 1024
compression-algorithm = zstd 
]

$ sudo swapoff /dev/zram0

$ sudo systemctl daemon-reload

$ sudo reboot

$ swapon --show


