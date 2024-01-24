-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.wrap = true

opt.foldmethod = "expr"
opt.foldtext = vim.treesitter.foldtext()
opt.foldlevel = 99

local foo = function()
  print(123)
end
