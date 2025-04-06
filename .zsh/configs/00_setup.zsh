set_bindings() {
  zmodload zsh/complist

  # Use emacs keybindings even if our EDITOR is set to vi
  bindkey -e

  # shift-tab for prior menu selection
  bindkey -M menuselect '^[[Z' reverse-menu-complete
}

set_completion() {
  # Use modern completion system
  autoload -Uz compinit && compinit

  zstyle ':completion:*' auto-description 'specify: %d'
  zstyle ':completion:*' completer _expand _complete _correct _approximate
  zstyle ':completion:*' use-cache on
  zstyle ':completion:*' use-compctl false
  zstyle ':completion:*' verbose true

  zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
  zstyle ':completion:*' list-colors ''

  zstyle ':completion:*:descriptions' format '%F{blue}-- %d --%f'
  zstyle ':completion:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
  zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
  zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'

  zstyle ':completion:*' group-name ''
  zstyle ':completion:*' menu select=2
  zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
  zstyle ':completion:*' list-suffixes
  zstyle ':completion:*' expand prefix suffix

  # Complete . and .. special directories
  zstyle ':completion:*' special-dirs true

  zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
  zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s

  zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
  zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
}

set_history() {
  # Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
  [ -z "$HISTFILE" ] && export HISTFILE="$HOME/.zsh_history"

  # for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
  export HISTSIZE=50000
  export SAVEHIST=10000

  # don't put duplicate lines or lines starting with space in the history.
  # See bash(1) for more options
  setopt hist_ignore_dups
  setopt hist_ignore_space

  # add timestamps to history and write them immediately
  export HISTTIMEFORMAT="[%F %T] "
  setopt extended_history
  setopt share_history

  # expand history before execution
  setopt hist_verify
}

# set lscolors for macos and dircolors for linux
set_dircolors() {
  export CLICOLORS=1
  export LSCOLORS=ExFxBxDxCxegedabagacad
  [ -x /usr/bin/dircolors ] && eval "$(dircolors -b)"
}

set_bindings
set_completion
set_history
set_dircolors
