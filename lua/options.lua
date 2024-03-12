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
opt.expandtab = true -- viv repos
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.smartindent = true
opt.autoindent = true
opt.listchars = "tab:> ,trail:-,space:."
opt.list = true

-- [[ Theme ]]
opt.termguicolors = true
vim.cmd.colorscheme('evergarden')

vim.api.nvim_create_augroup('custom_indent', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
    group = 'custom_indent',
    pattern = '*',
    callback = function()
        vim.opt.expandtab = true
    end,
})
vim.api.nvim_create_autocmd('FileType', {
    group = 'custom_indent',
    pattern = 'cpp',
    callback = function()
        vim.opt.expandtab = false
    end,
})
