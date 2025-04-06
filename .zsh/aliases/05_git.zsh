# switch the current directory git repo checkout from bitbucket to github
switchcurrentrepogithub() {
  git remote set-url origin $(git remote get-url origin | sed 's/bitbucket\.org/github.com/')
}
