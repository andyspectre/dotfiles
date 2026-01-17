# Dotfiles

Personal configuration files for shell and development environment.

## Contents

- `.bashrc` - Bash shell configuration
- `.vimrc` - Vim editor configuration
- `.vim/` - Vim plugins and autoload scripts
- `.gitconfig` - Git configuration
- `.selected_editor` - Default editor selection

## Installation

To use these dotfiles on a new system, symlink them to your home directory:

```bash
ln -sf ~/Repos/github.com/andyspectre/dotfiles/.bashrc ~/.bashrc
ln -sf ~/Repos/github.com/andyspectre/dotfiles/.vimrc ~/.vimrc
ln -sf ~/Repos/github.com/andyspectre/dotfiles/.vim ~/.vim
ln -sf ~/Repos/github.com/andyspectre/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/Repos/github.com/andyspectre/dotfiles/.selected_editor ~/.selected_editor
```

## Notes

The `.vim/plugged/` directory contains vim plugins that are currently tracked as embedded repositories. These may need to be converted to git submodules in the future.
