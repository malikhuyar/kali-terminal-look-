# 🌈 Kali Terminal Beautifier – One Command Setup

Make your Kali Linux terminal look **modern**, **powerful**, and **beautiful** in one single command.

This guide sets up:
- ⚡ Zsh with Oh My Zsh
- 🎨 Powerlevel10k Theme
- 🧠 Plugins (autosuggestions + syntax highlighting)
- 🔠 Nerd Fonts
- 🖼️ Tools like Neofetch, LSD, Bat, and Pywal
- All setup in a clean and professional look

---

## 🛠️ What It Installs

- **Zsh** – A better shell
- **Oh My Zsh** – Framework for managing Zsh
- **Powerlevel10k** – Beautiful, fast, and customizable theme
- **zsh-autosuggestions** – Inline command suggestions
- **zsh-syntax-highlighting** – Highlighting for better readability
- **fonts-powerline** – Font icons for prompts
- **Neofetch** – System info on terminal launch
- **LSD** – Better `ls` command
- **Bat** – Better `cat` command
- **Pywal** – Generate terminal color schemes from images

---

## 📥 One Command Installation

```bash
bash <(curl -s https://raw.githubusercontent.com/malikhuyar/kali-terminal-look-/main/install.sh)
```

---

## 💻 What Your Terminal Will Look Like

> Add a screenshot in your repo as `screenshot.png`  
> Example Markdown:
> ![screenshot](https://raw.githubusercontent.com/malikhuyar/kali-terminal-look-/main/screenshot.png)

---

## 🧪 After Installation

- Restart your terminal or type:
  ```bash
  zsh
  ```

- Then run the Powerlevel10k wizard:
  ```bash
  p10k configure
  ```

---

## 👨‍🔧 Uninstall or Revert to Bash

If you want to switch back to Bash:
```bash
chsh -s /bin/bash
```

---

## 📄 Full Installation Script (`install.sh`)

> This is the exact script used in the one-liner above. You can also run it manually.

```bash
#!/bin/bash

echo "🌟 Starting Kali Terminal Beautification..."

# Update system
sudo apt update && sudo apt upgrade -y

# Install Zsh, Git, and other tools
sudo apt install -y zsh git curl wget fonts-powerline neofetch bat lsd python3-pip

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

# Set Powerlevel10k as theme
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc

# Install Zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Enable plugins
sed -i 's/plugins=(.*/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc

# Set Zsh as default shell
chsh -s $(which zsh)

# Install Pywal for dynamic themes
pip3 install --user pywal

echo ""
echo "✅ All done!"
echo "👉 Restart your terminal or run 'zsh' now"
echo "👉 To configure theme, type: p10k configure"
```

---

## 📁 Manual Installation (if preferred)

```bash
git clone https://github.com/malikhuyar/kali-terminal-look-.git
cd kali-terminal-look-
chmod +x install.sh
./install.sh
```

---

## 👨‍💻 Author

**Malik Aliyan**  
[GitHub Profile](https://github.com/malikhuyar)

---

## 📃 License

Licensed under the [MIT License](https://choosealicense.com/licenses/mit/)

---

⭐ *Star this repository if it made your terminal awesome!*
