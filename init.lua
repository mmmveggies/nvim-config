require 'bootstrap'
require 'funcs'
require 'plugins'
require 'lsp'
require 'settings'
require 'mappings'

vim.cmd'autocmd BufWritePost plugins.lua PackerCompile'
