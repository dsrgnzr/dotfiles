# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
PS1='\[\e[0;32m\]\w\[\e[0m\] \[\e[0;97m\]\$\[\e[0m\] '

shopt -s autocd

alias vi=nvim
#alias ls='ls --color -a'
alias pac='sudo pacman -S'
alias pacr='sudo pacman -Rns'
alias pacr!='sudo pacman -Rscun'
alias pacro='pacman -Qdt && sudo pacman -Rns $(pacman -Qtdq)'
alias pacc='sudo pacman -Scc'
alias pacs='pacman -Qs'
alias pacss='pacman -Ss'
alias paci='pacman -Si'
alias mntsd='sudo mount /dev/mmcblk0p1 /mnt/sd'
alias umntsd='sudo umount /dev/mmcblk0p1'
alias rg='ranger'

export VISUAL=nvim
export EDITOR="$VISUAL"
alias dotfiles='/usr/bin/git --git-dir=/home/user/.dotfiles/ --work-tree=/home/user'
