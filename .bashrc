#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#
# my environment
#

# starship
eval "$(starship init bash)"

# alias def
alias vi='nvim'
alias ll='ls -lstr'
alias la='ls -lstra'
alias rm='rm -i'
alias h="history | grep -E -v '^ *[0-9]+ *h ' | grep "

alias wt="curl wttr.in/Newcastle"
alias prayer="python /home/koulali/pytools/prayer.py"

alias ncl="ssh -i /home/koulali/.ssh/mykeyNCL nak143@unix.ncl.ac.uk"
alias rocket="ssh -v nak143@rocket.hpc.ncl.ac.uk"
alias nak="ssh -v -Y nak143@sage18-cass019.ncl.ac.uk"
alias g11="ssh -v -Y nak143@21s-538252"
alias chandler="ssh -v koulali@chandler.mit.edu"
alias geodesy="ssh -v nak143@geodesy-login1"

# path
export PATH="${PATH}:/home/koulali/.local/bin"
export PATH="${PATH}:/home/koulali/bin"

# gamit-globk
GGPATH="/home/koulali/gg"
export PATH="$PATH:$GGPATH/gamit/bin:$GGPATH/kf/bin:$GGPATH/com"
export HELP_DIR="$GGPATH/help"
export INSTITUTE="NCL"

# python-tools
export PYTHONPATH=$PYTHONPATH:/home/koulali/pyggm:/home/koulali/pycegm

# gmtsar
#export GMTSAR=/home/koulali/Software/GMTSAR
#export PATH=$GMTSAR/bin:"$PATH"

# hector
HECTOR_PATH=/home/koulali/Softwares/hector-2.1
export PATH=$PATH:$HECTOR_PATH

# marp
CHROME_PATH=$(which brave)

# pride
export PATH=/home/koulali/.PRIDE_PPPAR_BIN:$PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/koulali/miniforge3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/koulali/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/home/koulali/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/home/koulali/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/home/koulali/miniforge3/etc/profile.d/mamba.sh" ]; then
    . "/home/koulali/miniforge3/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

