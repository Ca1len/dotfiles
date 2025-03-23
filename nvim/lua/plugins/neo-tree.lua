---@type LazySpec
return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      local astro = require "astrocore"
      -- fill any relevant options here
      opts.window.position = "right"
    end,
  },
}
