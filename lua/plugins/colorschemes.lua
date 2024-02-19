return {
    -- Standard theme (blueish)
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            style = "moon"
        },
        config = function()
            vim.cmd([[colorscheme tokyonight]])
        end,
    },

    -- Brown/warm (gruvy)
    {
        "crispybaccoon/evergarden",
        lazy = true,
        opts = {
            transparent_background = false,
            contrast_dark = 'medium', -- hard | medium | soft
            override_terminal = true,
            style = {
                tabline = { reverse = true, color = 'green' },
                search = { reverse = false, inc_reverse = true },
                types = { italic = false },
                keyword = { italic = false },
                comment = { italic = true },
            }
        },
        config = function()
            vim.cmd([[colorscheme evergarden]])
        end,
    },

    -- Neon (white)
    {
        "rafamadriz/neon",
        lazy = true,
        config = function()
            vim.cmd([[colorscheme neon]])
            vim.g.neon_style = "light"
            vim.g.neon_italic_comment = false
        end,
    },

    -- Rose pine dawn (light)
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = true,
        config = function()
            require("rose-pine").setup({
                variant = "dawn",
                extend_background_behind_borders = true,

                enable = {
                    terminal = true,
                    legacy_highlights = true,
                    migrations = true,
                },

                styles = {
                    bold = true,
                    italic = true,
                    transparency = false,
                },
            })

            vim.cmd([[colorscheme rose-pine-dawn]])
        end,
    },

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
                    italic = true,
                    transparency = false,
                },
            })

            vim.cmd([[colorscheme rose-pine]])
        end,
    },
}
