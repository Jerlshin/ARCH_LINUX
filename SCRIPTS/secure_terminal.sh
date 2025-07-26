#!/bin/bash

# Trap terminal close attempts (via WM or kill)
trap 'echo -e "\n[!] Attempt to close terminal detected. Authentication required.";
      if pkexec echo "[✓] Closure authorized."; then
        echo "[+] Closing terminal..."; exit 0
      else
        echo "[×] Denied. Terminal remains open.";
      fi' SIGHUP SIGTERM SIGINT

# Run your secure script
/home/jerlshin/ARCH_LINUX/SCRIPTS/run_protected_script.sh &

# Keep terminal alive and immune to kill attempts
while true; do
  sleep 1
done
