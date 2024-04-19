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
    "huggingface/llm.nvim",
    opts = {
      model = "deepseek-coder:6.7b",
      backend = "ollama",
      url = "http://localhost:11434/api/generate",
      accept_keymap = "<A-g>",
      dismiss_keymap = "<A-r>",
      lsp = {
        bin_path = vim.api.nvim_call_function("stdpath", { "data" }) .. "/mason/bin/llm-ls.cmd",
      },
      request_body = {
        role = "assistant",
      },
      tokenizer = {
        repository = "deepseek-ai/deepseek-coder-6.7b-base",
        api_token = "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",
      },
    },
  },
}
