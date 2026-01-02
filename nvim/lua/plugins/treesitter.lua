return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        lazy = false,
        opts = {
            ensure_installed = {
                "bash", "c", "rust", "cpp", "html", "javascript", "java", "lua",
                "luadoc", "luap", "markdown", "markdown_inline", "python",
                "toml", "typescript", "vim", "vimdoc", "xml", "yaml", "query",
                "hyprlang" -- WICHTIG: Das ist der Parser für Mango/Hyprland Syntax
            },
            auto_install = true,
            highlight = { enable = true },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<Leader>ms",
                    node_incremental = "<Leader>mi",
                    scope_incremental = "<Leader>mc",
                    node_decremental = "<Leader>md",
                },
            },
            vim.filetype.add({                                     
                pattern = { [".*/mango/config.conf"] = "hyprlang" }, 
            })                                                         
        },
    },
}

