local M = {}

M.config = {
  transparent = false,
  colors = {},
  highlights = {},
}

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "doom-one"

  local base_palette = require("doom-one.palette").colors
  local palette = vim.tbl_deep_extend("force", base_palette, M.config.colors or {})
  local highlights = require("doom-one.highlights").get(palette, M.config)

  local custom_highlights = M.config.highlights
  if type(custom_highlights) == "function" then
    custom_highlights = custom_highlights(palette)
  end
  if type(custom_highlights) == "table" then
    highlights = vim.tbl_deep_extend("force", highlights, custom_highlights)
  end

  for group, spec in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, spec)
  end
end

return M
