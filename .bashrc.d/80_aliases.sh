ls_aliases() {
  # some more ls aliases
  alias ll='ls -alhF'
  alias la='ls -A'
  alias l='ls -CF'
}

diff_aliases() {
  # side-by-side diff
  alias sdiff='vim -d'
}

alert_aliases() {
  # Add an "alert" alias for long running commands.  Use like so:
  #   sleep 10; alert
  alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
}

watch_aliases() {
  # add highlight differences and support colors
  alias watch='watch -cd'
}

# alias to help with case conversions
upper2lower () {
  echo "${@}" | tr '[:upper:]' '[:lower:]'
}

lower2upper () {
  echo "${@}" | tr '[:lower:]' '[:upper:]'
}

# Get ASCII weather charts for either a default area or by city name
weather () {
  curl "http://wttr.in/${1:San%20Francisco,%20CA}"
}

copy_paste_aliases() {
  # clipboard copy and pasting
  alias clipcopy='xclip -selection c'
  alias xclip='xclip -selection c'
  alias clippaste='xclip -o -selection c'
}

serialized_data_aliases() {
  # read and output yaml in color
  alias yq='yq read -C -'
}

ls_aliases
diff_aliases
alert_aliases
watch_aliases
copy_paste_aliases
serialized_data_aliases
