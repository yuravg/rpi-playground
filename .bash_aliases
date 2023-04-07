# -*- mode: shell-script -*-

# RPI system
alias measure_temp='/usr/bin/vcgencmd measure_temp'

# Change directory
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# LS
export LS_OPTIONS="-N --color=tty -T 0"
alias ls='ls $LS_OPTIONS'
alias l='ls -F'
alias la='ls -AF'
alias ll='ls -lAF'
alias lh='ls -lAFh'
alias llm='ls -AlF --color=always | more'
alias lll='ls -AlF --color=always | less -R'
alias lsh='ls -lt | head'
alias lsd=" ls -F $1 | grep / | sed 's/\///g' ; "
alias tree1='tree -L 1'
alias tree2='tree -L 2'
alias tree3='tree -L 3'

# Work with files
alias cp='cp -i'
alias cp_ir='cp -iR'
alias rm='rm -i --preserve-root'

# Disk
alias df='df -h'
alias du='du -h'
alias du1='du -ahd1'

# Process and system monitoring
alias psl='ps -e -o f,pid,ppid,uid,uname,pri,ni,pmem,pcpu,vsz,rss,wchan,stat,start,time,cmd'
alias ps_list='psl'
alias pse='psl|$HOME/bin/eless'
# example advanced usage:
# psl -eo %cpu,%mem --sort=-%mem | head
alias ps_list_cpu='psl --sort=-%cpu | head -n 20'
alias ps_list_mem='psl --sort=-%mem | head -n 20'

# Grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
