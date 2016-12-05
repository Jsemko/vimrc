syntax on
set nu
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'kien/ctrlp.vim'
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" plugin on GitHub repo
" Plugin 'klen/python-mode'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Raimondi/delimitMate'
Plugin 'mattn/emmet-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'valloric/youcompleteme'
Plugin 'majutsushi/tagbar'
Plugin 'Lokaltog/vim-powerline'
" Plugin 'pangloss/vim-javascript'
Plugin 'airblade/vim-gitgutter'
" plugin from http://vim-scripts.org/vim/scripts.html

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line"
nnoremap <C-m> :NERDTreeToggle<CR>
let mapleader = ","
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](vendor|htmlcov|node_modules)$',
    \ 'file': '\v\.pyc$'
      \ }
"let g:tagbar_foldlevel = 0

"let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
"set splitright
"autocmd WinEnter * if &previewwindow && winnr() > 1 | wincmd K | endif
set splitbelow

filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set ignorecase
set smartcase
set hlsearch
set backspace=2
set laststatus=2
"set foldmethod=indent  "Code folding
"set statusline=%F%m%r%h%w\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

autocmd FileType python setl tabstop=4|setl shiftwidth=4|setl softtabstop=4
autocmd FileType html setl tabstop=2|setl shiftwidth=2|setl softtabstop=2
autocmd FileType javascript setl tabstop=2|setl shiftwidth=2|setl softtabstop=2
autocmd FileType css setl tabstop=2|setl shiftwidth=2|setl softtabstop=2
autocmd Filetype ruby setlocal tabstop=2|setl shiftwidth=2|setl softtabstop=2


colorscheme leo
set colorcolumn=80
" set statusline=%{fugitive#statusline()} - this wasn't show the filename
highlight ColorColumn ctermbg=2*

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Mappings
:nnoremap <Leader>s :sp\|Ggrep <C-R><C-W><CR>
:nnoremap <Leader>g :sp\|Ggrep<Space>
:vnoremap <Leader>v "jy:tab\|Ggrep "<C-R>j"<CR>
:nnoremap <Leader>b :Gblame<CR>
:nnoremap <Leader>l :Glog<CR>
:nnoremap <Leader>. :TagbarToggle<CR>
:nnoremap tt i{% trans "" %}<Esc>3<left>i
:nnoremap <Leader>f :NERDTreeFind<CR>
