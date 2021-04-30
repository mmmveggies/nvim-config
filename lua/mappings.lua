local km = vim.api.nvim_set_keymap

local expr = {expr = true}
local noremap = {noremap = true}
local noremapsilent = {noremap = true, silent = true}

-- "HOT" RELOADING
km('n', '<leader>0', ':luafile ~/.config/nvim/lua/mappings.lua<cr>', noremap)

-- Copy/Paste
km('', '<leader>y', '"+y', noremap)
km('', '<leader>p', '"+p', noremap)

-- Select
-- km('n', 'H', 'mal??e+1<Enter>mb//<Enter>v`x`x', {noremap=true})

-- Save
km('n', '<leader>s', '<cmd>w<cr>', noremapsilent)

-- Autocomplete
km('i', '<Tab>', 'pumvisible() ? "\\<c-n>" : "\\<Tab>"', expr)
km('i', '<s-Tab>', 'pumvisible() ? "\\<c-p>" : "\\<Tab>"', expr)

-- Panes
km('n', '<c-h>', '<c-w>h', noremap)
km('n', '<c-j>', '<c-w>j', noremap)
km('n', '<c-k>', '<c-w>k', noremap)
km('n', '<c-l>', '<c-w>l', noremap)
km('n', '<leader>wh', ':vertical :res -10<cr>', noremap)
km('n', '<leader>wl', ':vertical :res +10<cr>', noremap)
km('n', '<leader>wj', ':res +10<cr>', noremap)
km('n', '<leader>wk', ':res -10<cr>', noremap)

-- Telescope
km('n', '<leader>ff', '<cmd>Telescope find_files theme=get_dropdown<cr>', noremap)
km('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', noremap)
km('n', '<leader>fb', '<cmd>Telescope buffers<cr>', noremap)
km('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', noremap)

-- Terminal
km('n', '<leader>z', ':split term://zsh<cr>', noremap)
km('t', '<Esc>', [[<c-\><c-n>]], noremap)

-- Tree
km('n', '<leader>t', '<Plug>NvimTreeToggle', noremap)
km('n', '<leader>r', '<Plug>NvimTreeRefresh', noremap)
km('n', '<leader>n', '<Plug>NvimTreeFindFile', noremap)
