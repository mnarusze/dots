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

# Set vim as the text editor for some apps that use it
export EDITOR=vim

# Common PATH extensions
export PATH="$PATH:$HOME/.local/bin"

