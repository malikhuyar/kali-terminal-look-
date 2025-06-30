#!/bin/bash

echo "🌟 Starting Kali Terminal Beautification..."

# Update system
sudo apt update && sudo apt upgrade -y

# Install dependencies
sudo apt install -y zsh git curl wget fonts-powerline neofetch bat lsd python3-pip

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

# Set Powerlevel10k theme
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc

# Install plugins
git clone https://github.com/zsh-users/zsh-autosuggestions \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Add plugins to .zshrc
sed -i 's/plugins=(.*/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc

# Set Zsh as default shell
chsh -s $(which zsh)

# Install Pywal
pip3 install --user pywal

echo "🎉 Done! Restart your terminal or run 'zsh' to see changes."
echo "⚙️ To configure Powerlevel10k, type: p10k configure"

