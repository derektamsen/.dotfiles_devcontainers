set_terminal_colors() {
  # Enable terminal colors
  export CLICOLOR=1

  if [ -n "$DISPLAY" -a "$TERM" == "xterm" ]; then
    export TERM=xterm-256color
  fi
}

color_aliases() {
  # enable color support of ls and also add handy aliases
  export CLICOLORS=1
  export LSCOLORS=ExFxBxDxCxegedabagacad
  if [ -x /usr/bin/dircolors ]; then
    export GREP_COLOR='1;37;41'
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --line-number --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
  fi
}

set_terminal_colors
color_aliases
