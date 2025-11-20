setopt hist_ignore_dups

export PATH="${PATH}:$(go env GOPATH)/bin"

# Aliases in interactive, login shell
[[ -f ${ZDOTDIR}/.zsh_aliases ]] && . ${ZDOTDIR}/.zsh_aliases

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

# vim mode
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# atuin
function zvm_after_init() {
   zvm_bindkey viins '^R' atuin-search
}

# nvm
export NVM_DIR="${HOME}/.config/nvm"
[ -s "${NVM_DIR}/nvm.sh" ] && \. "${NVM_DIR}/nvm.sh"  # This loads nvm
[ -s "${NVM_DIR}/bash_completion" ] && \. "${NVM_DIR}/bash_completion"  # This loads nvm bash_completion

export FZF_DEFAULT_OPTS="
  --height 40%
  --layout=reverse
  --border
  --inline-info
  --preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
  --bind 'ctrl-/:toggle-preview'
"

# function
mkd() { mkdir -p "$@" && cd "$@"; }

# gh get function that changes directory
ghg() {
    if [ -z "$1" ]; then
        echo "Usage: ghg <repository>"
        return 1
    fi
    ghq get "$1" && cd "$(ghq root)/$(ghq list | fzf)"
}

# pnpm
export PNPM_HOME="~/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# gopls
export PATH=$PATH:$(go env GOPATH)/bin

# Load local machine-specific settings if present
[[ -f "$HOME/.zshrc.local" ]] && source "$HOME/.zshrc.local"
