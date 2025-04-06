ls_aliases() {
  # some more ls aliases
  alias ls='ls --color=auto'
  alias ll='ls -alhF'
  alias la='ls -A'
  alias l='ls -CF'
}

grep_aliases() {
  alias grep='grep --color=auto'
  alias egrap='egrep --color=auto'
  alias fgrep='fgrep --color=auto'
}

diff_aliases() {
  # side-by-side diff
  alias sdiff='vim -d'
}

history_aliases() {
  alias history='history -f'
}

history_kubernetes() {
  alias k='kubectl'
  alias kctx='kubectx'
  alias kns='kubens'
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
  curl "http://wttr.in/${1:=San%20Francisco,%20CA,%20USA}"
}

copy_paste_aliases() {
  # clipboard copy and pasting
  alias clipcopy='xclip -selection c'
  alias xclip='xclip -selection c'
  alias clippaste='xclip -o -selection clip'
}

serialized_data_aliases() {
  # read and output yaml in color
  alias yqr='yq read -C -'
}

ls_aliases
grep_aliases
diff_aliases
history_aliases
history_kubernetes
alert_aliases
watch_aliases
copy_paste_aliases
serialized_data_aliases
