local M = {}

function M.get(palette, config)
  return {
    WhichKey = { fg = palette.blue },
    WhichKeyGroup = { fg = palette.magenta },
    WhichKeyDesc = { fg = palette.fg },
    WhichKeySeparator = { fg = palette.base5 },
    WhichKeyFloat = { bg = config.transparent and "NONE" or palette.base2 },
    WhichKeyValue = { fg = palette.base5 },
  }
end

return M
