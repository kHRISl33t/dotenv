ZSH_DISABLE_COMPFIX="true"

export ZSH="/Users/kristofivancza/.oh-my-zsh"

ZSH_THEME="robbyrussell"

export EDITOR='code -w'

plugins=(
    git
    colored-man-pages
    zsh-autosuggestions
    zsh-syntax-highlighting
    node
    kubectl
)

source $ZSH/oh-my-zsh.sh

# User configuration

# tmux
alias tns='tmux new-session -t'
alias tas='tmux attach-session -t'
alias tmuxls='tmux ls'

# Source .zshrc
alias uzsh='source ~/.zshrc'
# cd to dev
alias devdir='cd ~/development'

# docker
alias dc='docker-compose'
alias d='docker'

# git
alias gits='git status'
alias gitaa='git add .'
alias gita='git add'
alias gitc='git commit'

alias gitcm='git checkout master'
alias gitprom='git pull --rebase origin master'
alias gitpro='git pull --rebase origin'
alias gitf='git fetch'
alias gitrm='git rebase master'
alias gitcb='git branch -b'

alias gitcount='git rev-list --count $(git rev-parse --abbrev-ref HEAD)'
alias lslinesnode='git ls-files | grep "\(.js\|.ts\)$" | xargs wc -l'
alias lslinesreact='git ls-files | grep "\(.jsx\|.js\|.css\|.scss\)$" | xargs wc -l'

# kubectl shortcuts
alias kc='kubectl'
alias kccf='kubectl create -f'
alias kcei='kubectl exec -it'
alias kcgd='kubectl get deployment'
alias kcgp='kubectl get pods'
alias kcgs='kubectl get svc'
alias kcgn='kubectl get nodes'
alias kce='kubectl edit'
alias kcd='kubectl describe'
alias kccl='kubectl logs'
alias kccp='kubectl cp'
alias kcks='kubectl -n kube-system'
alias kcs='kubectl -n staging'
alias kcp='kubectl -n prod'
alias kcm='kubectl -n monitoring'
alias kci='kubectl -n istio-system'
alias kcdef='kubectl -n default'
alias kcsgp='kubectl -n staging get pod'
alias kcsgpw='kubectl -n staging get pod -w'
alias kceis='kubectl -n staging exec -it'
alias kcsl='kubectl -n staging logs'
alias kcsed='kubectl -n staging edit deployment'
alias kccuc='kubectl config use-context'
alias kccgc='kubectl config current-context'
alias kcgvs='kubectl get virtualservices'
alias kcggw='kubectl get gateways'
alias kcgdr='kubectl get destinationrules'
alias kcsetns="kubectl config set-context --current --namespace"
# source /Users/kristofivancza/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NVM_DIR="/Users/kristofivancza/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kristofivancza/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/kristofivancza/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kristofivancza/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/kristofivancza/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
complete -F __start_kubectl kc rkc pkc
