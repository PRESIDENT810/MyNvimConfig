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

local function save_colorscheme()
  -- 获取当前颜色方案
  local colorscheme = vim.g.colors_name
  if colorscheme then
    -- 定义文件路径
    local filepath = vim.fn.stdpath('config') .. '/lua/config/colorscheme.lua'
    -- 生成保存命令字符串
    local save_cmd = 'vim.cmd([[colorscheme ' .. colorscheme .. ']])'
    -- 写入到文件
    vim.fn.writefile({save_cmd}, filepath)
  end
end

vim.api.nvim_create_autocmd("VimLeavePre", {
    callback = save_colorscheme
})
