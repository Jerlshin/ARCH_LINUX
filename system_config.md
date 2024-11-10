## To check and change the java used by arch linux
 
$ java --version
$ archlinux-java status    
 
$ sudo archlinux-java set java-11-openjdk   # to change to 11
$ sudo archlinux-java set java-23-openjdk   # to change to 23
$ export INSTALL4J_JAVA_HOME="/usr/lib/jvm/java-11-openjdk"  # add to fish/zshrc/bash shell
