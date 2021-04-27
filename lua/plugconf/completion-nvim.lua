local config = function()
	vim.cmd [[autocmd BufEnter * lua require'completion'.on_attach()]]
end

return function (use)
	use {
		'nvim-lua/completion-nvim',
		config = config
	}
end

