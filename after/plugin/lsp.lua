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
require('mason-lspconfig').setup({
    ensure_installed = {
        'clangd',
    },
    handlers = {
        lsp_zero.default_setup,
    },
})

require('lspconfig').clangd.setup {
    cmd = {
        "clangd",
        "--offset-encoding=utf-16",
    },
}

vim.lsp.handlers["textDocument/publishDiagnostics"] =
    vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = false
    })
