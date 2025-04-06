set_suggest() {
  case "${OSTYPE}" in
    linux-gnu*)
      [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ] && . /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    ;;
    darwin*)
      [ -f $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    ;;
  esac
}

set_suggest
