# to switch between GPU and CPU 

$ optimus-manager --switch <hybrid | integrated>

# to run with gpu 

$ prime-run <application>

# to check the usage on live 

$ nvidia-smi -l 1 
$ nvtop

## TESTING 

$ phoronix-test-suite list-tests 
$ phoronix-test-suite benchmark unigine-heaven
