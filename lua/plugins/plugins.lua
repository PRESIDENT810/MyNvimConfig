return {
  -- https://github.com/akinsho/git-conflict.nvim
  {
    'akinsho/git-conflict.nvim',
    version = "*",
    config = true
  },

  -- https://github.com/williamboman/mason.nvim
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "clang-format",
        "clangd",
        "cmake-language-server",
        "cmakelang",
        "cmakelint",
        "cpplint",
        "cpptools",
        "eslint_d",
        "flake8",
        "jq",
        "lua-language-server",
        "prettier",
        "typescript-language-server",
      },
    },
  },

  -- https://github.com/simrat39/symbols-outline.nvim
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    opts = {
      -- add your options that should be passed to the setup() function here
      position = "right",
    },
  },

}
