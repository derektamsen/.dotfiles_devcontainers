# .dotfiles_devcontainers
My dotfiles for devcontainers managed with stow. This is a trimmed down version of [derektamsen/.dotfiles_yadm](https://github.com/derektamsen/.dotfiles_yadm)

These dotfiles are managed using [GNU stow](https://www.gnu.org/software/stow/). `stow` is a simple file manager that
links files from a source directory into a target directory. Since devcontainers, codespaces, and coder already git clone
dotfiles repos, we only need a tool that links things.

## Using

Configure codespaces, vscode, and coder to use this as a dotfiles repo. The development tools should automatically
run `./install` after cloning the repo. The repo is typically cloned to `~/dotfiles`.
