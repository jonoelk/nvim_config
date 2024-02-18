return {
    "numToStr/FTerm.nvim",
    config = function()
        vim.keymap.set({'n', 't'}, '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
    end,
}
