return
{
  "folke/snacks.nvim",
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    -- Dashboard config
    dashboard = { 
        enabled = true,
        -- changed art in .local/share/nvim/lazy...
    },
    explorer = { enabled = true },
    picker = { enabled = true },
    indent = { enabled = true },
    gitbrowse = { enabled = true },
  },
  keys = {
      { "<leader>uC", function() Snacks.picker.colorschemes() end, desc = "Colorschemes" },  
      { "<leader>e", function() Snacks.picker.explorer() end, desc = "Explorer" },
  }
}
