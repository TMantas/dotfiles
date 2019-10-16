" Declare the general config group for autocommand
augroup php
  autocmd!
    " autocmd FileType php setlocal omnifunc=phpactor#Complete
    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
augroup END

set expandtab
set list
set tabstop=4
set shiftwidth=4

" write ctags each time we save files (& for asynchronously)
autocmd php BufWritePost *.php silent! !eval '[ -f ".git/hooks/ctags" ] && .git/hooks/ctags' &
