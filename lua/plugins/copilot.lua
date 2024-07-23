return {
  -- add GitHub Copilot
  {
    "github/copilot.vim",
    cmd = "Copilot",
    keys = { { "<leader>cp", "<cmd>Copilot<cr>", desc = "GitHub Copilot" } },
    opts = {
      -- add your options that should be passed to the setup() function here
      position = "right",
    },
  },
}

