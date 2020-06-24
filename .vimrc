set nocompatible
set number "行番号を表示
set backspace=indent,eol,start "バックスペースキーの挙動
set hlsearch
set tabstop=2
set autoindent
set expandtab
set shiftwidth=2
syntax on

" Overriding theme settings
" " 行末の空白を表示する
set list
set listchars=trail:·
highlight ExtraWhitespace ctermfg=darkgreen guifg=darkgreen
" " 半角，タブ
" " match ExtraWhitespace /\s\+$/
" " 半角スペースのみ
match ExtraWhitespace / \+$/

inoremap <C-e> <Esc>$a
inoremap <C-a> <Esc>^a
noremap <C-e> <Esc>$a
noremap <C-a> <Esc>^a

if expand("%:t") =~ ".*\.go"
  set noexpandtab
  set tabstop=4
  set shiftwidth=4
  set nolist
endif

colorscheme molokai

call plug#begin('~/.vim/plugged')

"Plug 'w0rp/ale'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-endwise'

call plug#end()
