#!/bin/bash
clear
echo "======================================"
echo "   Termux Ultimate Hacking Pack"
echo "          All-in-One Installer"
echo "======================================"

sleep 1

echo "[+] Updating system..."
pkg update -y && pkg upgrade -y

echo "[+] Installing dependencies..."
pkg install -y python python2 php git curl wget nano unzip zip ruby clang openssl-tool

echo "[+] Installing Nmap..."
pkg install -y nmap

echo "[+] Installing SQLMap..."
git clone https://github.com/sqlmapproject/sqlmap ~/sqlmap

echo "[+] Installing Dirsearch..."
git clone https://github.com/maurosoria/dirsearch ~/dirsearch

echo "[+] Installing XSStrike..."
git clone https://github.com/s0md3v/XSStrike ~/XSStrike

echo "[+] Installing ZPhisher..."
git clone https://github.com/htr-tech/zphisher ~/zphisher

echo "[+] Installing RED_HAWK..."
git clone https://github.com/Tuhinshubhra/RED_HAWK ~/RED_HAWK

echo "[+] Installing PhoneInfoga..."
git clone https://github.com/sundowndev/phoneinfoga ~/phoneinfoga

echo "[+] Installing Subfinder..."
pkg install subfinder -y

echo "[+] Installing Hydra..."
pkg install -y hydra

echo "[+] Installing Nikto..."
git clone https://github.com/sullo/nikto ~/nikto

echo "[+] Installing WhatWeb..."
pkg install whatweb -y

echo "[+] Installing RustScan..."
pkg install rustscan -y

echo "[+] Installing Netcat & Tshark..."
pkg install -y netcat-openbsd tcpdump tshark

echo "[+] Installing Metasploit (may take time)..."
pkg install unstable-repo -y
pkg install metasploit -y

echo ""
echo "======================================"
echo "  Installation Complete!"
echo "  Example usage:"
echo "  python ~/sqlmap/sqlmap.py"
echo "  bash ~/zphisher/zphisher.sh"
echo "======================================"
