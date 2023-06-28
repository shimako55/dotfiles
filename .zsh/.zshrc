echo "loading zshrc"

export HISTFILE=${HOME}/.zsh_history

# Aliases in interactive, login shell
[[ -f $ZDOTDIR/.zsh_aliases ]] && . $ZDOTDIR/.zsh_aliases

# starship
eval "$(starship init zsh)"

# direnv
eval "$(direnv hook zsh)"

# golang
export PATH=$PATH:$(go env GOPATH)/bin

# Warpify subshell
printf '\eP$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "zsh"}}\x9c'
