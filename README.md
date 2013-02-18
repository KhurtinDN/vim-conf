## About

[vim-conf] is collection of my vim configuration files.

I use [Vundle] as Vim plugin manager.

## Installaion

1. Clone [vim-conf] repository

   ```
   mkdir ~/.vim-conf
   cd ~/.vim-conf
   git clone git://github.com/KhurtinDN/vim-conf.git
   ln -s ~/.vim-conf/.vimrc ~/.vimrc
   mkdir -p ~/.vim/bundle
   ```

2. Setup Vundle

    ```
    git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    ```
3. Setup plugins by Vundle

    Launch `vim`, run `:BundleInstall`

4. Check system requirements

## Updating

1. Update from repository

    ```
    cd ~/.vim-conf
    git pull --repbase
    ```

2. Update plugins

    Launch `vim`, run `:BundleInstall` and `:BundleClean`

3. Check system requrirements

## System requirements

1. Python checkers

    ```
    sudo pip install flake8 pep8 pyflakes pylint
    ```

1. Python refactoring tools

    ```
    sudo pip install rope ropemode ropevim
    ```


[vim-conf]:http://github.com/KhurtinDN/vim-conf
[Vundle]:http://github.com/gmarik/vundle
