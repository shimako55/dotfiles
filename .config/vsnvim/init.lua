print("hello lua")
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.keymap.set({"n", "v"}, "<leader>j", "10j", { noremap = true })
vim.keymap.set({"n", "v"}, "<leader>k", "10k", { noremap = true })

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  'vscode-neovim/vscode-multi-cursor.nvim',
  event = 'VeryLazy',
  cond = not not vim.g.vscode,
  opts = {},
})
vim.keymap.set({ "n", "x", "i" }, "<C-d>", function()
  require("vscode-multi-cursor").addSelectionToNextFindMatch()
end)
print("end of init.lua")
