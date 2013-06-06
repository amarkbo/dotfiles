export PS1='\[\e[1m\][\u@\h\:\w] $\[\e[m\] '

export LS_COLORS=$LS_COLORS:"ow=01:di=01"
alias ls='ls --classify --color=auto'

# from http://askubuntu.com/questions/16106/how-can-i-create-an-alias-for-cd-and-ls
function cd() {
    new_directory="$*";
    if [ $# -eq 0 ]; then 
        new_directory=${HOME};
    fi;
    builtin cd "${new_directory}" && ls
}
