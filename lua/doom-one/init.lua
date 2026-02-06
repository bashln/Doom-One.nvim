local M = {}

M.config = {
  transparent = false,
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

  local palette = require("doom-one.palette").colors
  local highlights = require("doom-one.highlights").get(palette, M.config)

  for group, spec in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, spec)
  end
end

return M
