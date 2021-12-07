stty -ixon -ixoff

alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias vi='/Applications/MacVim.app/Contents/MacOS/Vim'

alias gb='git branch'
alias gca='git commit -a'
alias gcam='git commit -a -m'
alias gd='git diff'
alias grb='git rebase -i master'
alias gs='git status'
alias gac='git add . && git rebase --continue'

alias y='yarn'

alias ni='npm i'
alias nr='npm run'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
