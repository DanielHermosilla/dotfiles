export PATH="/opt/homebrew/bin:$PATH"
# En tu ~/.zshrc (el de dotfiles)
export PATH="$HOME/Library/Python/3.13/bin:$HOME/.local/bin:/opt/homebrew/bin:$PATH"


# ── P10k instant prompt ───────────────────────────────────────────────────────
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ── oh-my-zsh ─────────────────────────────────────────────────────────────────
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="${ZSH_CUSTOM:-$ZSH/custom}"

# NO usar ZSH_THEME aquí
ZSH_THEME=""

# Plugins (ya funcionan con tus wrappers)
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  web-search
  z
  zsh-navigation-tools
)

source "$ZSH/oh-my-zsh.sh"

# Cargar Powerlevel10k directamente desde Homebrew
if [[ -d /opt/homebrew ]]; then BREW_PREFIX=/opt/homebrew; else BREW_PREFIX=/usr/local; fi
if [[ -r "$BREW_PREFIX/share/powerlevel10k/powerlevel10k.zsh-theme" ]]; then
  source "$BREW_PREFIX/share/powerlevel10k/powerlevel10k.zsh-theme"
fi

# ── Historial / misceláneos ──────────────────────────────────────────────────
HIST_STAMPS="yyyy-mm-dd"

# ── Config de P10k (si existe) / wizard si falta ─────────────────────────────
if [[ -f ~/.p10k.zsh ]]; then
  source ~/.p10k.zsh
else
  print -P "%F{39}Powerlevel10k: iniciando configuración…%f"
  (( $+functions[p10k] )) && p10k configure
fi

