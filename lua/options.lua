local opt = vim.opt

-- [[ Context ]]
opt.guicursor = ""
opt.number = true
opt.relativenumber = true
opt.scrolloff = 8
opt.signcolumn = "number"
opt.wrap = false
opt.errorbells = false
opt.updatetime = 50
-- opt.colorcolumn = "80"

-- [[ Backups ]]
opt.swapfile = false
opt.writebackup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- [[ Search ]]
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- [[ Whitespace ]]
opt.expandtab = false
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.smartindent = true
opt.autoindent = true

-- [[ Theme ]]
opt.termguicolors = true
vim.cmd.colorscheme('evergarden')
