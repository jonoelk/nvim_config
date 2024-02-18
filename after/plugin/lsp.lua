local lsp_zero = require("lsp-zero")

local cmp = require("cmp")


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
