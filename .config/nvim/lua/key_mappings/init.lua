-- Use Ctrl+P to open file search
vim.keymap.set('n', '<C-p>', ':Files<CR>')

-- Use Ctrl+n to open Nvim Tree
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>')

-- Insert pudb trace snippet
vim.keymap.set('n', '<leader>rr', 'Ofrom pudb.remote import set_trace<Enter>set_trace(term_size=(211, 56), host=\'0.0.0.0\', port=4444)<Esc>')
