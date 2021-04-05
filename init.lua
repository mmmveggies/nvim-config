-- https://github.com/wbthomason/dotfiles/blob/linux/neovim/.config/nvim/init.lua
local g = vim.g
local cmd = vim.cmd
local o, wo, bo = vim.o, vim.wo, vim.bo
local utils = require('config.utils')
local opt = utils.opt
local autocmd = utils.autocmd
local map = utils.map

-- Leader / local leader
g.mapleader = [[ ]]
g.maplocalleader = [[,]]

-- Settings
local buffer = {o, bo}
local window = {o, wo}
opt('textwidth', 100, buffer)
opt('scrolloff', 7)
opt('whichwrap', vim.o.whichwrap..'<,>,h,l')
opt('inccommand', 'nosplit')

opt('smartcase', true)
opt('ignorecase', true)

opt('tabstop', 2, buffer)
opt('softtabstop', 0, buffer)
opt('expandtab', true, buffer)
opt('shiftwidth', 2, buffer)
opt('smartindent', true, buffer)

opt('number', true, window)
opt('relativenumber', true, window)
opt('laststatus', 2)
opt('signcolumn', 'yes:1', window)
opt('mouse', 'nivh')

-- cmd [[colorscheme nazgul]]


