" Ale
" Plugin: ale
"
nnoremap <Leader><Leader>a :ALEToggle<CR>
nnoremap <Leader>if :ALEFix<CR>

let g:ale_sign_error = '!'
let g:ale_sign_style_error = '!'
let g:ale_sign_warning = '!'
let g:ale_sign_style_warning = '!'

let g:ale_linters = {
  \ 'php': ['php', 'phpcs', 'phpmd'],
  \ 'javascript': [],
  \ 'vue': []
  \ }

let g:ale_linter_aliases = {'vue': ['css', 'javascript']}

let g:ale_php_phpcs_standard = 'PSR2'

let g:ale_fixers = {
  \ 'php': [ 'php_cs_fixer' ],
  \ }

let g:ale_php_cs_fixer_options = '--rules=@PSR1,@PSR2 --using-cache=false'
