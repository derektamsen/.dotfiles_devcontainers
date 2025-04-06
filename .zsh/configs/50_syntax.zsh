set_highlighting() {
  case "${OSTYPE}" in
    linux-gnu*)
      [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && . /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    ;;
    darwin*)
      [ -f $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    ;;
  esac
}

set_highlighting
