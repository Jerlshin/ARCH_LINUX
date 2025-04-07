### Add user

$ sudo useradd -m <username>
$ sudo passwd <username>

### Setting up environment

* Setting up shell configurations

$ su - <username>
$ grep <username> /etc/passwd

$ source ~/.bashrc 

### Grant sudo privileges

$ sudo usermod -aG sudo <username>

$ sudo whoami

#### shell

$ sudo apt update
$ sudo apt install fish
$ nvim ~/.config/fish/config.fish
$ cat /etc/shells

* Change default shell

$ chsh -s /usr/bin/fish <username>
$ echo $SHELL 

* Check the active shell

$ ps -p $$


### Setup work environment

$ python3 --version

$ sudo apt install python3
$ sudo apt install python3-venv

$ python3 -m venv <env_name>

$ source <env_name>/bin/activate 

