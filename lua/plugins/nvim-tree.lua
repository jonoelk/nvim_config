return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = true,
    keys = {
        { '<leader>ee', '<cmd>NvimTreeOpen<cr>' },
    },
    config = function()
        local nvimtree = require("nvim-tree")
        local api = require("nvim-tree.api")

        nvimtree.setup({
            actions = {
                open_file = { quit_on_open = false, },
            },
            view = {
                width = {
                    min = 30,
                    padding = 5,
                },
                relativenumber = true,
            },
            git = {
                ignore = false,
            },
            renderer = {
                indent_markers = {
                    enable = true,
                }
            },
        })

        vim.keymap.set('n', '<leader>ee', function() api.tree.toggle({ find_file = true }) end)
    end,
}
