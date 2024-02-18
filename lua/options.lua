local opt = vim.opt

-- [[ Context ]]
opt.number = true
opt.relativenumber = true
opt.scrolloff = 4
opt.signcolumn = "number"
opt.wrap = false
opt.errorbells = false

-- [[ Backups ]]
opt.swapfile = false
opt.writebackup = false
opt.undodir = "~/.config/nvim/undodir"
opt.undofile = true

-- [[ Search ]]
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- [[ Whitespace ]]
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.smartindent = true
opt.smarttab = true
opt.autoindent = true

-- [[ Theme ]]
opt.termguicolors = true
vim.cmd.colorscheme('tokyonight')
