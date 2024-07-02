local map = vim.keymap.set

map({'v'}, '<C-c>', '"+y')
map({'n', 'v'}, '<C-p>', '"+P')
map({'n', 'v'}, 'x', '"_x')

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "J", "mzJ`z")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

map("x", "<leader>p", "\"_dP")

map("n", "Q", "<nop>")

map("n", "<leader>h", "<CMD>ClangdSwitchSourceHeader<CR>")
