local lsp_zero = require("lsp-zero")

local cmp = require("cmp")

vim.keymap.set('v', '<leader>fb', vim.lsp.buf.format)
vim.keymap.set({'n','v'}, '<leader>ca', vim.lsp.buf.code_action)


lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})

vim.lsp.config('*', {
    root_markers = { '.git' },
})

vim.lsp.config.clangd = {
    cmd = {
        "clangd",
        "--offset-encoding=utf-16",
        "--malloc-trim",
        -- "--log=verbose",
        "-j=3",
        "--header-insertion=iwyu",
    },
    filetypes = {"c", "cpp", "tpp", "cc"},
    root_markers = { '.clangd', 'compile_commands.json' },
}

vim.diagnostic.config({
    underline = false,
    virtual_text = true,
})

vim.lsp.enable({'clangd', 'gopls', 'pyright'})
