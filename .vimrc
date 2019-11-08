" Begin .vimrc
"set nocompatible "This is probably not needed
set relativenumber "Shows relative number lines
set number "Shows absolute number lines
set hlsearch "Highlights search matches
set incsearch "start searching at first char of the string
"tabstop and stuff for html
"autocmd FileType html setlocal shiftwidth=2 tabstop=2
set tabstop=4 "Tab is 4 spaces wide
set shiftwidth=4 "Indent as one single tab
set bs=2 "backspace character for moving the cursor over automatically inserted indentation
set columns=120 "120 columns width
set background=dark "Sets the background to dark
set wrapmargin=8 "Number of characters from the right window border where wrapping starts
"set cindent "Smart indentation (probably not needed)
"set t_Co=256 "Terminal colors, probably not needed
set showcmd "shows partial commands in the last line of the screen
filetype indent on 
syntax on "Highlight language syntax
set ruler "Shows the ruler (down-right positional info)
let mapleader = ',' "Remapping leader to an easier to reach key
"Pathogen to activate plugins
execute pathogen#infect()

"Set omnifunc for filetype completition
filetype plugin on 
set omnifunc=syntaxcomplete#Complete

"Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_python_checkers = ['flake8']

"airline
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish' "Sets a theme for the airline
noremap <f1> :bprev<CR> 
noremap <f2> :bnext<CR> 

"nerdtree opens with Ctrl+N
map <C-n> :NERDTreeToggle<CR> 

"ctrlp exceptions (Some vendor folder patterns to avoid scanning in order to speed up ctrp)
set wildignore+=*/vendor/* 
set wildignore+=*/node_modules/*
set wildignore+=*/bower_components/*
set wildignore+=*__pycache__*
set wildignore+=*env*

"Ag instead of Ack for searching (probably not needed anymore with fzf)
"let g:ackprg = 'ag --column --smart-case'
"cnoreabbrev ag Ack
"cnoreabbrev aG Ack
"cnoreabbrev Ag Ack
"cnoreabbrev AG Ack

"CtrlPTag mapping st for searching on tags
nnoremap <leader>ts :CtrlPTag<CR>

"PDV extension for snippets
let g:pdv_template_dir = $HOME . '/.vim/bundle/pdv/templates_snip'
nnoremap <leader>dc :call pdv#DocumentWithSnip()<CR>

"Deactivating cursor keys in order to force the use of HJKL
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

"Set proper tab configurations when working on Python files
autocmd FileType python set sw=4 ts=4 sts=4

"YouCompleteMe config (autocompletition)
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

"Xclip to copy from vim to the x buffer
noremap <leader>cp :!xclip -sel c <CR><CR>

"Change theme depending on the time of day
let hr = (strftime('%H'))
if hr >= 12
colorscheme molokai
endif

"FZF
set rtp+=~/.fzf
" End .vimrc 
