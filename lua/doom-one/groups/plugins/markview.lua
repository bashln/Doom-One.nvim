local M = {}

function M.get(palette, config)
  local blend = require("doom-one.palette").blend
  local bg = config.transparent and "NONE" or palette.bg

  return {
    MarkviewHeading1 = { fg = palette.red, bg = blend(palette.red, bg, 0.1), bold = true },
    MarkviewHeading2 = { fg = palette.orange, bg = blend(palette.orange, bg, 0.1), bold = true },
    MarkviewHeading3 = { fg = palette.yellow, bg = blend(palette.yellow, bg, 0.1), bold = true },
    MarkviewHeading4 = { fg = palette.green, bg = blend(palette.green, bg, 0.1), bold = true },
    MarkviewHeading5 = { fg = palette.blue, bg = blend(palette.blue, bg, 0.1), bold = true },
    MarkviewHeading6 = { fg = palette.magenta, bg = blend(palette.magenta, bg, 0.1), bold = true },
  }
end

return M
