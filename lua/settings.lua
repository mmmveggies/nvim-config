vim.g.mapleader = [[ ]]
vim.g.maplocalleader = [[,]]

-- buffer only
vim.bo.textwidth = 100
vim.bo.smartindent = true
vim.bo.expandtab = true
vim.bo.tabstop = 2
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2

-- window only
vim.wo.cursorline = true
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
vim.o.termguicolors = true
vim.o.completeopt = 'menuone,noinsert,noselect'
vim.o.omnifunc = 'v:lua.vim.lsp.omnifunc'

-- fn
vim.fn.sign_define("LspDiagnosticsSignError", {text = "", numhl = "LspDiagnosticsDefaultError"})
vim.fn.sign_define("LspDiagnosticsSignWarning", {text = "", numhl = "LspDiagnosticsDefaultWarning"})
vim.fn.sign_define("LspDiagnosticsSignInformation", {text = "", numhl = "LspDiagnosticsDefaultInformation"})
vim.fn.sign_define("LspDiagnosticsSignHint", {text = "", numhl = "LspDiagnosticsDefaultHint"})

