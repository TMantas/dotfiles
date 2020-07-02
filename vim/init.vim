call plug#begin('~/nvim/plugged')

"--- Completion ---
" $HOME/.config/nvim/pluggedconf/deoplete.nvimrc
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"--- Linting ---
" $HOME/.config/nvim/pluggedconf/ale.nvimrc
Plug 'w0rp/ale'

"-- SQL queries -- yy then :@" "
Plug 'tpope/vim-dadbod'

"-- Sum line(s)  - <lea>?=
"-- Sum one col  - <lea><lea>?s
"-- Sum line col - <lea>?=s
Plug 'sk1418/HowMuch'

"--- To run API query under cursor <lea><cr>
Plug 'baverman/vial', {'for': 'vial-http'}
Plug 'baverman/vial-http', {'for': 'vial-http'}

"--- Appearance ---
"Plug 'lifepillar/vim-gruvbox8'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'

"--- Organize/MD --
"Plug 'SidOfc/mkdx', { 'for': 'markdown' } " lot of keystroke for markdown
" $HOME/.config/nvim/pluggedconf/goyo.nvimrc
Plug 'junegunn/goyo.vim', {'for': 'markdown'} " Distraction-free
" $HOME/.config/nvim/pluggedconf/limelight.nvimrc
Plug 'junegunn/limelight.vim', {'for': 'markdown'} " Hyperfocus-writing

"--- GIT ---
Plug 'tpope/vim-fugitive'
"Plug 'junegunn/gv.vim'
" $HOME/.config/nvim/pluggedconf/gitgutter.nvimrc
"Plug 'airblade/vim-gitgutter'

"--- Togglers ---
" $HOME/.config/nvim/pluggedconf/nerdtree.nvimrc
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" $HOME/.config/nvim/pluggedconf/tagbar.nvimrc
"Plug 'majutsushi/tagbar'
" $HOME/.config/nvim/pluggedconf/vim-peekaboo.nvimrc
"Plug 'junegunn/vim-peekaboo'

"--- Search tools ---
Plug '/usr/local/opt/fzf'
" $HOME/.config/nvim/pluggedconf/fzf.nvimrc
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'jremmen/vim-ripgrep'

"--- Snippets ---
" $HOME/.config/nvim/pluggedconf/ultisnips.nvimrc
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

"--- Text edit ---
Plug 'machakann/vim-highlightedyank'      " Highlight briefly every yank text
Plug 'tpope/vim-surround'                 " Surround with whatever cs, ds, yss
Plug 'tpope/vim-repeat'
" $HOME/.config/nvim/pluggedconf/vim-commentary.nvimrc
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'

"--- Dev helpers ---
" $HOME/.config/nvim/pluggedconf/vim-test.nvimrc
Plug 'janko/vim-test', {'for': 'php'}
" $HOME/.config/nvim/pluggedconf/vdebug.nvimrc
Plug 'vim-vdebug/vdebug', {'for': 'php'}                     " Debugging
" $HOME/.config/nvim/pluggedconf/vim-tmux-navigator.nvimrc
Plug 'christoomey/vim-tmux-navigator'

"--- PHP ---
" $HOME/.config/nvim/pluggedconf/phpactor.nvimrc
Plug 'phpactor/phpactor', {'for': 'php', 'do':'composer install'} " PHP refactoring and introspection
Plug 'kristijanhusak/deoplete-phpactor', {'for': 'php'}      " PHP Deoplete source
" $HOME/.config/nvim/pluggedconf/pdv.nvimrc
Plug 'tobyS/pdv', {'for': 'php'}                             " PHP docblocks
Plug 'tobyS/vmustache', {'for': 'php'}       " PHP docblocks dependency
" $HOME/.config/nvim/pluggedconf/vim-php-manual.nvimrc
Plug 'alvan/vim-php-manual', {'for': 'php'}  " PHP help

"--- Javascript ---
" $HOME/.config/nvim/pluggedconf/ternjs.nvimrc
"Plug 'ternjs/tern_for_vim', { 'for': 'javascript', 'do': 'npm install && npm install -g tern' }
"Plug 'carlitux/deoplete-ternjs', { 'for': 'javascript', 'do': 'npm install -g tern' }

"--- Python ---
" $HOME/.config/nvim/pluggedconf/jedi.nvimrc
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
Plug 'zchee/deoplete-jedi', { 'for': 'python' }

"--- Go ---
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'zchee/deoplete-go', { 'for': 'go'}

call plug#end()

source $HOME/.config/nvim/config/settings.nvimrc
source $HOME/.config/nvim/config/variables.nvimrc
source $HOME/.config/nvim/config/commands.nvimrc
source $HOME/.config/nvim/config/abbreviations.nvimrc

source $HOME/.config/nvim/config/mappings/insert.nvimrc
source $HOME/.config/nvim/config/mappings/visual.nvimrc
source $HOME/.config/nvim/config/mappings/normal.nvimrc
source $HOME/.config/nvim/config/mappings/leader.nvimrc

" source every plugin configs
for file in split(glob("~/nvim/pluggedconf/*.nvimrc"), '\n')
    exe 'source' file
endfor

let g:lightline = {
  \   'colorscheme': 'wombat',
  \   'active': {
  \     'left':[ [ 'mode', 'paste' ],
  \              [ 'gitbranch', 'readonly', 'filename', 'modified' ]
  \     ]
  \   },
	\   'component': {
	\     'lineinfo': ' %3l:%-2v',
	\   },
  \   'component_function': {
  \     'gitbranch': 'fugitive#head',
  \   }
  \ }
let g:lightline.separator = {
	\   'left': '', 'right': ''
  \}
let g:lightline.subseparator = {
	\   'left': '', 'right': ''
  \}

set lazyredraw
hi Normal ctermbg=NONE guibg=NONE
