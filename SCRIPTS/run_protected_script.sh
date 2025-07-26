#!/bin/bash

# Trap Ctrl+C (SIGINT) and require authentication
trap 'echo -e "\n[!] Ctrl+C detected. Authentication required.";
      if pkexec echo "[✓] Authentication successful."; then
        echo "[+] Stopping script..."; exit 0
      else
        echo "[×] Authentication failed. Continuing..."; 
      fi' SIGINT

# Activate Conda environment
conda activate pytorch_cpu

# Run your actual Python script
# python3 /home/jerlshin/FieldOfInterest/Capstone/Code/Visible_Imagery/Advanced_Classifier/FineTuning_with_Labels/finetuning_train.py
python3 /home/jerlshin/ARCH_LINUX/SCRIPTS/dumpy_python_script.py