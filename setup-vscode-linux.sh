#!/bin/bash

echo "[+] Installing VSCode extensions"

code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension magicstack.MagicPython
code --install-extension ms-toolsai.jupyter
code --install-extension kevinrose.vsc-python-indent
code --install-extension charliermarsh.ruff
code --install-extension ms-python.debugpy
code --install-extension njpwerner.autodocstring
code --install-extension garytyler.darcula-pycharm-theme

echo "[+] Applying settings in <settings.json>"

VSCODE_USER_SETTINGS_PATH="$HOME/.config/Code/User/settings.json"

cat > "$VSCODE_USER_SETTINGS_PATH" << 'EOF'
{
    "autoDocstring.docstringFormat": "sphinx",
    "autoDocstring.generateDocstringOnEnter": true,
    "editor.formatOnType": true,
    "editor.formatOnSave": true,
    "editor.formatOnPaste": true,
    "files.autoSave": "afterDelay",
    "files.autoSaveDelay": 1000,
    "extensions.ignoreRecommendations": true,
    "security.workspace.trust.untrustedFiles": "open",
    "workbench.colorTheme": "Darcula Pycharm with Dark GUI",
    "editor.fontFamily": "'JetBrains Mono', Consolas, 'Courier New', monospace",
    "editor.fontLigatures": true,
    "editor.fontSize": 14,
    "python.terminal.activateEnvironment": true,
    "python.venvPath": "${workspaceFolder}/.venv",
    "python.defaultInterpreterPath": "${workspaceFolder}/.venv/bin/python"
}
EOF

echo "[✓] All set! Virtualenv, font and theme configured in VS Code."
