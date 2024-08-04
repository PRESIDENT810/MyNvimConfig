-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")
local telescope = require('telescope.builtin')


-- Use option+left/right to move to the start/ end of line in insert mode
vim.api.nvim_set_keymap('i', '<M-left>', '<Esc>^i', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<M-right>', '<Esc>$a', {noremap = true, silent = true})

vim.api.nvim_set_keymap('i', '<M-S-left>', '<Esc>bi', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<M-S-right>', '<Esc>ea', {noremap = true, silent = true})

-- Use option+shift+up/down to move around in insert mode and exit any prompt
vim.api.nvim_set_keymap('i', '<M-S-up>', '<Esc>ka', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<M-S-down>', '<Esc>ja', {noremap = true, silent = true})

-- Use option+left/right to move around in normal mode
vim.api.nvim_set_keymap('n', '<M-left>', '^', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<M-right>', '$', {noremap = true, silent = true})

-- Use option+shift+arrow keys to select text
vim.api.nvim_set_keymap('n', '<M-S-left>', 'b', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<M-S-right>', 'e', {noremap = true, silent = true})

vim.api.nvim_set_keymap('v', '<M-left>', 'b', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<M-right>', 'e', {noremap = true, silent = true})

vim.api.nvim_set_keymap('v', '<M-S-left>', 'b', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<M-S-right>', 'e', {noremap = true, silent = true})

-- Use control+arrow keys to move to the beginning/end of line
vim.api.nvim_set_keymap('n', '<C-left>', '^', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-right>', '$', {noremap = true, silent = true})


wk.add({
  { "<leader>fs", telescope.lsp_document_symbols, desc = "Document Symbols" }
})

wk.add({
  { "<leader>t", desc = "telescope" },
  {
    mode = { "n" },
    { "<leader>tm", telescope.keymaps, desc = "keymaps" },
    { "<leader>tq", telescope.quickfix, desc = "quickfix" },
    { "<leader>tl", telescope.loclist, desc = "loclist" },
    { "<leader>tf", telescope.find_files, desc = "find files" },
    { "<leader>tg", telescope.live_grep, desc = "live grep" },
    { "<leader>tb", telescope.buffers, desc = "buffers" },
    { "<leader>th", telescope.help_tags, desc = "help tags" },
    { "<leader>ts", telescope.lsp_document_symbols, desc = "document symbols" },
    { "<leader>td", telescope.lsp_definitions, desc = "definitions" },
    { "<leader>ti", telescope.lsp_implementations, desc = "implementations" },
    { "<leader>tt", telescope.lsp_type_definitions, desc = "type definitions" },
    { "<leader>tr", telescope.lsp_references, desc = "references" },
    { "<leader>tc", telescope.commands, desc = "commands" },
    { "<leader>tw", telescope.lsp_workspace_symbols, desc = "workspace symbols" },
    { "<leader>to", telescope.lsp_document_diagnostics, desc = "document diagnostics" },
    { "<leader>ta", telescope.lsp_workspace_diagnostics, desc = "workspace diagnostics" },
    { "<leader>ty", telescope.lsp_dynamic_workspace_symbols, desc = "dynamic workspace symbols" },
    { "<leader>te", telescope.lsp_workspace_code_actions, desc = "workspace code actions" },
  },

  { "<leader>l", desc = "lazy"},
  {
    mode = { "n", "v"},
    { "<leader>ll", "<cmd>Lazy<cr>", desc = "lazy home"},
    { "<leader>le", "<cmd>LazyExtras<cr>", desc = "lazy extra home"},
  }
})

wk.add({
  { '<leader>tx', '<cmd>lua Toggle_search_hidden()<CR>', desc = "Toggle exclude hidden" }
})

