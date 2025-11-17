Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

## Package installation with Windows Package Manager
winget install -e --id 7zip.7zip
winget install Amazon.Kindle
winget install --id XPDM1ZW6815MQM  # VLC Media Player
winget install ChatGPT --source msstore
### Install communication tools
winget install SlackTechnologies.Slack
winget install Zoom.Zoom
winget install Discord.Discord
### Install development tools
winget install --id Git.Git -e --source winget
winget install Node.js --id OpenJS.NodeJS --source winget
winget install -q vscode --scope machine
winget install zed
winget install Obsidian.Obsidian
winget install Notion.Notion
### Install web browsers
winget install Google.Chrome
winget install Vivaldi.Vivaldi
winget install Brave.Brave

### Install npm packages
npm install -g @openai/codex

### Registry tweak to enable classic context menu in Windows 11
$regPath = 'Registry::HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32'
New-Item -Path $regPath -Force
Set-ItemProperty -Path $regPath -Name '(default)' -Value ''

## Git configuration
git config --global core.autocrlf input
git config --global core.quotepath false

wsl --install 'Ubuntu-24.04'
