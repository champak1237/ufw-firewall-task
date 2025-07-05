#!/bin/bash

echo "[+] Updating system..."
sudo apt update

echo "[+] Installing UFW..."
sudo apt install ufw -y

echo "[+] Allowing SSH..."
sudo ufw allow ssh

echo "[+] Denying HTTP..."
sudo ufw deny http

echo "[+] Enabling UFW..."
sudo ufw --force enable

echo "[+] Firewall Status:"
sudo ufw status verbose
ufw_configuration.sh