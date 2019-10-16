" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call functions#VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call functions#VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Remap H and L (top, bottom of screen to left and right end of line)
vnoremap H ^
vnoremap L g_

