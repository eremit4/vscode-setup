Write-Host "[+] Installing VS Code extensions"

$extensions = @(
    "ms-python.python",
    "ms-python.vscode-pylance",
    "magicstack.MagicPython",
    "ms-toolsai.jupyter",
    "charliermarsh.ruff",
    "ms-python.debugpy",
    "njpwerner.autodocstring",
    "garytyler.darcula-pycharm-theme"
)

foreach ($ext in $extensions) {
    code --install-extension $ext
}

Write-Host "[+] Applying settings in <settings.json>"

$settingsPath = "$env:APPDATA\Code\User\settings.json"

@"
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
    "python.venvPath": "\${workspaceFolder}\\.venv",
    "python.defaultInterpreterPath": "\${workspaceFolder}\\.venv\\Scripts\\python.exe"
}
"@ | Set-Content -Path $settingsPath -Encoding UTF8

Write-Host "[✓] All set! Virtualenv, font and theme configured in VS Code."
