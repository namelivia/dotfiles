"Use Ctrl+P to open file search
nmap <C-p> :Files<CR> 

"Insert pudb trace snippet
nnoremap <leader>rr Ofrom pudb.remote import set_trace<Enter>set_trace(term_size=(211, 56), host='0.0.0.0', port=4444)<Esc>
nnoremap <leader>rp Ofrom pdb import set_trace<Enter>set_trace()<Esc>

"Yank to clipboard
set clipboard+=unnamedplus
