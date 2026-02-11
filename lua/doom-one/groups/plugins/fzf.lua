local M = {}

function M.get(palette, config)
  local bg_alt = config.transparent and "NONE" or palette.base2
  local bg_alt3 = config.transparent and "NONE" or palette.base3

  return {
    FzfLuaNormal = { fg = palette.fg, bg = bg_alt },
    FzfLuaBorder = { fg = palette.base4, bg = bg_alt },
    FzfLuaTitle = { fg = palette.magenta, bold = true },
    FzfLuaHeader = { fg = palette.violet },
    FzfLuaPath = { fg = palette.blue },
    FzfLuaCursorLine = { fg = palette.fg, bg = bg_alt3 },
    FzfLuaCursorLineNr = { fg = palette.cyan },
    FzfLuaSearch = { fg = palette.orange },
    FzfLuaPrompt = { fg = palette.green },
    FzfNormal = { fg = palette.fg, bg = bg_alt },
    FzfBorder = { fg = palette.base4, bg = bg_alt },
  }
end

return M
