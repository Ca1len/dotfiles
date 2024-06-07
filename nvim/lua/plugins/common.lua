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
      timeout = 10000,
      level = 3,
      render = "minimal",
      stages = "static",
    },
  },
  { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "cpp",
        "bash",
        "c",
        "diff",
        "json",
        "jsonc",
        "lua",
        "luadoc",
        "luap",
        "markdown",
        "markdown_inline",
        "python",
        "regex",
        "toml",
        "vim",
        "vimdoc",
        "yaml",
      },
    },
  },
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      vim.keymap.set("i", "<A-g>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<A-n>", function()
        return vim.fn["codeium#CycleCompletions"](1)
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<A-N>", function()
        return vim.fn["codeium#CycleCompletions"](-1)
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<A-c>", function()
        return vim.fn["codeium#Clear"]()
      end, { expr = true, silent = true })
    end,
  },
}
