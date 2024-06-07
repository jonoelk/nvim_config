return {
    
    -- Rose pine main (dark)
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = true,
        config = function()
            require("rose-pine").setup({
                variant = "main",
                extend_background_behind_borders = true,

                enable = {
                    terminal = true,
                    legacy_highlights = true,
                    migrations = true,
                },

                styles = {
                    bold = true,
                    italic = false,
                    transparency = false,
                },
            })

            vim.cmd([[colorscheme rose-pine]])
        end,
    },

    -- Brown/warm (gruvy)
    {
        "crispybaccoon/evergarden",
        lazy = true,
        config = function()
            require 'evergarden'.setup {
                transparent_background = false,
                contrast_dark = 'medium', -- hard | medium | soft
                override_terminal = true,
                style = {
                    tabline = { reverse = true, color = 'green' },
                    search = { reverse = false, inc_reverse = true },
                    types = { italic = false },
                    keyword = { italic = false },
                    comment = { italic = false },
                }
            }
            vim.cmd([[colorscheme evergarden]])
        end,
    },

    -- Same as above - vimscript
    {
        "sainnhe/everforest",
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.everforest_background = 'hard'
            vim.g.everforest_disable_italic_comment = 1
            vim.g.everforest_diagnostic_virtual_text = 'colored'

            vim.cmd([[colorscheme everforest]])
        end,
    },

    -- Minimal with single primary
    -- TODO: Change primary to strong orange?
    {
        "jesseleite/nvim-noirbuddy",
        lazy = true,
        dependencies = {
            { 'tjdevries/colorbuddy.nvim', branch = 'dev' }
        },
        config = function()
            require('noirbuddy').setup {
                colors = {
                    primary = '#cc5500',
                },
            }
            vim.cmd.colorscheme(noirbuddy)
            -- vim.cmd([[colorscheme noirbuddy]])
        end,
    },

    -- lackluster - maybe better than above one
    {
        "slugbyte/lackluster.nvim",
        lazy = true,
        init = function()
            vim.cmd.colorscheme("lackluster")
        end,
        config = function()
            local lackluster = require("lackluster")
            local color = lackluster.color
            lackluster.setup({
                tweek_syntax = {
                    comment = color.gray5,
                },
                tweek_background = {
                    normal = 'none',
                    telescope = 'none',
                    menu = color.gray3,
                    popup = 'default',
                },
            })
        end,
    }
}
