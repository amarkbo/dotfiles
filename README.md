Steps to setup a new machine
----------------------------

One day, I will make a script.

1. Install zsh, latest version of git (wheezy-backports on debian), add backports

        deb http://YOURMIRROR.debian.org/debian wheezy-backports main

        apt-get -t wheezy-backports install git

2. Install oh my zsh

        curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

    Then, source zshrc in .zshrc, source profile in .zlogin

3. Link mh-amar theme into ~/.oh-my-zsh/custom

4. Change your shell:

        chsh

5. install vim (vim-nox on debian)

6. install vundle

        git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

7. run vundle install (compile YouCompleteMe if needed)
    
        vim
        :VundleInstall

8. install tmux

9. install powerline

        pip install --user powerline-status

    source tmux.conf and powerline.conf into .tmux.conf (full paths, powerline.conf comes first)

        source '/home/USER/.local/lib/python2.7/site-packages/powerline/bindings/tmux/powerline.conf'
        source '/home/USER/.nixenv/tmux.conf'

    on mac (iterm2), add this line at the top of .tmux.conf to get colors working:

        set -g default-terminal "screen-256color"

10. link ~/.nixenv/powerline to ~/.config/powerline

11. Source global git config

12. Link everything else! (.vimrc)
