set nocompatible
set exrc
set noswapfile
set nobackup
set encoding=utf-8

filetype off

" set the runtimepath to vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manage vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'vim-utils/vim-man'

" end vundle, all of the plugins must be added before this
call vundle#end()
filetype plugin indent on

" set the basic options for vim
colorscheme gruvbox
set background=dark
set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set undodir=~/.vim/undodir
set undofile
set incsearch
set autochdir
set mouse=a

let mapleader=" "

" using ag for file searching
if executable('ag')
	" use ag over grep
	set grepprg=ag\ --nogroup\ --nocolor\ --column

	" use ag in ctrlP for listing files
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

	" ag is fast enough ctrlP doesn't need to cache
	let g:ctrlp_use_caching = 0
endif

" making sure ycm closes the preview window
let g:ycm_autoclose_preview_window_after_completion=1

" this is for c and c++
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'

" remaps for better movement
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
nmap <leader>pf :CtrlP<CR>
nnoremap <Leader>gd :GoDef<Enter>
nnoremap <Leader>pt :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>pv :NerdTreeFind<CR>
nnoremap <silent> <Leader>vr :vertical resize 20<CR>

" YCM remaps for going to definition
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
