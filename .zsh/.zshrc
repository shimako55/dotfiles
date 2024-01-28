echo "loading zshrc"

export HISTFILE=${HOME}/.zsh_history

export PATH=$PATH:$(go env GOPATH)/bin

# Aliases in interactive, login shell
[[ -f $ZDOTDIR/.zsh_aliases ]] && . $ZDOTDIR/.zsh_aliases

# starship
eval "$(starship init zsh)"

# direnv
eval "$(direnv hook zsh)"

# zoxide
eval "$(zoxide init zsh --cmd=j)"

# asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# atuin
eval "$(atuin init zsh --disable-up-arrow)"
