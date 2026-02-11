local M = {}

function M.get(palette, config)
  return {
    IblIndent = { fg = palette.base3 },
    IblScope = { fg = palette.base5 },
    -- Legacy indent-blankline
    IndentBlanklineChar = { fg = palette.base3 },
    IndentBlanklineSpaceChar = { fg = palette.base3 },
    IndentBlanklineSpaceCharBlankline = { fg = palette.base3 },
    IndentBlanklineContextChar = { fg = palette.base5 },
  }
end

return M
