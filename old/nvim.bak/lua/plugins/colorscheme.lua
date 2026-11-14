return {
    --"thedenisnikulin/vim-cyberpunk",
    --config = function ()
    --    vim.cmd.colorscheme("silverhand")
    --   
    --end,
    { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000,
    config = function ()
        vim.cmd.colorscheme("moonfly")
    end,
    },
    --"zenbones-theme/zenbones.nvim", -- if changing colorscheme, 
    --                              -- dont forget to change or comment the config
    --config = function()
    --    vim.opt.termguicolors = true
    --    vim.opt.background = "dark"
    --    --vim.g.zenbones = {
    --    --    lightness = "warm"
    --    --}
    --    vim.cmd.colorscheme("zenbones")
    --end,
    --dependencies = {
    --    "rktjmp/lush.nvim",
    --}
}
