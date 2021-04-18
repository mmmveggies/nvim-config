local km = vim.api.nvim_set_keymap

km("n", "<c-h>", "<c-w>h", {noremap = true})
km("n", "<c-j>", "<c-w>j", {noremap = true})
km("n", "<c-k>", "<c-w>k", {noremap = true})
km("n", "<c-l>", "<c-w>l", {noremap = true})
km("n", "<leader>w", "<cmd>w<cr>", {noremap=true, silent=true})
