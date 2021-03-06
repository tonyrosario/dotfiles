:filetype indent on
set tabstop=4
set shiftwidth=2
set number

"Copy Paste
"nmap <C-V> "+gP
" CTRL-V and SHIFT-Insert are Paste
map <C-V>               "+gP
map <S-Insert>          "+gP

cmap <C-V>              <C-R>+
cmap <S-Insert>         <C-R>+

"Turn on Syntax Highlighting
syntax on

set autoindent
set smartindent

filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

"long lines
set wrap
set linebreak
set nolist  " list disables linebreak
set textwidth=0
set wrapmargin=0
set formatoptions+=l

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

"add wudo write
cmap w!! w !sudo tee %

"Update file from remote
set autoread

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

set wildignore=*.o,*~,*.pyc

" Use Unix as the standard file type
set ffs=unix,dos,mac

""" NERD Tree
execute pathogen#infect()
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
