return{
    {
        "nvim-neotest/nvim-nio",
    },
    {
        "rcarriga/nvim-dap-ui",
        event = "VeryLazy",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio"
        },
        config = function ()
            local dap = require("dap")
            local dapui = require("dapui")

            -- Add this line!
            dapui.setup()

            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close()
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close()
            end
            vim.keymap.set("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>")
            vim.keymap.set("n", "<leader>dr", "<cmd> DapContinue <CR>")
        end,
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        event = "VeryLazy",
        dependencies = {
            "mason-org/mason.nvim",
            "mfussenegger/nvim-dap"
        },
        opts = {
            -- Define handlers for specific debuggers
            handlers = {},
            },
    },
    {
        "mfussenegger/nvim-dap",
    },
}
