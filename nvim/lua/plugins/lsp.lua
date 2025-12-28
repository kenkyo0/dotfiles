return {
    {
        "mason-org/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "mason-org/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
            }
    },
    --{
    --    "VonHeikemen/lsp-zero.nvim",
    --    branch = "v3.x",
    --    lazy = true,
    --    config = false
    --},

    {
        "neovim/nvim-lspconfig",
        dependencies = {
            {"hrsh7th/cmp-nvim-lsp"}
        },
        lazy = false,
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            vim.lsp.enable('lua_ls', 'pyright', 'clangd', 'bash_lanuage_server') -- zk, texlab
            -- binds 
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ga", vim.lsp.buf.code_action, {})
            vim.api.nvim_set_keymap('n', '<leader>ge', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
        end,
    },
}
