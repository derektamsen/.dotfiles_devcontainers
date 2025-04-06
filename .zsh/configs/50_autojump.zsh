set_autojump() {
  case "${OSTYPE}" in
    linux-gnu*)
      [ -f /usr/share/autojump/autojump.sh ] && . /usr/share/autojump/autojump.sh
    ;;
    darwin*)
      [ -f $(brew --prefix)/etc/profile.d/autojump.sh ] && . $(brew --prefix)/etc/profile.d/autojump.sh
    ;;
  esac
}

set_autojump
