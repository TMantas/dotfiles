" Plugin: vdebug
let g:vdebug_options= {
  \ "port" : 9000,
  \ }

nnoremap <Leader>B :Breakpoint<CR>
nnoremap <Leader>V :VdebugStart<CR>
