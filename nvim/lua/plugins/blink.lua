return {
  'saghen/blink.nvim',

  dependencies = {
    "folke/lazydev.nvim",
       ft = "lua", -- only load on lua files
       opts = {
         library = {
           -- See the configuration section for more details
           -- Load luvit types when the `vim.uv` word is found
           { path = "${3rd}/luv/library", words = { "vim%.uv" } },
         },
     },
  },

  build = 'cargo build --release', -- for delimiters
  opts = {
    chartoggle = { enabled = true },
    keymap = {preset = "default"},
    indent = { enabled = true },
    tree = { enabled = true }
  }
}
