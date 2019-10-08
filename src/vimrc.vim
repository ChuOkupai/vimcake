
"<Plugins config>
filetype plugin on
let g:airline_theme='dark'
let g:colorizer_maxlines = 512
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"
nmap <F2> :Stdheader<CR>
let g:hdr42user="#H42USER"
let g:hdr42mail="#H42MAIL"

"<User Interface>
syntax on " Enable syntax processing
color monokai " Change color scheme
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
set nofoldenable "Open files without closed folds
set confirm "Display a confirmation dialog when closing an unsaved file
"Toggle fold/unfold all folds
noremap <F3> :call FoldToggle()<CR>

"<Indent>
filetype indent on "Enable indentation rules that are file-type specific
set tabstop=4 "Indent using four spaces
set softtabstop=4 "Number of spaces in <Tab>
set shiftwidth=4 "When shifting, indent using four spaces
set autoindent "New lines inherit the indentation of previous lines
set smarttab "Insert “tabstop” number of spaces with the “tab” key
set smartindent "Do smart autoindenting when starting a new line
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap ' ''<Left>
inoremap " ""<Left>

"<Search>
set hlsearch "Search highlighting
set incsearch "Incremental search that shows partial matches
set smartcase "Automatically switch search to case-sensitive when search query contains an uppercase letter

"<Miscellaneous>
set backupdir=~/.cache/vim "Directory to store backup files
set dir=~/.cache/vim "Directory to store swap files
set history=256 "Stack size
set tabpagemax=64 "Maximum number of files that can be opened with vim -p
set lazyredraw "Don’t update screen during macro and script execution

let $fold=1
function FoldToggle()
	if $fold==0
		:exe "normal zR"
		let $fold=1
	else
		:exe "normal zM"
		let $fold=0
	endif
endf
