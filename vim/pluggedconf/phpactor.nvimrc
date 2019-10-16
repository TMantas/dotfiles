" Php intelligence
" Plugin: phpactor

let g:phpactorBranch = 'master'
let g:phpactorOmniAutoClassImport = v:true
let g:phpactorPhpBin = 'php'

autocmd FileType php nnoremap <buffer> <Leader>i :call phpactor#ContextMenu()<CR>
autocmd FileType php nnoremap <buffer> <Leader>d :call phpactor#FindReferences()<CR>
autocmd FileType php nnoremap <buffer> <Leader>] :call phpactor#GotoDefinition()<CR>
autocmd FileType php nnoremap <buffer> <Leader>ii :call phpactor#UseAdd()<CR>
autocmd FileType php nnoremap <buffer> <Leader>it :call phpactor#Transform()<CR>
autocmd FileType php nnoremap <buffer> <Leader>ih :call phpactor#Hover()<CR>
