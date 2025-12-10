return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<Leader>ms", -- set to false to disable one of the mappings
                        node_incremental= "<Leader>mi",
                        scope_incremental = "<Leader>mc",
                        node_decremental = "<Leader>md",
                    },
                },
                    auto_install = true,

                    highlight = {
                        enable = true,
                    },
                    ensure_installed = {
                        "bash",
                        "c",
                        "rust",
                        "cpp",
                        "html",
                        "javascript",
                        "java",
                        "lua",
                        --"latex",
                        "luadoc",
                        "luap",
                        "markdown",
                        "markdown_inline",
                        "python",
                        "toml",
                        "typescript",
                        "vim",
                        "vimdoc",
                        "xml",
                        "yaml",
                        "query"
                    }    })
        end,

    }
}
