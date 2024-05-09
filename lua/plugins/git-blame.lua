return {
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
        require("gitblame").setup {
            enabled = false
        }
        vim.keymap.set('n', '<leader>gb', '<cmd>GitBlameToggle<CR>')
    end
}
