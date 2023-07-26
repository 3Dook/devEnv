-- https://github.com/Alexis12119/nvim-config/blob/main/lua/core/autocommands.lua
-- Has some useful patterns to customize certain file to do certain things.

local fn = vim.fn

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove({ "c", "r", "o" })
  end,
  group = general,
  desc = "Disable New Line Comment",
})
