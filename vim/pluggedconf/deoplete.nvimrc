let g:deoplete#enable_at_startup = 1

" delay for auto complete and refresh
let g:deoplete#auto_complete_delay= 1
let g:deoplete#auto_refresh_delay= 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#auto_completion_start_length = 0

let g:deoplete#delimiters = ['/', '.', '::', ':', '#', '->']

let g:deoplete#sources = {}
let g:deoplete#sources.python = ['jedi']
let g:deoplete#sources.php = ['phpactor', 'buffer', 'tag', 'file']

let g:deoplete#file#enable_buffer_path = 1

call deoplete#custom#source('_', 'max_menu_width', 220)

" deoplete tab-complete
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"
