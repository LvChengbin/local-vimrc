" VIM Plugin
"
" File: plugin/local-vimrc.vim
" Author: LvChengbin<lvchengbin59@gmail.com>
" Time: 01/17/2021
" Description: Loading local .vimrc file from project directory

let b:rcfilename = '.vimrc'

" if the current file is a .vimrc file it should not source itself again.
if expand( '%:t' ) != b:rcfilename

    let b:localrcfile = findfile( b:rcfilename, getcwd() . ';' )

    if b:localrcfile isnot ''

        " to modify b:localrcfile to the full path format
        let b:localrcfile = fnamemodify( b:localrcfile, ':p' )

        " do not load $HOME/.vimrc again
        if b:localrcfile != $HOME . '/' . b:rcfilename
            execute 'source ' . b:localrcfile
        endif

    endif
    
endif
