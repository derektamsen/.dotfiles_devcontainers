# regenerate ~/.zautocomp to include ~/.zsh/functions
if [[ -d "${HOME}/.zsh/functions" ]]; then
  # Expand fpath to include ~/.zsh/functions
  fpath=( "$HOME/.zsh/functions" $fpath )

  autoload -Uz compinit
  compinit
fi

# source configs in .zsh/configs
if [[ -d "${HOME}/.zsh/configs" ]]; then
  for config in $HOME/.zsh/configs/*.zsh; do
    source $config
  done
fi

# source aliases in .zsh/aliases
if [[ -d "${HOME}/.zsh/aliases" ]]; then
  for alias in $HOME/.zsh/aliases/*.zsh; do
    source $alias
  done
fi

# starship.rs
eval "$(starship init zsh)"

# zoxide
eval "$(zoxide init --cmd cd zsh)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
