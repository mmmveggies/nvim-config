local km = vim.api.nvim_set_keymap

-- "HOT" RELOADING
km('n', '<leader>0', ':luafile ~/.config/nvim/lua/mappings.lua<cr>', {noremap=true})

-- Copy/Paste
km('', '<leader>y', '"+y', {noremap=true})
km('', '<leader>p', '"+p', {noremap=true})

-- Save
km('n', '<leader>s', '<cmd>w<cr>', {noremap=true, silent=true})

-- Autocomplete ... these don't work
km('i', '<expr><Tab>', 'pumvisible() ? "\\<c-n>" : "\\<Tab>"', {noremap = true})
km('i', '<expr><s-Tab>', 'pumvisible() ? "\\<c-p>" : "\\<Tab>"', {noremap = true})

-- Panes
km('n', '<c-h>', '<c-w>h', {noremap = true})
km('n', '<c-j>', '<c-w>j', {noremap = true})
km('n', '<c-k>', '<c-w>k', {noremap = true})
km('n', '<c-l>', '<c-w>l', {noremap = true})
km('n', '<leader>wh', ':vertical :res -10<cr>', {noremap = true})
km('n', '<leader>wl', ':vertical :res +10<cr>', {noremap = true})
km('n', '<leader>wj', ':res +10<cr>', {noremap = true})
km('n', '<leader>wk', ':res -10<cr>', {noremap = true})

-- Telescope
km('n', '<leader>ff', '<cmd>Telescope find_files theme=get_dropdown<cr>', {noremap = true})
km('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', {noremap = true})
km('n', '<leader>fb', '<cmd>Telescope buffers<cr>', {noremap = true})
km('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', {noremap = true})

-- Terminal
km('n', '<leader>z', ':split term://zsh<cr>', {noremap = true})
km('t', '<Esc>', [[<c-\><c-n>]], {noremap = true})

-- Tree
km('n', '<leader>t', '<Plug>NvimTreeToggle', {noremap = true})
km('n', '<leader>r', '<Plug>NvimTreeRefresh', {noremap = true})
km('n', '<leader>n', '<Plug>NvimTreeFindFile', {noremap = true})
