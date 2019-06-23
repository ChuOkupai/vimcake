"<Plugins>
call plug#begin('~/.vim/plugged') "Using vim-plug (plugin manager)
"Better status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Color schemes
Plug 'crusoexia/vim-monokai'
Plug 'altercation/vim-colors-solarized'
"Colorize all text in the form #rgb, #rgba, #rrggbb, #rrgbbaa, rgb(...), rgba(...)
Plug 'lilydjwg/colorizer'
"Tree explorer
Plug 'scrooloose/nerdtree'
"Snippets
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

"<Plugins config>
filetype plugin on
let g:airline_theme='dark'
let g:solarized_termcolors = 256
let g:solarized_contrast   = "high"
let g:solarized_visibility = "low"
let g:colorizer_maxlines = 512
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"<User Interface>
set background=dark
syntax on " Enable syntax processing
color monokai " Change color scheme
match ErrorMsg '\%>80v.\+'
set mouse=a "Enable mouse
set number "Show line numbers
set showcmd "Show the last command in bottom bar
set wildmenu "Visual autocompletion for command menu
set showmatch "Highlight matching [{()}]
set ruler "Always show cursor position
set list "Enable lists
set listchars=tab:\>\- "Show tabs
set foldmethod=syntax "Fold based on indention levels
set foldcolumn=1 "Enable mouse to open and close folds
set foldlevel=6 "Set fold depth
set confirm "Display a confirmation dialog when closing an unsaved file

"<Indent>
filetype indent on "Enable indentation rules that are file-type specific
set tabstop=4 "Indent using four spaces
set softtabstop=4 "Number of spaces in <Tab>
set shiftwidth=4 "When shifting, indent using four spaces
set autoindent "New lines inherit the indentation of previous lines
set smarttab "Insert “tabstop” number of spaces with the “tab” key
set smartindent "Do smart autoindenting when starting a new line
set noendofline
set nofixendofline "Remove new line at the end of file
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

"<Search>
set hlsearch "Search highlighting
set incsearch "Incremental search that shows partial matches
set smartcase "Automatically switch search to case-sensitive when search query contains an uppercase letter

"<Miscellaneous>
set backupdir=~/.cache/vim "Directory to store backup files
set dir=~/.cache/vim "Directory to store swap files
set history=256
set tabpagemax=32 "Maximum number of files that can be opened with vim -p
set lazyredraw "Don’t update screen during macro and script execution
