return {
    "mfussenegger/nvim-dap",
    config = function()
        local dap = require("dap")
        dap.adapters.gdb = {
            type = "executable",
            command = "gdb",
            args = { "-i", "dap" }
        }
        dap.configurations.cpp = {
            {
                name = "Launch",
                type = "gdb",
                request = "launch",
                program = function()
                    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                end,
                cwd = "${workspaceFolder}",
                stopAtBeginningOfMainSubprogram = false,
            },
        }

        vim.keymap.set('n', '<leader>dl', function() require('dap').run_last() end)
        vim.keymap.set('n', '<leader>b', function() require('dap').toggle_breakpoint() end)
        vim.keymap.set('n', '<leader>dc', function() require('dap').continue() end)
        vim.keymap.set('n', '<leader>n', function() require('dap').step_over() end)
        vim.keymap.set('n', '<leader>s', function() require('dap').step_into() end)
    end,
}
