# To move all the files except folder to another directory 
$ find . maxdepth 1 -type f -exec mv {} ./Folder/ \;

# To change the all the files to some other format

for file in *.pptx                                      
    libreoffice --headless -convert-to pdf "$file" 
end

# To change the file names 

for file in *.pdf
    set new_name (string replace -r 'UNWANTED_TEXT' '' "$file")
    mv "$file" "$new_name"
end


----

for dir in *.ipynb; mv $dir (string replace ".ipynb" "" $dir); end

# To rename complex patterns 

set pattern 'I_[0-9]{2}-[0-9]{2}-[0-9]{4}_[0-9]_*'

for file in *.pdf
    # Remove unwanted text using string replace
    set new_name (string replace -r "$pattern" '' "$file")
    # Rename the file
    mv "$file" "$new_name"
end

# To move last few files w.r.t time to another 

$ ls -tr | tail -n 5 | xargs -I {} mv {} /path/to/directory

# To Play with Files 

- To list no of files in directory

$ ls -1 | wc -l 
$ find . -maxdepth 1 -type f | wc -l 
$ tree 

- To list only directories 

$ ls -d */ 
$ find . -maxdepth 1 -type d 
$ ls -l | grep '^d'
$ tree -d -L 1   

### File name processing

To get the number of files in the directory
$ ls | wc -l     
$ count * 

### Finding unique file extensions in a directory

$ find . -type f -printf '%f\n' | awk -F '.' '{print $NF}' | sort | uniq 

Searches the directory and its sub-directories for regular files and prints the filename of each file on a seperate line
$ find . -type f -printf '%f\n' 

Uses "awk" to split each filename on the dot '.' character. Prints the last field NF (Number of Fields), which is the file extension. (-F) is the Field seperator 
$ awk -F '.' '{print $NF}'

The 'sort' and 'uniq' commands sorts and list downs the unique names

### To move files to directory within a directory

Termination at last (\;) is important to end the '-exec' command   
$ find . -type f -exec mv {} ./folder \;


## Shell 

> crtl + k ==> cut till the line end from the pointer
> crtl + u ==> cut everything before the pointer
> crtl + y ==> to past 
> crtl + w ==> deletes one word 

To reset the terminal 

$ reset 

## File Management

Find files faster

$ fd search-term

Powerfull disk usage analyzer

$ ncdu

# To deep move files from many directories to another directory

$ find . -name 'extractions' -type d -print0 | xargs -0 -I {} sh -c 'cp -rt ../../Rice_RGB/Chithrakar/ {}/*'

```
-print0: it prints full path of each found directory, seperated by a null character \0 

xargs -0 -I {}: takes the null-seperated input from the pipe and prepares it for the cp command. -0 tells xargs to expect null-seperated input. -I {} placeholder, xargs will replace this placeholder with each directory path it receives. 


sh -c "...." : runs a command within a new Shell

cp -rt /path/ {}/* : -r for recursive. -t to specify target, 
```

## To copy large files from one directory to another directory

$ rsync --parital --progress <source_file> <destination_file>
$ rsync -P <source_file> <destination_file>

To preserve the attributes
$ rsync -aP <source_file> <destination_file>

### To see the progress of the operation


## To check the battery percentage

$ cat /sys/class/power_supply/BAT0/capacity
$ cat /sys/class/power_supply/BAT0/status

# To view synchronous files

$ less -f output.txt 

# Packages

Queries the packages database.

$ pacman -Q

To see only the packages that you explicitly installed

$ pacman -Qe

If you just want a clean list of package names without the version numbers

$ pacman -Qq
