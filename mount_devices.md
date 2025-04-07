$ lsblk    # list block devices
$ fdisk -lh

# Identify the type of file system

$ sudo mount /dev/sda1 /mnt

# If ntfs

$ sudo pacman -S ntfs-3g
$ sudo mount -t ntfs-3g /dev/sda1 /mnt 

# mounted to the /mnt/

$ sudo mkdir -p /mnt/usb_point1

$ sudo umount /mnt

$ df -h


# Formating a Pendrive

* Identify the pendrive

$ lsblk
$ sudo fdisk -l 

* Unmount the pendrive 

Check if the pendrive is mounted

$ df -h

Unmoung the device 

$ sudo umount /dev/<sdbx>

* Format the pendrive

Formating using different filesystems depending on need

$ sudo mkfs.vfat -F 32 /dev/<sdbx>

* Mount back the device 

$ sudo mount /dev/sdb1 /mnt 


