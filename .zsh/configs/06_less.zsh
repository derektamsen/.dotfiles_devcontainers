set_less_pipe() {
  # make less more friendly for non-text input files, see lesspipe(1)
  [ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"
}

set_less_pipe
