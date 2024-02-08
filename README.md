# Marek's dotfiles

Personal configuration files for my development setup.

## What's inside

- `.gitconfig` — git aliases, signing, sane defaults
- `.zshrc` — zsh with history tweaks, cargo paths, prompt
- `.tmux.conf` — tmux with vi-mode, mouse support, custom prefix
- `init.lua` — neovim config (minimal, LSP, treesitter)
- `install.sh` — symlinks everything into `$HOME`

## Install

```bash
git clone https://github.com/m-novotny/dotfiles.git ~/dotfiles
cd ~/dotfiles && ./install.sh
```

## Environment

- macOS / Linux
- zsh + tmux + neovim
- Rust toolchain via rustup
- Editor: neovim with LSP (rust-analyzer)
