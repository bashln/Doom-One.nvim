local M = {}

--- Configure the theme. Must be called before `colorscheme doom-one`.
--- @param opts? table
function M.setup(opts)
  require("doom-one.config").setup(opts)
end

--- Load the colorscheme and apply all highlight groups.
function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "doom-one"
  vim.o.background = "dark"

  local config = require("doom-one.config")
  if vim.tbl_isempty(config.options) then
    config.setup()
  end
  local opts = config.options

  local palette = require("doom-one.palette")
  local p = palette(opts)

  local highlights = require("doom-one.highlights")
  local hl = highlights.get(p, opts)

  for group, settings in pairs(hl) do
    vim.api.nvim_set_hl(0, group, settings)
  end

  if opts.terminal_colors then
    M.set_terminal_colors(p)
  end
end

--- Set Neovim terminal colors from the palette.
--- @param p table Color palette
function M.set_terminal_colors(p)
  -- black
  vim.g.terminal_color_0  = p.base1
  vim.g.terminal_color_8  = p.base4
  -- red
  vim.g.terminal_color_1  = p.red
  vim.g.terminal_color_9  = p.red
  -- green
  vim.g.terminal_color_2  = p.green
  vim.g.terminal_color_10 = p.green
  -- yellow
  vim.g.terminal_color_3  = p.yellow
  vim.g.terminal_color_11 = p.yellow
  -- blue
  vim.g.terminal_color_4  = p.blue
  vim.g.terminal_color_12 = p.blue
  -- magenta
  vim.g.terminal_color_5  = p.magenta
  vim.g.terminal_color_13 = p.magenta
  -- cyan
  vim.g.terminal_color_6  = p.cyan
  vim.g.terminal_color_14 = p.cyan
  -- white
  vim.g.terminal_color_7  = p.base7
  vim.g.terminal_color_15 = p.base8
end

return M
