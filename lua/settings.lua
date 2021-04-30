-- vim.cmd [[colorscheme gruvbox]]

vim.g.mapleader = [[ ]]
vim.g.maplocalleader = [[,]]

-- buffer only
vim.bo.textwidth = 100
vim.bo.smartindent = true
vim.bo.expandtab = false
vim.bo.tabstop = 2
vim.bo.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2

-- window only
vim.wo.signcolumn = 'yes:1'
vim.wo.number = true
vim.wo.relativenumber = true

-- global
vim.o.background = 'dark'
vim.o.splitbelow = true
vim.o.scrolloff = 7
vim.o.whichwrap = vim.o.whichwrap..'<,>,h,l'
vim.o.inccommand = 'nosplit'
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.laststatus = 2
vim.o.mouse = 'nivh'
vim.o.completeopt = 'menuone,noinsert,noselect'
vim.o.termguicolors = true

