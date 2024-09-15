-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del({ "n", "x" }, "<Up>")
vim.keymap.del({ "n", "x" }, "<Down>")

vim.keymap.set({ "n", "x" }, "j", "gj")
vim.keymap.set({ "n", "x" }, "j", "gj")

vim.keymap.set("n", "<C-c>", ":lua Count()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

function Count()
  vim.cmd("%s/\\w\\+//gn")
  vim.cmd("%s/[\\u4e00-\\u9fa5\\u3040-\\u30FF]//gn")
end
