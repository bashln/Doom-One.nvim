local config = require("doom-one.config")
if vim.tbl_isempty(config.options) then
  config.setup()
end
local p = require("doom-one.palette")(config.options)

return {
  normal = {
    a = { fg = p.bg, bg = p.blue, gui = "bold" },
    b = { fg = p.fg, bg = p.base3 },
    c = { fg = p.fg_alt, bg = p.bg_alt },
  },
  insert = {
    a = { fg = p.bg, bg = p.green, gui = "bold" },
  },
  visual = {
    a = { fg = p.bg, bg = p.magenta, gui = "bold" },
  },
  replace = {
    a = { fg = p.bg, bg = p.red, gui = "bold" },
  },
  command = {
    a = { fg = p.bg, bg = p.orange, gui = "bold" },
  },
  terminal = {
    a = { fg = p.bg, bg = p.teal, gui = "bold" },
  },
  inactive = {
    a = { fg = p.fg_alt, bg = p.bg_alt },
    b = { fg = p.fg_alt, bg = p.bg_alt },
    c = { fg = p.fg_alt, bg = p.bg_alt },
  },
}
