vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'glepnir/indent-guides.nvim'
	use {'kyazdani42/nvim-tree.lua', requires = {'kyazdani42/nvim-web-devicons'}}

	require('plugconf.nvim-treesitter')(use)
	require('plugconf.nvim-lspconfig')(use)
	require('plugconf.telescope')(use)
	require('plugconf.galaxyline')(use)
	require('plugconf.completion-nvim')(use)
end)
