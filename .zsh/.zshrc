echo "loading zshrc"

export HISTFILE=${HOME}/.zsh_history
# export OPENAI_API_KEY=$(gpg --decrypt ~/.credentials/secret.txt.gpg 2>/dev/null)
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

eval "$(atuin init zsh)"

# atuin
echo 'eval "$(atuin init zsh --disable-up-arrow)"' >> ~/.zshrc