
export PATH="/opt/homebrew/bin:$PATH"

# -----------------------------------------------------------------------------
# Powerlevel10k instant prompt (debe ir arriba del todo)
# -----------------------------------------------------------------------------
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# -----------------------------------------------------------------------------
# Path to oh-my-zsh
# -----------------------------------------------------------------------------
export ZSH="$HOME/.oh-my-zsh"

# -----------------------------------------------------------------------------
# Theme (Powerlevel10k recomendado, puedes cambiar a "refined" si prefieres)
# -----------------------------------------------------------------------------
ZSH_THEME="powerlevel10k/powerlevel10k"

# -----------------------------------------------------------------------------
# Plugins
# -----------------------------------------------------------------------------
# Los plugins instalados con brew se symlinkean a $ZSH_CUSTOM/plugins
# git, web-search y z ya vienen en oh-my-zsh
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  web-search
  z
  zsh-navigation-tools
)

# -----------------------------------------------------------------------------
# Load oh-my-zsh
# -----------------------------------------------------------------------------
source $ZSH/oh-my-zsh.sh

# -----------------------------------------------------------------------------
# Opcionales: activa estas líneas si prefieres sourcear desde Homebrew directamente
# (por ejemplo si no creaste symlinks en $ZSH_CUSTOM/plugins)
# -----------------------------------------------------------------------------
# if [ -d /opt/homebrew ]; then
#   BREW_PREFIX=/opt/homebrew
# else
#   BREW_PREFIX=/usr/local
# fi
# source $BREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# source $BREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# -----------------------------------------------------------------------------
# Historial y otras opciones útiles
# -----------------------------------------------------------------------------
HIST_STAMPS="yyyy-mm-dd"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"

# -----------------------------------------------------------------------------
# Powerlevel10k configuration (si existe ~/.p10k.zsh)
# -----------------------------------------------------------------------------
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

