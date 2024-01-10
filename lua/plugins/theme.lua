-- return {
--   "overcache/NeoSolarized",
--   config = function()
--     vim.g.neosolarized_contrast = "high"
--     vim.g.neosolarized_italic = 1
--     vim.g.neosolarized_termBoldAsBright = 1
--
--     vim.cmd.colorscheme("NeoSolarized")
--   end,
-- }

-- return {
--   "shaunsingh/solarized.nvim",
--   config = function()
--     vim.g.solarized_italic_comments = true
--     vim.g.solarized_italic_keywords = true
--     vim.g.solarized_italic_functions = true
--     vim.g.solarized_italic_variables = true
--
--     require("solarized").set()
--   end,
-- }

return {
  "gmr458/vscode_modern_theme.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("vscode_modern").setup({
      cursorline = true,
      transparent_background = true,
      nvim_tree_darker = true,
      italic_keyword = true,
    })
    vim.cmd.colorscheme("vscode_modern")
  end,
}
