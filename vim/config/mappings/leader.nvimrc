"leader mappings
nnoremap <leader>v :vsplit $MYVIMRC<cr>
nnoremap <leader>o :only<CR>

" close the buffer
nmap <leader>db :bdelete!<cr>

" Quit
nmap <Leader>q :q<CR>
" Write
nmap <Leader>w :w<CR>
"
" windows creation
" create window on the bottom
nnoremap <leader>wb <c-w>s
" create vertical window
nnoremap <leader>wv <c-w>v

" Edit the alternate / previously edited file
nmap <leader>6 <C-^>

"Toggle between absolute -> relative line number
nnoremap <leader>7 :let [&nu, &rnu] = [&nu, &nu+&rnu==1]<CR>
