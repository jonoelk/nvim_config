return {
    {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-context",
	},
	config = function()
	    local treesitter = require("nvim-treesitter.configs")

	    treesitter.setup({
		highlight = {
		    enable = true,
		    additional_vim_regex_highlighting = false,
		},
		incremental_selection = {
		    enable = true,
		    keymaps = {
			init_selection = "gnn",
			node_incremental = "grn",
			scope_incremental = "grc",
			node_decremental = "grm",
		    },
		},
		indent = {
		    enable = true
		},
		ensure_installed = {
		    "python",
		    "c",
		    "cpp",
		    "lua",
		    "vim",
		    "vimdoc",
		    "gitignore",
		},
	    })
	end,
    },
}
