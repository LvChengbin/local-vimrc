" VIM Plugin
"
" File: plugin/local-vimrc.vim
" Author: LvChengbin<lvchengbin59@gmail.com>
" Time: 01/17/2021
" Description: Loading local .vimrc file from project directory

let b:rcfilename = '.vimrc'

if expand( '%:t' ) != b:rcfilename

    let b:localrcfile = findfile( b:rcfilename, getcwd() . ';' )

    if b:localrcfile isnot '' && b:localrcfile != $HOME . '/' . b:rcfilename
        execute 'source ' . b:localrcfile
    endif
    
endif