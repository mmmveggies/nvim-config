local config = function()
	require'nvim-treesitter.configs'.setup{
		ensure_installed = 'maintained',
		highlight = {enable = true},
	}
end

return function (use)
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = config,
	}
end

