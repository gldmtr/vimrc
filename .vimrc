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

" Ansible
Plugin 'pearofducks/ansible-vim'

" Javascript
Plugin 'pangloss/vim-javascript'
call vundle#end()

filetype plugin indent on

let g:syntastic_javascript_checkers = ['eslint']

" auto remove trailing whitespaces
autocmd BufWritePre * %s/\s\+$//e
