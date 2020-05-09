" Begin .vimrc
"set nocompatible "This is probably not needed
set relativenumber "Shows relative number lines
set number "Shows absolute number lines
set hlsearch "Highlights search matches
set incsearch "start searching at first char of the string
"tabstop and stuff for html
"autocmd FileType html setlocal shiftwidth=2 tabstop=2
set shiftwidth=4 "Indent as one single tab
set tabstop=4 "Tab is 4 spaces wide
set softtabstop=4 "Tab is 4 spaces wide
set bs=2 "backspace character for moving the cursor over automatically inserted indentation
set expandtab "instead of inserting a tab, insert the same width but in spaces
"set columns=120 "120 columns width | disabled due to issues with terminator
set background=dark "Sets the background to dark
set wrapmargin=8 "Number of characters from the right window border where wrapping starts
"set cindent "Smart indentation (probably not needed)
"set t_Co=256 "Terminal colors, probably not needed
set showcmd "shows partial commands in the last line of the screen
set cursorline "highlight the line where cursor is
set cursorcolumn "highlight the column where cursor is
syntax on "Highlight language syntax
set ruler "Shows the ruler (down-right positional info)
set inccommand=nosplit "replacement live feedback
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

"ctrlp exceptions (Probably not needed anymore since I'm not using ctrlp)
"set wildignore+=*/vendor/* 
"set wildignore+=*/node_modules/*
"set wildignore+=*/bower_components/*
"set wildignore+=*__pycache__*
"set wildignore+=*env*

cnoreabbrev ag Ag
cnoreabbrev aG Ag
cnoreabbrev AG Ag

"PDV extension for snippets
let g:pdv_template_dir = $HOME . '/.vim/bundle/pdv/templates_snip'
nnoremap <leader>dc :call pdv#DocumentWithSnip()<CR>

"Deactivating cursor keys in order to force the use of HJKL
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

"INDENTATION BY FILE
"Set proper indentation configurations when working on Python files
if has("autocmd")
	filetype on "Enable file type detection
	autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab
	autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab
	autocmd FileType php setlocal shiftwidth=4 tabstop=4 softtabstop=4 noexpandtab
endif

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
nmap <C-p> :Files<CR> 

"CoC
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Automatically folding code
set foldmethod=indent
" Saving folds automatically
autocmd BufWinLeave,BufLeave,BufWritePost ?* nested silent! mkview!
autocmd BufWinEnter ?* silent! loadview

" Easier session management
let g:sessions_dir = '~/vim-sessions'
exec 'nnoremap <leader>ss :mks! ' . g:sessions_dir . '/*.vim<C-D><BS><BS><BS><BS><BS>'
exec 'nnoremap <leader>sr :so ' . g:sessions_dir . '/*.vim<C-D><BS><BS><BS><BS><BS>'
exec 'nnoremap <leader>ss :mks! ' . g:sessions_dir . '/*.vim<C-D><BS><BS><BS><BS><BS>'

" Faster window switching
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Exit from terminal mode easier
:tnoremap <Esc> <C-\><C-n>

" insert pudb trace
nnoremap <leader>rr Ofrom pudb.remote import set_trace<Enter>set_trace(term_size=(270, 72), host='0.0.0.0', port=4444)<Esc>
set colorcolumn=120 "Highligt the 120'th line (should be the last)

" show/hide invisible characters and set custom symbols
nmap <Leader>l :set list!<CR>
set listchars=space:·,eol:¬,tab:»æ

" gundo plugin
nnoremap <F5> :GundoToggle<CR>
" End .vimrc 
