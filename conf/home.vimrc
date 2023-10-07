set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim " Set the runtime path to include Vundle and initialize



call vundle#begin('~/.vundle/plugins') " Download plug-ins to the ~/.vundle/plugins directory

Plugin 'VundleVim/Vundle.vim' " Let Vundle manage Vundle

"Place all Plugins here

Plugin 'sheerun/vim-polyglot' " Syntax highlighting for all languages
Plugin 'jiangmiao/auto-pairs' " Auto close brackets
Plugin 'preservim/nerdtree' " File explorer
Plugin 'dyng/ctrlsf.vim' " Search and replace
Plugin 'tpope/vim-fugitive' " Git integration


"Color Schemes
Plugin 'cocopon/iceberg.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'Badacadabra/vim-archery'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'scheakur/vim-scheakur'
Plugin 'lifepillar/vim-solarized'



"Do not place any plugin below this line!"
call vundle#end()
filetype plugin indent on

set background=dark   " Set dark background
set nu " Show line numbers
syntax on " Enable syntax highlighting
set tabstop=4 " Set tab width to 4 spaces
set shiftwidth=4 " Set indent width to 4 spaces
set expandtab " Use spaces instead of tabs
set incsearch " Incremental search
set hlsearch " Highlight search results
set termwinsize=12x0   " Set terminal size
set splitbelow         " Always split below
set mouse=a            " Enable mouse drag on window splits
let g:AutoPairsShortcutToggle = '<C-P>' " Toggle auto pairs

"NerdTree Settings
let NERDTreeShowBookmarks = 1   " Show the bookmarks table
let NERDTreeShowHidden = 1      " Show hidden files
let NERDTreeShowLineNumbers = 0 " Hide line numbers
let NERDTreeMinimalMenu = 1     " Use the minimal menu (m)
let NERDTreeWinPos = “left”     " Panel opens on the left side
let NERDTreeWinSize = 31        " Set panel width to 31 columns

"CtrlSF Settings
let g:ctrlsf_backend = 'ack' " Use the ack tool as the backend
let g:ctrlsf_auto_close = { "normal":0, "compact":0 }" Auto close the results panel when opening a file
let g:ctrlsf_auto_focus = { "at":"start" } " Immediately switch focus to the search window
let g:ctrlsf_auto_preview = 0 " Don't open the preview window automatically
let g:ctrlsf_case_sensitive = 'smart' " Use the smart case sensitivity search scheme
let g:ctrlsf_default_view = 'normal' " Normal mode, not compact mode
let g:ctrlsf_regex_pattern = 0; " Use absoulte search by default
let g:ctrlsf_position = 'right' " Position of the search window
let g:ctrlsf_winsize = '46' " Width or height of search window
let g:ctrlsf_default_root = 'cwd' " Search from the current working directory

" (Ctrl+F) Open search prompt (Normal Mode)
nmap <C-F>f <Plug>CtrlSFPrompt
" (Ctrl-F + f) Open search prompt with selection (Visual Mode)
xmap <C-F>f <Plug>CtrlSFVwordPath
" (Ctrl-F + F) Perform search with selection (Visual Mode)
xmap <C-F>F <Plug>CtrlSFVwordExec
" (Ctrl-F + n) Open search prompt with current word (Normal Mode)
nmap <C-F>n <Plug>CtrlSFCwordPath
" (Ctrl-F + o )Open CtrlSF window (Normal Mode)
nnoremap <C-F>o :CtrlSFOpen<CR>
" (Ctrl-F + t) Toggle CtrlSF window (Normal Mode)
nnoremap <C-F>t :CtrlSFToggle<CR>
" (Ctrl-F + t) Toggle CtrlSF window (Insert Mode)
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>