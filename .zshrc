# zsh configuration

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt hist_verify
setopt correct

# Key bindings
bindkey -e
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Aliases
alias g='git'
alias gs='git status'
alias gl='git lg'
alias gd='git diff'
alias vim='nvim'
alias v='nvim'
alias cat='bat --style=plain'
alias rustc='rustc'
alias cargo-watch='cargo watch -x test'

# Rust paths
export PATH="$HOME/.cargo/bin:$PATH"
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/library"

# Editor
export EDITOR='nvim'
export VISUAL='nvim'

# Prompt (minimal, no framework)
autoload -U colors && colors
PROMPT='%{$fg[blue]%}%~%{$reset_color%} %{$fg[green]%}»%{$reset_color%} '

# tmux
if [ -z "$TMUX" ] && [ -z "$SSH_TTY" ]; then
    tmux attach || tmux new
fi
