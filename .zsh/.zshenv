echo "loading zshenv"

export PATH="${HOMEBREW_PREFIX}/opt/openssl/bin:$PATH"

export ZDOTDIR="${HOME}/dotfiles/.zsh"
export EDITOR=nvim

export HISTSIZE=1000
export SAVEHIST=100000
setopt hist_ignore_dups

[ -f $ZDOTDIR/.zshenv_local ] && . $ZDOTDIR/.zshenv_local

export RUNEWIDTH_EASTASIAN=0
