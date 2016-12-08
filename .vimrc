" --- Daniel's vimrc ---

" Initialization {{{

" Enable pathogen
execute pathogen#infect()

" }}}
" UI and Colors {{{

" Turn on syntax highlighting
syntax on

" Set the colorscheme
set t_Co=256
set background=dark
colorscheme alduin " alduin and badwolf are nice too!

set number

set hlsearch
set incsearch

" Reasonable default window height/widths
set winheight=10
set winwidth=75

set cursorline

" wildmenu provides better command-line completion
set wildmenu

" The last window should always have a status line
set laststatus=2

" Show commands as they are typed
set showcmd

" }}}
" Indentation {{{

filetype plugin indent on

"set autoindent

" }}}
" Folding {{{

set foldmethod=indent
set foldlevelstart=4
set foldnestmax=6

" }}}
" Mappings {{{

" Set the mapleader to comma
let mapleader = ","

" Mapping for old behavior of comma
nnoremap <Leader>, ,

" Don't use Ex mode, use Q for formatting
noremap Q gq

" Mapping for :nohlsearch, which is always long to type
noremap <Leader>m :nohlsearch<CR>

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Useful for easily switching between buffers
nnoremap <Leader>j :bprevious<CR>
nnoremap <Leader>k :bnext<CR>

" Instead of selecting a match, use left and right to move the cursor
cnoremap <Left> <Space><BS><Left>
cnoremap <Right> <Space><BS><Right>

" A mapping for making sessions
"nnoremap <Leader>m :mksession<CR>

" Create window splits
nnoremap <Leader>s <C-W>s
nnoremap <Leader>v <C-W>v

" Close the current window
nnoremap <Leader>c <C-W>c

" Close all other windows
nnoremap <Leader>a <C-W>o

" Easily switch between windows
nnoremap <Esc>h <C-W>h
nnoremap <Esc>j <C-W>j
nnoremap <Esc>k <C-W>k
nnoremap <Esc>l <C-W>l
" With xfce4-terminal, alt is 
" interpreted as an escape character


" Easily edit ~/.vimrc
nnoremap <Leader>r :e ~/.vimrc<CR>

" Quickly disable search highlighting
nnoremap <Leader>n :nohlsearch<CR>
" }}}
" Autocmd groups {{{

augroup vimrcEx
autocmd!

" Specific filetypes

autocmd FileType text setlocal textwidth=78
" Stop vim from creating new comments when entering new lines in .vim files
autocmd FileType vim setlocal fo-=r fo-=o

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

augroup END

" }}}
" Miscellaneous {{{

" I prefer the tilde to be an operator
set tildeop

" Allows for switching between buffers without writing
set hidden

set backup
" Change the backup directories 
set backupdir=~/.vim-backup/,/tmp

" Timeout after 150 miliseconds
"set timeoutlen=150

if has('langmap') && exists('+langnoremap')
  " Prevent that the langmap option applies to characters that result from a
  " mapping.  If unset (default), this may break plugins (but it's backward
  " compatible).
  set langnoremap
endif

"}}}
        
" vim:foldmethod=marker:foldlevel=0
