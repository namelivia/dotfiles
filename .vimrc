" Begin .vimrc
set nocompatible
set relativenumber
set number
set hlsearch
set incsearch
set tabstop=4
set shiftwidth=4
set bs=2
set columns=120
set background=dark
set wrapmargin=8
set cindent
set t_Co=256
set showcmd
filetype indent on
syntax on
set ruler
execute pathogen#infect()

"Set omnifunc for filetype completition
filetype plugin on 
set omnifunc=syntaxcomplete#Complete

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_phpcs_args = '--standard=' . $HOME . '/Proyectos/php-cs/Evalua/ruleset.xml'
let g:syntastic_javascript_checkers=['jshint']

"airline
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
noremap <f1> :bprev<CR> 
noremap <f2> :bnext<CR> 

"php-cs-fixer
let mapleader = ','
let g:php_cs_fixer_level = 'psr2'
"Our custom php fixer stuff
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>
nnoremap <silent><leader>st :%s/    /\t/g<CR>

"nerdtree
map <C-n> :NERDTreeToggle<CR>

"ctrlp exceptions
set wildignore+=*/vendor/*
set wildignore+=*/node_modules/*
set wildignore+=*/bower_components/*

"Phpqa for phpcs and phpmd
let g:phpqa_messdetector_ruleset = $HOME . '/Proyectos/phpmd-ruleset/evalua-ruleset.xml'
let g:phpqa_codesniffer_args = '--standard=' . $HOME . '/Proyectos/php-cs/Evalua/ruleset.xml'
let g:phpqa_codesniffer_cmd = 'phpcs'
let g:phpqa_messdetector_cmd='phpmd'

"Ag for searching
let g:ackprg = 'ag --column --smart-case'
cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack

"CtrlPTag as st for searching on tags
nnoremap <leader>ts :CtrlPTag<CR>

"Mapping to jump between relative and absolute lines
nnoremap <leader>l1 :set number<CR>
nnoremap <leader>l2 :set relativenumber<CR>

"PDV extension
let g:pdv_template_dir = $HOME . '/.vim/bundle/pdv/templates_snip'
nnoremap <leader>dc :call pdv#DocumentWithSnip()<CR>
" End .vimrc 

"Let's get rid of the cursor keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
