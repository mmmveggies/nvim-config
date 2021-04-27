local config = function()
	require'telescope'.setup{
		defaults = {
			file_ignore_patterns = {
				'node_modules',
				'dist',
				'build',
			}
		}
	}
end

return function (use)
	use {
		'nvim-telescope/telescope.nvim',
		requires = {
			{'nvim-lua/popup.nvim'},
			{'nvim-lua/plenary.nvim'}
		},
		config = config
	}
end

