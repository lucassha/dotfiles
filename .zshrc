# only adding the parts i care about for now 
plugins=(
  git
  kube-ps1
)

source $ZSH/oh-my-zsh.sh
source /opt/homebrew/opt/kube-ps1/share/kube-ps1.sh
PROMPT='$(kube_ps1)'$PROMPT
