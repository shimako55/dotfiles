export EDITOR=nvim
export HISTFILE=${HOME}/.zsh_history
export PATH=$PATH:$(go env GOPATH)/bin
export PATH="${HOMEBREW_PREFIX}/opt/openssl/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="${HOME}/.local/bin:$PATH"
export RUNEWIDTH_EASTASIAN=0
export TENV_AUTO_INSTALL=true


export XDG_CONFIG_HOME=$HOME/.config

export HISTSIZE=1000
export SAVEHIST=100000

setopt hist_ignore_dups

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

# vim mode
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
function zvm_after_init() {
   zvm_bindkey viins '^R' atuin-search
}

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

mkd() { mkdir -p "$@" && cd "$@"; }
