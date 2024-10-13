# Neovim Configuration
This is the Neovim configuration I'm currently using. I recently started using Neovim for bash scripting and want to begin with a basic setup. This will be a work in progress for a while. Who knows, maybe I'll switch to Neovim completely in the future.

## Installation
1. Install all dependencies
```bash
sudo apt update
sudo apt upgrade -y
sudo apt install build-essential -y
sudo apt install unzip -y
sudo apt install luarocks -y
sudo apt install ripgrep -y
sudo apt install fd-find -y
wget https://github.com/equalsraf/win32yank/releases/download/v0.1.1/win32yank-x64.zip -O /tmp/win32yank.zip
unzip /tmp/win32yank.zip -d /tmp/win32yank
sudo mv /tmp/win32yank/win32yank.exe /usr/local/bin/
export PATH=$PATH:/usr/local/bin
sudo apt install nodejs npm -y
sudo npm install -g bash-language-server
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm lazygit lazygit.tar.gz
```
2. Install Neovim
```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
export PATH="$PATH:/opt/nvim-linux64/bin"
rm nvim-linux64.tar.gz
```
3. Configure git user
```bash
git config --global user.name "Your Name"
git config --global user.email "Your Email"
```
4. Clone this repository to `~/.config/nvim`
```bash
mkdir -p ~/.config
mkdir -p ~/.config/lazygit
git clone https://github.com/jappoman/neovim-config.git ~/.config
```