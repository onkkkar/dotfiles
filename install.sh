#!/bin/bash
set -e

echo "🚀 Setting up your dev environment..."

OS="$(uname)"
echo "Detected OS: $OS"

# ----------------------
# Install base packages
# ----------------------
if [[ "$OS" == "Darwin" ]]; then
  if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi

  brew install git curl zsh

elif [[ "$OS" == "Linux" ]]; then
  sudo apt update
  sudo apt install -y git curl zsh
fi

# ----------------------
# Install Oh My Zsh
# ----------------------
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "Installing Oh My Zsh..."
  RUNZSH=no CHSH=no sh -c \
    "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# ----------------------
# Install Zsh Plugins
# ----------------------
ZSH_CUSTOM=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}

git clone https://github.com/zsh-users/zsh-autosuggestions \
  $ZSH_CUSTOM/plugins/zsh-autosuggestions 2>/dev/null || true

git clone https://github.com/zsh-users/zsh-syntax-highlighting \
  $ZSH_CUSTOM/plugins/zsh-syntax-highlighting 2>/dev/null || true

# ----------------------
# Install NVM
# ----------------------
if [ ! -d "$HOME/.nvm" ]; then
  echo "Installing NVM..."
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
fi

# Load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

# ----------------------
# Install Node LTS
# ----------------------
nvm install --lts
nvm alias default 'lts/*'

# ----------------------
# Link dotfiles
# ----------------------
echo "Linking dotfiles..."

ln -sf "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"
ln -sf "$HOME/dotfiles/.bashrc" "$HOME/.bashrc"
ln -sf "$HOME/dotfiles/.bash_profile" "$HOME/.bash_profile"
ln -sf "$HOME/dotfiles/.gitconfig" "$HOME/.gitconfig"
ln -sf "$HOME/dotfiles/.gitignore_global" "$HOME/.gitignore_global"

# ----------------------
# Set default shell
# ----------------------
chsh -s $(which zsh) || true

echo "✅ Setup complete! Restart terminal."
