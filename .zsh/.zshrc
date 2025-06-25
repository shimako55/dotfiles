setopt hist_ignore_dups

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
function zvm_after_init() {
   zvm_bindkey viins '^R' atuin-search
}

export NVM_DIR="${HOME}/.config/nvm"
[ -s "${NVM_DIR}/nvm.sh" ] && \. "${NVM_DIR}/nvm.sh"  # This loads nvm
[ -s "${NVM_DIR}/bash_completion" ] && \. "${NVM_DIR}/bash_completion"  # This loads nvm bash_completion

mkd() { mkdir -p "$@" && cd "$@"; }
