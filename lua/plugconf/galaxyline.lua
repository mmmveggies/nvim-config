local galaxyline = require'galaxyline'
local colors = require'galaxyline.colors'

local config = function()
	galaxyline.section.left[1] = {
		FileSize = {
			provider = 'FileSize',
			highlight = {colors.green, colors.purple},
			separator = ' - ',
			separator_highlight = {colors.purple, colors.darkblue},
			condition = function()
				return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
			end
		}
	}
end

return function (use)
	use {
		'glepnir/galaxyline.nvim',
		branch = 'main',
		requires = {'kyazdani42/nvim-web-devicons', opt = true},
		config = config
	}
end

