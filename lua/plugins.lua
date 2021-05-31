vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
  use 'b3nj5m1n/kommentary'

	use {
		'glepnir/indent-guides.nvim',
		config = function() require'indent_guides'.setup{} end
	}

	use {
		'kyazdani42/nvim-tree.lua',
		requires = {'kyazdani42/nvim-web-devicons'}
	}

	use {
    'rafamadriz/friendly-snippets',
		requires = {'hrsh7th/vim-vsnip'}
	}

	use {
		'tjdevries/gruvbuddy.nvim',
		requires = {'tjdevries/colorbuddy.vim'},
		config = function() require'colorbuddy'.colorscheme'gruvbuddy' end
	}

	use {
		'nvim-lua/completion-nvim',
		config = function() vim.cmd [[autocmd BufEnter * lua require'completion'.on_attach()]] end
	}

	use {
		'neovim/nvim-lspconfig',
		run = 'npm i -g typescript-language-server graphql-language-service-cli'
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
		'hoob3rt/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true},
		config = function() require'lualine'.setup{} end
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
