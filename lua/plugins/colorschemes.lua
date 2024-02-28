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

	-- Blueish
	{
		"folke/tokyonight.nvim",
		lazy = true,
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

	-- Minimal with single primary
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
			vim.cmd([[colorscheme noirbuddy]])
		end,
	},

	{
		"davidosomething/vim-colors-meh",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme meh]])
		end,
	},
}
