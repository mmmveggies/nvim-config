local km = vim.api.nvim_set_keymap

local expr = {expr = true}
local noremap = {noremap = true}
local noremapsilent = {noremap = true, silent = true}
local noremapsilentexpr = {noremap = true, silent = true, expr = true}

-- "HOT" RELOADING
km('n', '<leader>0', '<cmd>luafile ~/.config/nvim/lua/mappings.lua<cr>', noremap)
km('n', '<leader>1', ':w<cr>:luafile %<cr>', noremap)

-- Copy/Paste
km('', '<leader>y', '"+y', noremap)
km('', '<leader>p', '"+p', noremap)

-- Save
km('n', '<leader>s', '<cmd>w<cr>', noremapsilent)

-- Autocomplete
km('i', '<Tab>', 'pumvisible() ? "\\<c-n>" : "\\<Tab>"', expr)
km('i', '<s-Tab>', 'pumvisible() ? "\\<c-p>" : "\\<Tab>"', expr)
km('i', '<c-Space>', '"\\<c-x>\\<c-o>"', noremapsilentexpr)

-- Panes
km('n', '<c-h>', '<c-w>h', noremap)
km('n', '<c-j>', '<c-w>j', noremap)
km('n', '<c-k>', '<c-w>k', noremap)
km('n', '<c-l>', '<c-w>l', noremap)
km('n', '<leader>n', '<cmd>new<cr>', noremap)
km('n', '<leader>v', '<cmd>vnew<cr>', noremap)
km('n', '<leader>q', '<cmd>q<cr>', noremap)

-- make big
km('n', '<leader>wl', '<c-w>|<cmd>vertical :res -10<cr>', noremap)
km('n', '<leader>wj', '<c-w>_<cmd>res -10<cr>', noremap)
-- make small
km('n', '<leader>wk', '<cmd>res -99<cr><cmd>res +10<cr>', noremap)
km('n', '<leader>wh', '<cmd>vert <cmd>res -99<cr><cmd>vert :res +10<cr>', noremap)

-- Telescope
km('n', '<leader>ff', '<cmd>Telescope find_files theme=get_dropdown<cr>', noremap)
km('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', noremap)
km('n', '<leader>fb', '<cmd>Telescope buffers<cr>', noremap)
km('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', noremap)

-- LSP
km('n', '<leader><leader>', '<cmd>lua vim.lsp.buf.hover()<cr>', noremap)
km('n', '<leader>ld', '<cmd>lua vim.lsp.buf.definition()<cr>', noremap)
km('n', '<leader>ln', '<cmd>lua vim.lsp.diagnostic.goto_next()<cr>', noremap)
km('n', '<leader>lp', '<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>', noremap)

-- Terminal
km('n', '<leader>z', ':split term://zsh<cr>', noremap)
km('t', '<Esc>', [[<c-\><c-n>]], noremap)
