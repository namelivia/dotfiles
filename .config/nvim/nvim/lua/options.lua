vim.opt.relativenumber=true --Shows relative number lines
vim.opt.number=true --Shows absolute number lines
vim.opt.hlsearch=true --Highlights search matches
vim.opt.incsearch=true --start searching at first char of the string

--tabstop and stuff for html
vim.opt.shiftwidth=4 --Indent as one single tab
vim.opt.tabstop=4 --Tab is 4 spaces wide
vim.opt.softtabstop=4 --Tab is 4 spaces wide
--vim.opt.bs=2 --backspace character for moving the cursor over automatically inserted indentation
vim.opt.expandtab=true --instead of inserting a tab, insert the same width but in spaces

vim.opt.wrapmargin=8 --Number of characters from the right window border where wrapping starts
vim.opt.showcmd=true --shows partial commands in the last line of the screen
vim.opt.cursorline=true --highlight the line where cursor is
vim.opt.cursorcolumn=true --highlight the column where cursor is

vim.opt.ruler=true --Shows the ruler (down-right positional info)
vim.opt.inccommand=nosplit --replacement live feedback
--vim.opt.mouse=false --disable mouse

-- Yank to clipboard
vim.opt.clipboard=unnamedplus
