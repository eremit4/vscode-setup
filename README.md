# VS Code - Python Setup

A simple, cross-platform script to configure Visual Studio Code for Python development with productivity extensions, proper theming, formatting tools, and virtual environment support — all in one go.

## 👾 Features

- Installs essential extensions:
  - Python (ms-python.python)
  - Pylance
  - Jupyter
  - Ruff (linter)
  - Debugpy
  - MagicPython
  - AutoDocstring
  - Darcula PyCharm Theme (by garytyler)
- Applies customized `settings.json`:
  - Snake_case formatting with `sphinx` docstrings
  - Auto format on save/paste/type
  - Auto-save files after delay
  - JetBrains Mono font with ligatures
  - Virtualenv support with local `.venv` folder
  - PyCharm-style dark theme
- Works on:
  - Linux
  - macOS
  - WSL
  - Windows

## 📁 Project Structure

```
vscode-setup/
├── setup-vscode.sh               # Main launcher (auto-detects OS)
├── setup-vscode-linux.sh         # Bash script for Linux/macOS/WSL
├── setup-vscode-windows.ps1      # PowerShell script for Windows
└── README.md                     # You're here
```

## 👨🏻‍💻 How to Use

### Linux / macOS / WSL

```bash
chmod +x setup-vscode.sh setup-vscode-linux.sh
./setup-vscode.sh
```

### Windows (PowerShell) 

- Right click on `setup-vscode.sh` and open with Git Bash **or**
- Run manually in PowerShell:

```powershell
Set-ExecutionPolicy Bypass -Scope Process
.\setup-vscode-windows.ps1
```

## 🔤 Font Requirement

Make sure to install [JetBrains Mono](https://www.jetbrains.com/lp/mono/) on your system for best results.

## 📌 Notes

- Requires [VS Code](https://code.visualstudio.com/) installed and accessible via the `code` CLI command.
- The virtual environment path is assumed to be `.venv` inside your project folder.
- You can customize the `settings.json` to adjust font size, format style, or interpreter paths.


