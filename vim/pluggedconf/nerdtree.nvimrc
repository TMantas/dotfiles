" don't display informations (type ? for help and so on)
let g:NERDTreeMinimalUI = 1
" don't replace the native vim file explorer
let g:NERDTreeHijackNetrw = 1
let g:NERDTreeChDirMode = 2
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeShowBookmarks = 0
let g:NERDTreeCascadeOpenSingleChildDir = 1
let g:NERDTreeCascadeSingleChildDir = 0
let g:NERDTreeQuitOnOpen = 1

" change the arrows
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

" remapping - see nerdtree.txt and search for "NERDTreeMappings"
let NERDTreeMapOpenSplit = 'b'
let NERDTreeMapPreviewSplit='gb'

let NERDTreeMapOpenVSplit = 'v'
let NERDTreeMapPreviewVSplit='gv'
let g:NERDTreeMouseMode=3

let NERDTreeShowHidden=1

" File system browser
" Plugin: nerdtree
nmap <Leader><Tab> :NERDTreeToggle<CR>
nmap <Leader><Leader><Tab> :NERDTreeFind<CR>zz
