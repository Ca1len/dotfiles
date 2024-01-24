return {
  -- {
  -- "danymat/neogen",
  -- dependencies = "nvim-treesitter/nvim-treesitter",
  -- config = function()
  --   require("neogen").setup({
  --     enabled = true,
  --     languages = {
  --       lua = {
  --         template = {
  --           annotation_convention = "emmylua", -- for a full list of annotation_conventions, see supported-languages below,
  --         },
  --       },
  --     },
  --   })
  -- end,
  -- Uncomment next line if you want to follow only stable versions
  -- version = "*",
  -- },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 3000,
      level = 3,
      render = "minimal",
      stages = "static",
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "cpp",
      },
    },
  },
}
