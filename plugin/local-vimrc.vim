 " VIM Plugin
 "
 " File: plugin/local-vimrc.vim
 " Author: LvChengbin<lvchengbin59@gmail.com>
 " Time: 01/17/2021
 " Description: Loading local .vimrc file from project directory

let b:syntastic_rcfile = findfile( '.vimrc', getcwd() . ';' )

if b:syntastic_rcfile isnot '' && b:syntastic_rcfile != $HOME . '/.vimrc'
    execute 'source ' . b:syntastic_rcfile
endif
