# Fdisk 

It is used to view the partition table, create new partitions, delete and modify parition types

$ sudo fdisk /dev/<sdax>

Use 'p' for view partition table, 'd' for deleting partition table, 'n' for creating the parition 
'w' to save the changes 
'q' to discard the changes

* Format it 

$ sudo mkfs.ext4 /dev/<sdax> 

### Check the filesystem type 

$ sudo blkid /dev/<sdax>



