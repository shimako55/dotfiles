echo "loading env"

export PATH="${HOMEBREW_PREFIX}/opt/openssl/bin:$PATH"

export ZDOTDIR="${HOME}/dotfiles/.zsh"
export EDITOR=nvim

export HISTSIZE=1000
export SAVEHIST=100000
setopt hist_ignore_dups

# Aliases in env shell
[[ -f $ZDOTDIR/.zsh_aliases_env ]] && . $ZDOTDIR/.zsh_aliases_env
