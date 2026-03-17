# ----------------------
# Oh My Zsh
# ----------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# ----------------------
# Load Modular Configs
# ----------------------
source ~/dotfiles/shell/env.sh
source ~/dotfiles/shell/node.sh
source ~/dotfiles/shell/aliases.sh

# ----------------------
# Local Overrides
# ----------------------
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
