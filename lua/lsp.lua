local lspconfig = require'lspconfig'
lspconfig.gopls.setup{}
lspconfig.tsserver.setup{}

local sumneko_root_path = '~/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/macOS/lua-language-server"
lspconfig.sumneko_lua.setup{
	cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
	settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT',
				path = vim.split(package.path, ';'),
			},
			diagnostics = {
				globals = {'vim'},
			},
			workspace = {
				library = {
					[vim.fn.expand('$VIMRUNTIME/lua')] = true,
					[vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
				},
			},
			telemetry = { enable = false },
		},
	},
}
