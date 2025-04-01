-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Install lazy.vim if it is not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- The leader key mapping need to happen before loading lazy
vim.g.mapleader = ','
vim.g.maplocalleader = ','

return require('lazy').setup('plugins')
