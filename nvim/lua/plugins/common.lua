return {
  {
    "akinsho/bufferline.nvim",
    commit = "f4b4b980ce88d546aeb69d11463187c8f716a1a1",
  },
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
