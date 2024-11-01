## To get the default file type 
$ xdg-mime query filetype <file> 

## To find applications 
$ ls /usr/share/applications/ | grep '*microsoft*'
$ find /usr/share/applications/ -name '*microsoft*'

## To change the default files
$ nvim ~/.config/mimeapps.list
$ xdg-settings get default-web-browser


