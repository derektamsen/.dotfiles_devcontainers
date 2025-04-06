set_editor() {
  # Setup editor
  export EDITOR="code --wait"
  export LESSEDIT="${EDITOR}"

  # Configure the editor aliases and vars
  alias edit="${EDITOR}"
  export GIT_EDITOR="${EDITOR}"
}

set_editor
