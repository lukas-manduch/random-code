""" COMMANDS for fast ues
" set makeprg=python\ -m\ unittest\ discover\ -s\ src\ -p\ \"*_test.py\"\ -v\ 2>&1
packadd minpac

call minpac#init()
call minpac#add('Shougo/deoplete.nvim')
call minpac#add('zchee/deoplete-jedi')
call minpac#add('junegunn/fzf')
let g:deoplete#enable_at_startup = 1
nnoremap <C-p> :<C-u>FZF<CR>
set completeopt-=preview

set autoindent
" set guifont=Consolas:h12
set incsearch
set hidden
set history=50
set nowrap
set number
set relativenumber
set ruler
set showcmd
set wildmenu
set wildignore=*.pyc,

" Search
set hlsearch
set ignorecase
" USE ENGLISH
set langmenu=en_US
let $LANG = 'en_US'
"-----------------
" Set Path
if has("win32")
   let $PATH = 'C:\msys64\usr\bin;' . $PATH
   set viewdir=~\.vim\views
endif
set path=,.,,**


"  MAPPINGS
map Y y$

"-----------------
set backspace=indent,eol,start

filetype on
syntax on

set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab

function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

if has("autocmd")
	autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
	autocmd BufNewFile,BufRead *.m setfiletype matlab
	autocmd BufWinLeave *.* mkview
	autocmd BufWinEnter *.* silent loadview
endif

colorscheme desert
imap jj <Esc>

cd ~
