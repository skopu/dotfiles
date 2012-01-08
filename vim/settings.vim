
" kodowanie
set fileencodings=utf-8,latin2

"""""""""" CUSTOM OPTIONS
set autoread
set backspace=indent,eol,start    " Intuitive backspacing.
set cursorline
set directory=/tmp
set encoding=utf-8                " Default encoding
set history=5000
set ignorecase
set incsearch
set ls=2                          " allways show status line"
set nobackup
set noswapfile
set nowritebackup
set number
set sessionoptions=buffers,folds,winsize,winpos
set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.
set tags=~/.tags

"""""""""" TABS and SPACES
set expandtab     " rozwijanie tabow na spacje"
set softtabstop=2
set sw=2          " szerokosc automagicznego wciecia
set tabstop=2     " ile spacji to tab"
set ts=2          " szerokosc tabulacji
set shiftround

set foldmethod=indent
set foldnestmax=3
set foldlevel=3
set nofoldenable

set wildmenu
set wildmode=list:longest,list:full

set cmdwinheight=12         " command history window height

set noesckeys """" removes the delay after returning to normal mode

set matchpairs+=<:>                  " add < and > to the chars that can be navigated with %
set matchpairs+=/:/
set iskeyword+=?                     " in ruby ? can end keyword"

" set list
" set listchars=tab:»\ ,trail:·,nbsp:·

set splitbelow
set splitright

""""""""" strip whitespace
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  let _s=@/
  call cursor(l, c)
  let @/=_s
endfun
autocmd BufWritePre *.* :call <SID>StripTrailingWhitespaces()

" set laststatus=2
" set statusline=%F%m%r%h%w\ (%{&ff}){%Y}[%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

