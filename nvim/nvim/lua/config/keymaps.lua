-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")
local map = vim.keymap.set
local del = vim.keymap.del

-- Next/prev with zz
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- greatest remap ever
map("x", "<leader>p", [["_dP]])
map({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to clipboard" })
map("n", "<leader>Y", [["+Y]])

map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Search and Replace" })

-- Terminal

local lazyterm = function()
  Util.terminal(nil, { cwd = Util.root() })
end
map("n", "<A-i>", lazyterm, { desc = "Terminal (root dir)" })
map("t", "<A-i>", "<cmd>close<cr>", { desc = "Hide Terminal" })

-- BufferLine

map("n", "<Tab>", "<cmd>:BufferLineCycleNext<CR>")
map("n", "<S-Tab>", "<cmd>:BufferLineCyclePrev<CR>")
map("n", "<leader>x", function()
  local curr_buffer = vim.fn.bufnr("%")
  vim.cmd.bp()
  vim.cmd.bd(curr_buffer)
end)

-- Removes
del("n", "<S-h>")
del("n", "<S-l>")
del("n", "[b")
del("n", "]b")
del("n", "<leader>bb")
del("n", "<leader>`")
del("n", "<leader>ur")
del("t", "<esc><esc>")
del("n", "<leader>ft")
del("n", "<leader>fT")
del("n", "<c-/>")
del("n", "<c-_>")
del("t", "<C-/>")
del("t", "<c-_>")
del("n", "<leader>ww")
del("n", "<leader>wd")
del("n", "<leader>w-")
del("n", "<leader>w|")
del("n", "<leader>-")
del("n", "<leader>|")
del("n", "<leader><tab>l")
del("n", "<leader><tab>f")
del("n", "<leader><tab><tab>")
del("n", "<leader><tab>]")
del("n", "<leader><tab>d")
del("n", "<leader><tab>[")
