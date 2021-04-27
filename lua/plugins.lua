vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		'neovim/nvim-lspconfig',
		run = 'npm i -g typescript-language-server'
	}

	use {'kyazdani42/nvim-tree.lua', requires = {'kyazdani42/nvim-web-devicons'}}

	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
		config = function()
			require'telescope'.setup{
				defaults = {
					file_ignore_patterns = {'node_modules', 'dist', 'build'}
				}
			}
		end
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = function()
			require'nvim-treesitter.configs'.setup{
				ensure_installed = 'maintained',
				highlight = {enable = true},
			}
		end
	}

	use {
		'nvim-lua/completion-nvim',
		config = function()
			vim.cmd [[autocmd BufEnter * lua require'completion'.on_attach()]]
		end
	}

	require'plugconf.galaxyline'(use)

	use 'glepnir/indent-guides.nvim'
end)
