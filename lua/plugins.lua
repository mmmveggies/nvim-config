vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		'glepnir/indent-guides.nvim',
		config = function() require'indent_guides'.setup{} end
	}

	use {
		'kyazdani42/nvim-tree.lua',
		requires = {'kyazdani42/nvim-web-devicons'}
	}

	use {
		'tjdevries/gruvbuddy.nvim',
		requires = {'tjdevries/colorbuddy.vim'},
		config = function() require'colorbuddy'.colorscheme'gruvbuddy' end
	}

	use {
		'akinsho/nvim-bufferline.lua',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function() require'bufferline'.setup{} end
	}

	use {
		'nvim-lua/completion-nvim',
		config = function() vim.cmd [[autocmd BufEnter * lua require'completion'.on_attach()]] end
	}

	use {
		'neovim/nvim-lspconfig',
		run = 'npm i -g typescript-language-server'
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
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
		config = function()
			require'telescope'.setup{
				defaults = {
					file_ignore_patterns = {'node_modules','dist','build'}
				}
			}
		end
	}
end)
