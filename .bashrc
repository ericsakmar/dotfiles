stty -ixon -ixoff

alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias vi='/Applications/MacVim.app/Contents/MacOS/Vim'
alias gcam='git commit -a -m'
alias gs='git status'
alias grb='git rebase -i master'
alias gc='git checkout'
alias gb='git branch'
alias y='yarn'
alias nr='npm run'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
