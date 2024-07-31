-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")

local telescope = require('telescope.builtin')


wk.add({
  { "<leader>fs", telescope.lsp_document_symbols, desc = "Document Symbols" }
})


wk.add({
  { "<leader>t", desc = "telescope" },

  {
    mode = { "n", "v" },
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
  }

})
