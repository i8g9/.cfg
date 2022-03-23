set nocompatible              " be iMproved, required
filetype plugin indent on " required
syntax on

" run nerdtree automatically everytime vim is opened
autocmd VimEnter * NERDTree

" developers aid
set number "Adds line number on the side
set cursorline "Adds line highlighting
set shiftwidth=4 "Set shift width to 4 spaces.
set tabstop=4 "Set tab width to 4 columns.
set expandtab "Use space characters instead of tabs.
set scrolloff=10 "Do not let cursor scroll below or above N number of lines when scrolling.
set nowrap " Do not wrap lines. Allow long lines to extend as far as the line goes.
set incsearch "While searching through a file, incrementally highlight matching characters as you type.
set showmatch "Show matching words during a search
set hlsearch "Use highlighting when doing a search
set wildmenu "Enable auto completion menu after pressing TAB.
set wildmode=list:longest,full "Make wildmenu behave like similar to Bash completion.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx "Wildmenu will ignore files with these extensions.
set hidden "Makes vim works like every other code editor on the planet

" Key remaps

" Remap jk to be escape
:imap jk <Esc>

" Auto close brackets
:imap {<CR> {<CR>}<Esc>ko<tab>
:imap [<CR> [<CR>]<Esc>ko<tab>
:imap (<CR> (<CR>)<Esc>ko<tab>

" Set Home to save the file
:map <Home> :w<CR>

" Left to switch between windows
nnoremap <Left> <C-w>w

" Right arrow to go to normal mode
inoremap <Right> <Esc>

" Ctrl Right to uncomment a line (ONLY IN JAVASCRIPT)
nnoremap <C-Right> I<Esc>xxx

" Add line above you but stays in the same line
nnoremap <C-k> O<Esc>jA
inoremap <C-k> <Esc>O<Esc>jA

" Up to delete line
nnoremap <Up> dd
inoremap <Up> dd

" Down to save and quit
nnoremap <Down> ZZ
inoremap <Down> ZZ

" Ctrl Up to do something similar to Shift-Alt-Up in VScode
nnoremap <C-Up> yykp

" Ctrl Down to do something similar to Shift-Alt-Down in VScode
nnoremap <C-Down> yyp

" Q to :close
nnoremap Q :close<CR>

"colors
set background=dark
colorscheme everforest "Custom colorscheme, DO NOT CHANGE unless you want to undo 30 minutes of work...

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" NERDTREEEEEEEEEEEEE xD
Plugin 'preservim/nerdtree'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Adds emmet to vim
Plugin 'mattn/emmet-vim'

"Adds status/tabline to vim
Plugin 'bling/vim-airline'

"Add bracket colorizer
Plugin 'frazrepo/vim-rainbow'

"Add syntax recognizer
Plugin 'vim-syntastic/syntastic'

" Text filtering and text alignment
Plugin 'godlygeek/tabular'

" Syntax higlighting and improved indentation for js
Plugin 'pangloss/vim-javascript'

" Autocompletion with vim core functionality
Plugin 'lifepillar/vim-mucomplete'

" commmt out
Plugin 'tpope/vim-commentary'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
