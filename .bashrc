# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
  *i*) ;;
  *) return;;
esac

# include extra scripts from .bashrc.d
if [ -d "${HOME}/.bashrc.d" ]; then
  for file in ${HOME}/.bashrc.d/*.sh; do
    if [ -x "${file}" ]; then
      . "${file}"
    fi
  done
fi

# starship
eval "$(starship init bash)"

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
