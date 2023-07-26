-- set colorscheme to [????] with protected call
-- in case it isn't installed
local status, _ = pcall(vim.cmd, "colorscheme everforest")

if not status then
  print("Colorscheme not found!") -- print error if colorscheme not installed
  return
end

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- require("everforest").setup({
--  disable_background = true,
-- })
--
-- function ColorMyPencils(color)
--   color = color or "everforest"
--   vim.cmd.colorscheme(color)
--
--   vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--   vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- end
--
-- ColorMyPencils()
