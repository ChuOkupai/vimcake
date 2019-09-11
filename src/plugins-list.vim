"<Plugins>
call plug#begin('~/.vim/plugged') "Using vim-plug (plugin manager)
"Better status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Color schemes
Plug 'crusoexia/vim-monokai'
"Colorize all text in the form #rgb, #rgba, rgb(...), rgba(...), ...
Plug 'lilydjwg/colorizer'
"Tree explorer
Plug 'scrooloose/nerdtree'
"Snippets
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
"42 Tools
Plug 'pbondoer/vim-42header'
call plug#end()
