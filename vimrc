set nocompatible
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype off
set t_Co=256
set cursorline

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4      " a tab is two spaces
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode
set softtabstop=4 " makes the spaces feel like real tabs

autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype coffee setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype jade setlocal ts=2 sts=2 sw=2

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

"" utility functions 
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "Shougo/vimproc.vim"
Bundle "Shougo/unite.vim"
Bundle "h1mesuke/unite-outline"
Bundle "Lokaltog/vim-easymotion"


"" colours
Bundle 'altercation/vim-colors-solarized'
Bundle 'flazz/vim-colorschemes'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

"" dev tools
Bundle 'tpope/vim-fugitive'
Bundle 'ervandew/supertab'
Bundle 'majutsushi/tagbar.git'
Bundle 'tomtom/tcomment_vim'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle "Valloric/YouCompleteMe"
Bundle "SirVer/ultisnips"

" Bundle 'vimoutliner/vimoutliner'
" Bundle 'acx0/Conque-Shell'
" Bundle "aaronbieber/quicktask.git"
"
Bundle "vim-scripts/vimwiki"
Bundle "teranex/vimwiki-tasks"
" Bundle "samsonw/vim-task"

" Bundle "tomtom/viki_vim"
" Bundle "tomtom/trag_vim"
" Bundle "tomtom/vikitasks_vim"


" status line
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'

"" Formats
Bundle 'chrisbra/csv.vim'
Bundle 'tpope/vim-markdown'
Bundle 'digitaltoad/vim-jade'
Bundle "kchmck/vim-coffee-script.git"
Bundle 'jcfaria/Vim-R-plugin'
Bundle "jnwhiteh/vim-golang"
Bundle "dwcook/Vim-Journal"
Bundle "Rykka/riv.vim"

"" Typescript
Bundle "clausreinke/typescript-tools"
Bundle "leafgarland/typescript-vim"


"" Haskell
Bundle 'lukerandall/haskellmode-vim'
Bundle 'ujihisa/neco-ghc'
Bundle 'eagletmt/ghcmod-vim'
Bundle "vim-scripts/indenthaskell.vim"

"" Python
Bundle 'klen/python-mode'
Bundle 'jmcantrell/vim-virtualenv'
" Bundle 'davidhalter/jedi-vim'


" Bundle 'indenthaskell.vim'
" Bundle 'dag/vim2hs'
" Enable autocompletion from vim2hs
" Bundle 'Shougo/neocomplcache'
" Bundle 'Shougo/neosnippet'
" Bundle 'honza/vim-snippets'
" let g:neocomplcache_enable_at_startup = 1
" python 

""" Snipmate fork

filetype plugin indent on       " load file type plugins + indentation

""" colors
set background=dark
colorscheme Tomorrow-Night-Eighties


""" http://items.sjbach.com/319/configuring-vim-right
set wildmenu
let mapleader = ","
set hidden
set scrolloff=3
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

""" completion
" set completeopt=longest,menuone
" set completeopt+=preview
" set ofu=syntaxcomplete#Complete
" let g:SuperTabDefaultCompletionType = "context"
" let g:SuperTabContextDefaultCompletionType = "<c-n>"

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Tagbar to leader l
let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>

" trim whitespace
" autocmd BufWritePre *.py :%s/\s\+$//e
" autocmd BufWritePre *.hs :%s/\s\+$//e

""" configure python mode
let g:pymode_lint = 0
" let g:pymode_lint_onfly = 1
" let g:pymode_lint_cwindow = 0
let g:pymode_rope = 0
let g:pymode_virtualenv = 1
let g:pymode_folding = 0
" let g:pymode_lint_checker = "pyflakes,pep8,mccabe"
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args = '--ignore=W391,E126'
let g:syntastic_check_on_wq=0
let g:syntastic_check_on_open = 0
" let g:syntastic_error_symbol='✗'
" let g:syntastic_warning_symbol='⚠'
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

" default fold level
set foldlevelstart=0

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

" switch buffers with up/down
nmap <Up> :bp<CR>
nmap <Down> :bn<CR>

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" execute prject vimrc files
set exrc
set secure

let g:haddock_browser="/usr/bin/chromium-browser"
let g:haddock_docdir="/home/james/.cabal/share/doc/"

" needed for powerline / airline
set laststatus=2

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>
set clipboard=unnamed

" Showing line numbers and length
set nonumber  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
" highlight ColorColumn ctermbg=233

" easier formatting of paragraphs
vmap Q gq
nmap Q gqap

" Settings for jedi-vim
" let g:jedi#auto_vim_configuration = 0
" let g:jedi#related_names_command = "<leader>z"
" let g:jedi#popup_on_dot = 0
" let g:jedi#popup_select_first = 1
" map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
" let g:jedi#use_tabs_not_buffers = 0
" let g:jedi#show_function_definition = "1"
" let g:jedi#goto_definitions_command = "<leader>d"

nnoremap <leader>d :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1


"" http://0x3f.org/blog/make-youcompleteme-ultisnips-compatible/
" let g:ycm_key_list_select_completion = ['<C-TAB>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-S-TAB>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-Tab>'
let g:UltiSnipsExpandTrigger="<c-j>"


" Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
let g:necoghc_enable_detailed_browse = 1
au BufEnter *.hs compiler ghc

au BufRead,BufNewFile *.ts        setlocal filetype=typescript

set splitbelow

"" Eclim
" let g:EclimCompletionMethod = 'omnifunc'


" Unite 
" http://www.codeography.com/2013/06/17/replacing-all-the-things-with-unite-vim.html
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>p :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

function! Diary()
    :VimwikiMakeDiaryNote
    :normal G
    :read !date +'= \%H\%M ='
    :normal G
    :startinsert
endfunction




