set nocompatible
syntax enable
filetype off

set laststatus=2
set ignorecase
set showcmd
set number

set undodir=~/.vim/backup/.undo//
set backupdir=~/.vim/backup/.backup//
set directory=~/.vim/backup/.swp//

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdcommenter'

" Ansible
Plugin 'pearofducks/ansible-vim'

" Javascript
Plugin 'pangloss/vim-javascript'
call vundle#end()

filetype plugin indent on

let g:syntastic_javascript_checkers = ['eslint']

" auto remove trailing whitespaces
autocmd BufWritePre * %s/\s\+$//e
command! E NERDTreeToggle
map <C-e> :NERDTreeFocus<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let NERDTreeShowHidden=1

" javascrtipt settings
let g:javascript_plugin_jsdoc = 1
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype json setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype scss setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype html setlocal ts=4 sw=4 sts=0 expandtab

" NERD commenter settings
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

