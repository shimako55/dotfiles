export EDITOR=nvim
export HISTFILE=${HOME}/.zsh_history
export PATH=$PATH:$(go env GOPATH)/bin
export RUNEWIDTH_EASTASIAN=0
export PATH="${HOMEBREW_PREFIX}/opt/openssl/bin:$PATH"
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
