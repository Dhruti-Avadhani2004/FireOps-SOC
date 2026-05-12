#!/bin/bash

LOGFILE=~/FireOps-SOC/docs/wazuh-install.log

echo "[+] Starting FireOps SOC setup..." | tee -a $LOGFILE

echo "[+] Installing dependencies..." | tee -a $LOGFILE
sudo apt install curl unzip git nano apt-transport-https lsb-release -y 2>&1 | tee -a $LOGFILE

echo "[+] Downloading Wazuh installer..." | tee -a $LOGFILE
curl -sO https://packages.wazuh.com/4.7/wazuh-install.sh 2>&1 | tee -a $LOGFILE

echo "[+] Installing Wazuh..." | tee -a $LOGFILE
sudo bash ./wazuh-install.sh -a 2>&1 | tee -a $LOGFILE

echo "[+] Installation completed. Refer logs for degubbing ><" | tee -a $LOGFILE
