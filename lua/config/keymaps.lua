-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")

local function map_leader(mode, lhs, rhs, desc)
  vim.keymap.set(mode, "<leader>" .. lhs, rhs, { noremap = true, silent = true, desc = desc })
end
local function map(mode, lhs, rhs)
  vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true })
end

-- Move lazygit keybind
map_leader("n", "gl", function()
  Util.float_term({ "lazygit" }, { cwd = Util.get_root(), esc_esc = false })
end, "Lazygit (root dir)")

-- Clear Search
map_leader("n", "sx", "<cmd>nohl<cr>", "Clear Search Highlight")

-- Don't yank when deleting single character
map("n", "x", '"_x')

-- Select all
map("n", "<C-a>", "gg<S-v>G")
