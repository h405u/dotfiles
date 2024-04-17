-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del({ "n", "x" }, "<Up>")
vim.keymap.del({ "n", "x" }, "<Down>")

vim.keymap.set({ "n", "x" }, "j", "gj")
vim.keymap.set({ "n", "x" }, "j", "gj")
