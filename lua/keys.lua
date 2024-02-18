local map = vim.keymap.set

map({'v'}, '<C-c>', '"+y')
map({'n', 'v'}, '<C-p>', '"+P')
map({'n', 'v'}, 'x', '"_x')
