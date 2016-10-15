# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export VAGRANT_DEFAULT_PROVIDER=virtualbox

#export PATH=/usr/lib64/ccache:/opt/clang+llvm-3.6.2-x86_64-fedora21/bin/:$PATH
export PATH=/opt/clang+llvm-3.6.2-x86_64-fedora21/bin/:$PATH

export KUBE_EDITOR="vim"

# Aliases
alias l='ls -al'

