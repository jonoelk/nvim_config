return {
    "rcarriga/nvim-dap-ui",
    config = function()
        require("dapui").setup()

        vim.keymap.set('n', '<leader>du', function() require("dapui").toggle() end)
    end,
}
