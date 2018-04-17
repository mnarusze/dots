# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export VAGRANT_DEFAULT_PROVIDER=virtualbox

# Kubernetes
export KUBE_EDITOR="vim"

# Aliases
alias l='ls -al'

# Source VBoxManage completion
source $HOME/repos/vboxmanage-bash-completion/VBoxManage

