" Install pathogen for vim-jedi since I gave 
" up installing manually
    set encoding=utf-8

" removes vi compatibility
    set nocompatible
    set smartindent
    set modeline
    set tabstop=8
    set shiftwidth=4
    set softtabstop=4
    set expandtab
    set number relativenumber

"basic setup
    syntax enable
    filetype plugin on

" FINDING FILES
    set path+=**

" display all matching files when we tab complete
    set wildmenu


"colorscheme space-vim-dark
colorscheme slate
" hi Comment cterm=italic

" Automatically run xrdb whenever Xdefaults or Xresources are updated.
    autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %

" django / python specific stuff
    autocmd FileType python set sw=4
    autocmd FileType python set ts=4
    autocmd FileType python set sts=4
    autocmd FileType python set colorcolumn=80
" F9 to save and run python file and go back to normal mode
    nmap <F9> :w<cr>:!clear;"%:p"<cr>

" NERDTreeToggle
    map <C-n> :NERDTreeToggle<CR>

" vim-airline stuff
" list all buffers on top
    "let g:airline#extensions#tabline#enabled = 1
" show just the filename
    " let g:airline#extensions#tabline#fnamemod = ':t'
