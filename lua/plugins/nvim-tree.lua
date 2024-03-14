return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { 
        {
            "nvim-tree/nvim-web-devicons" 
        },
        {
            "JMarkin/nvim-tree.lua-float-preview",
            lazy = true,
            -- default
            opts = {},
        },
    },
    lazy = false,
    config = function()
        local nvimtree = require("nvim-tree")
        local api = require("nvim-tree.api")

        vim.keymap.set('n', '<leader>ee', function() api.tree.toggle({ find_file = true }) end)

        local function my_on_attach(bufnr)
            local api = require('nvim-tree.api')
            local FloatPreview = require("float-preview")

            local function opts(desc)
                return {
                    desc = "nvim-tree: " .. desc,
                    buffer = bufnr,
                    noremap = true,
                    silent = true,
                    nowait = true,
                }
            end

            FloatPreview.attach_nvimtree(bufnr)

            api.config.mappings.default_on_attach(bufnr)

            -- local close_wrap = FloatPreview.close_wrap
            --
            -- vim.keymap.set("n", "<C-t>", close_wrap(api.node.open.tab), opts("Open: New Tab"))
            -- vim.keymap.set("n", "<C-v>", close_wrap(api.node.open.vertical), opts("Open: Vertical Split"))
            -- vim.keymap.set("n", "<C-s>", close_wrap(api.node.open.horizontal), opts("Open: Horizontal Split"))
            -- vim.keymap.set("n", "<CR>", close_wrap(api.node.open.edit), opts("Open"))
            -- vim.keymap.set("n", "<Tab>", close_wrap(api.node.open.preview), opts("Open"))
            -- vim.keymap.set("n", "o", close_wrap(api.node.open.edit), opts("Open"))
            -- vim.keymap.set("n", "O", close_wrap(api.node.open.no_window_picker), opts("Open: No Window Picker"))
            -- vim.keymap.set("n", "a", close_wrap(api.fs.create), opts("Create"))
            -- vim.keymap.set("n", "d", close_wrap(api.fs.remove), opts("Delete"))
            -- vim.keymap.set("n", "r", close_wrap(api.fs.rename), opts("Rename"))
        end

        nvimtree.setup({
            on_attach = my_on_attach,
            actions = {
                open_file = { quit_on_open = true, },
            },
            view = {
                width = {
                    min = 30,
                    max = 60,
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
    end,
}
