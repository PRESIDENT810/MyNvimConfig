-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = "Podfile",
  callback = function()
    vim.bo.filetype = "ruby"
  end
})

-- 开启 Folding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'

local wk = require("which-key")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {})

wk.add({
  {"<leader>fs", desc = "Document Symbols"}
})
