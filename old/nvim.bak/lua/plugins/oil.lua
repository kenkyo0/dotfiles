return {
  'stevearc/oil.nvim',
    opts = {   
        columns = {"icon"},
        keymap = {
        ["<C-h>"] = false,
        ["M-h"] = "action.select_split",
        },
        view_options = {
            show_hidden = true, 

    }
    },
  -- Optional dependencies
  dependencies = { 
      { "echasnovski/mini.icons", opts = {} },
      { "nvim-tree/nvim-web-devicons" },
  },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  vim.keymap.set("n", "<leader>-", "<CMD>Oil<CR>", { desc = "Open parrent directory"}),
}
