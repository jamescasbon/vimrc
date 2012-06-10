set nocompatible
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype off


"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4      " a tab is two spaces
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode
set softtabstop=4 " makes the spaces feel like real tabs

autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype coffee setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

""" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

""" http://mirnazim.org/writings/vim-plugins-i-use/

Bundle 'tpope/vim-fugitive'
Bundle 'altercation/vim-colors-solarized'
Bundle "git://git.wincent.com/command-t.git"
Bundle "git://github.com/kchmck/vim-coffee-script.git"
Bundle 'https://github.com/ervandew/supertab'
Bundle 'git://github.com/majutsushi/tagbar.git'
Bundle 'tpope/vim-markdown'
Bundle 'jamescasbon/vim-posterous'
Bundle 'flazz/vim-colorschemes'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'jcfaria/Vim-R-plugin'
Bundle 'vimoutliner/vimoutliner'
Bundle 'scrooloose/syntastic.git'
Bundle 'acx0/Conque-Shell'
Bundle 'klen/python-mode'

""" Snipmate fork
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "snipmate-snippets"
Bundle "garbas/vim-snipmate"

filetype plugin indent on       " load file type plugins + indentation


if has('gui_running')
    set background=light
    colorscheme github
else
    set background=dark
    colorscheme solarized
endif


""" http://items.sjbach.com/319/configuring-vim-right
set wildmenu
let mapleader = ","
set hidden
set scrolloff=3
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp



set ofu=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Tagbar to leader l
let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>

set rnu

autocmd BufWritePre *.py :%s/\s\+$//e

""" disable pymode's linter and use syntastic
let g:pymode_lint = 0
let g:syntastic_python_checker = 'flake8'
let g:syntastic_check_on_open = 1

" default fold level
set foldlevelstart=1

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"set guifont=Menlo\ Regular:h14
