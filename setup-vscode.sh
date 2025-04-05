#!/bin/bash

# Detecting OS
OS="$(uname -s)"

case "$OS" in
    Linux*)     OS_TYPE=Linux ;;
    Darwin*)    OS_TYPE=Mac ;;
    CYGWIN*|MINGW*|MSYS*) OS_TYPE=Windows ;;
    *)          OS_TYPE="UNKNOWN"
esac

echo "[+] Operational System: $OS_TYPE"

if [[ "$OS_TYPE" == "Linux" || "$OS_TYPE" == "Mac" ]]; then
    bash setup-vscode-linux.sh
elif [[ "$OS_TYPE" == "Windows" ]]; then
    powershell.exe -ExecutionPolicy Bypass -File setup-vscode-windows.ps1
else
    echo "[!] OS unsupported"
    exit 1
fi
