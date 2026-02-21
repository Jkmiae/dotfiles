# Chemin vers ton installation Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

# Choix du thème
ZSH_THEME="gnzh"

# Lance fastfetch au démarrage
source ~/scripts/random_shell_image.sh

fastfetch


# 1. On définit les plugins Oh My Zsh standards (ceux inclus de base)
plugins=(git sudo copydir copyfile copypath dirhistory zsh-autosuggestions zsh-syntax-highlighting
          you-should-use)

# 2. Charge Oh My Zsh (C'est ICI que les plugins ci-dessus sont activés)
source $ZSH/oh-my-zsh.sh

