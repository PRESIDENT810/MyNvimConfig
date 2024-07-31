-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {})

wk.add({
  {"<leader>fs", desc = "Document Symbols"}
})
