local M = {}

M.config = require("doom-one.config")

function M.setup(opts)
  M.config.setup(opts)
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "doom-one"

  local config = M.config.options
  local background = config.background or vim.o.background
  local base_palette = require("doom-one.palette").get_palette(background)
  local palette = vim.tbl_deep_extend("force", base_palette, config.colors or {})
  local highlights = require("doom-one.groups").get(palette, config)

  local custom_highlights = config.highlights
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
