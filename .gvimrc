" What a funny comment character

" .gvimrc

" v 0.1

" rev. 2009-03-18

 

" Turn on line numbers

set number

syntax on

highlight StatusLine term=bold,reverse cterm=bold,reverse ctermbg='blue' ctermfg=3

 

"set noswapfile

 

set softtabstop=4

set tabstop=4 shiftwidth=4 expandtab

set expandtab

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

 

"set magic

" Setting the default filetype

" set filetype=verilog

" Change colorscheme

colorscheme default

 

set wildmenu "Turn on Wild Menu

set hlsearch " Highlight search things

set showcmd

" Turns on the tab bar always

"set showtabline=2

 

" Number of horizontal lines on the screen

"set lines=60

 

" GUI Option to remove the Toolbar (T)

aunmenu ToolBar.Print

 

if has("gui_running")

    " See ~/.gvimrc

    set guifont=Consolas\ 11  " use this font

    set background=dark   " adapt colors for background

    " set selectmode=cmd,mouse,key

    source ~/.vim/colors/atom-dark-256.vim

else

    set guifont=Consolas\ 11  " use this font

    colorscheme desert

    set background=dark        " adapt colors for background

endif

 

" Sets the font and size

 

" Sets the percent transparency

set columns=999

set   lines=999

"source $VIMRUNTIME/mswin.vim

"behave mswin

set incsearch

set ruler

set showmode

set noerrorbells

set textwidth=0

set wrapmargin=0

set autoindent      "Keep indentation from previous line

set smartindent     "Automatically inserts indentation in some cases

set cindent         "Like smartindent, but stricter and more customisable

set nowrap

set ignorecase

 

 

inoremap <j> <k>

inoremap <k> <j>

autocmd! bufwritepost vimrc source ~/.vimrc

 

""highlight LineNguifg=#050505
inoremap {<CR> {<CR>}<Esc>ko
ClangFormatAutoEnable 
