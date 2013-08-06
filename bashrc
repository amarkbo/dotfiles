export PS1='\[\e[1m\][\u@\h\:\w] $\[\e[m\] '

export LS_COLORS=$LS_COLORS:"ow=01:di=01"
alias ls='ls --classify --color=auto'

screen -dr

# from http://askubuntu.com/questions/16106/how-can-i-create-an-alias-for-cd-and-ls
function cd() {
    new_directory="$*";
    if [ $# -eq 0 ]; then 
        new_directory=${HOME};
    fi;
    builtin cd "${new_directory}" && ls
}

function xfind() {
    if [ -n "$3" ]; then
        grep -n "$1" `find $2 -type f -regextype posix-extended -regex "$3"`
    elif [ -n "$2" ]; then
        grep -n "$1" `find $2 -type f `
    elif [ -n "$1" ]; then
        grep -n "$1" `find . -type f`
    else
        echo "usage: xfind phrase path file-regex";
    fi
}

# hello
