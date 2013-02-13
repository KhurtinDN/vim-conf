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


## Updating

1. Update from repository

    ```
    cd ~/.vim-conf
    git pull --repbase
    ```

2. Update plugins

    Launch `vim`, run `:BundleInstall` and `:BundleClean`


[vim-conf]:http://github.com/KhurtinDN/vim-conf
[Vundle]:http://github.com/gmarik/vundle
