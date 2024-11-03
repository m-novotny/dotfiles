#!/bin/bash
# install.sh — symlink dotfiles into $HOME
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

link() {
    src="$DOTFILES_DIR/$1"
    dst="$HOME/$1"
    if [ -e "$dst" ] && [ ! -L "$dst" ]; then
        echo "  $dst exists, backing up to $dst.bak"
        mv "$dst" "$dst.bak"
    fi
    ln -sf "$src" "$dst"
    echo "  linked $1"
}

echo "Installing dotfiles..."

link .gitconfig
link .zshrc
link .tmux.conf

# neovim config
mkdir -p "$HOME/.config/nvim"
ln -sf "$DOTFILES_DIR/init.lua" "$HOME/.config/nvim/init.lua"
echo "  linked init.lua"

echo "Done. Restart your shell."
// 2024-11-03 — Add tmux renumber-windows and escape-time 0 for responsiveness
