local M = {}

function M.get(palette, config)
  local blend = require("doom-one.palette").blend
  local bg = config.transparent and "NONE" or palette.bg
  local bg_alt = config.transparent and "NONE" or palette.base2
  local bg_alt2 = config.transparent and "NONE" or palette.base1
  local bg_alt3 = config.transparent and "NONE" or palette.base3

  return {
    Normal = { fg = palette.fg, bg = bg },
    NormalNC = { fg = palette.fg, bg = bg },
    CursorLine = { bg = bg_alt },
    CursorLineNr = { fg = palette.fg },
    LineNr = { fg = palette.base4 },
    Visual = { bg = palette.dark_blue },
    Search = { fg = palette.base0, bg = palette.yellow },
    IncSearch = { fg = palette.base0, bg = palette.orange },
    MatchParen = { fg = palette.cyan, bold = true },
    ColorColumn = { bg = bg_alt },
    VertSplit = { fg = palette.base0 },
    StatusLine = { fg = palette.fg, bg = bg_alt },
    StatusLineNC = { fg = palette.base6, bg = bg_alt2 },
    TabLine = { fg = palette.base6, bg = bg_alt },
    TabLineSel = { fg = palette.fg, bg = bg_alt2 },
    TabLineFill = { fg = palette.base6, bg = bg_alt2 },
    Pmenu = { fg = palette.fg, bg = bg_alt },
    PmenuSel = { fg = palette.base0, bg = palette.blue },
    PmenuSbar = { bg = bg_alt3 },
    PmenuThumb = { bg = palette.base5 },
    NormalFloat = { fg = palette.fg, bg = bg_alt },
    FloatBorder = { fg = palette.base4, bg = bg_alt },
    FloatTitle = { fg = palette.fg, bg = bg_alt },
    WinSeparator = { fg = palette.base0 },
    Folded = { fg = palette.blue, bg = blend(palette.blue, bg, 0.1) },
    Directory = { fg = palette.blue },
    Title = { fg = palette.magenta, bold = true },
    ErrorMsg = { fg = palette.red, bold = true },
    WarningMsg = { fg = palette.yellow, bold = true },
    MoreMsg = { fg = palette.blue, bold = true },
    Question = { fg = palette.blue, bold = true },
    NonText = { fg = palette.base4 },
    SpecialKey = { fg = palette.base4 },
    SignColumn = { bg = bg },
    EndOfBuffer = { fg = bg },
  }
end

return M
