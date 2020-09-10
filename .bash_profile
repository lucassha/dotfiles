# aliases
alias ...="cd ../.."
alias ....="cd ../../.."
alias tf="terraform"
alias tfv="terraform validate"
alias gl="git log --oneline"
alias copyLastCmd='fc -ln -1 | awk '\''{$1=$1}1'\'' | pbcopy'
alias c='clear'
alias lear='clear'
alias lcear='clear'
alias k='kubectl'
alias kgp='kubectl get pods'

# k autocomplete 
complete -F __start_kubectl k

# tmp dir
export TMPDIR=/tmp

# git autocompletion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# k8s shell context information
export PS1='\[\e[33;34m\]\u\[\e[0;97m\]@\[\e[33;32m\]$USER\[\e[33;31m\]$(parse_git_branch)\[\e[0m\] \[\e[0;97m\]\W \[\e[33;40m\]->\[\e[0m\] '
export KUBE_PS1_NS_ENABLE=false
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
PS1='$(kube_ps1)'$PS1

# krew kubectl plugin
export PATH="${PATH}:${HOME}/.krew/bin"


