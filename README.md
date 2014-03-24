Steps to setup a new machine
----------------------------

One day, I will make a script.

1. Install zsh, latest version of git (wheezy-backports on debian)

    - Backports:

        deb http://YOURMIRROR.debian.org/debian wheezy-backports main

        apt-get -t wheezy-backports install git

2. Install oh my zsh

    - curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

    - Then, source zshrc in .zshrc, source profile in .zlogin

3. Link mh-amar theme into ~/.oh-my-zsh/custom

4. Change your shell:

    - chsh

5. install vim (vim-nox on debian)

6. install vundle

    - git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

7. install tmux

8. install powerline

    - pip install --user git+git://github.com/Lokaltog/powerline

    - source tmux.conf and powerline.conf (powerline.conf comes first)

9. link ~/.config/powerline to powerline config directory

10. Source global git config

11. Link everything else! (.vimrc)
