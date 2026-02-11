local M = {}

function M.get(palette, config)
  local bg = config.transparent and "NONE" or palette.bg
  local bg_alt = config.transparent and "NONE" or palette.base2

  return {
    BufferLineIndicatorSelected = { fg = palette.blue },
    BufferLineFill = { bg = palette.base1 },
    BufferLineBackground = { bg = palette.base1, fg = palette.base5 },
    BufferLineBufferSelected = { bg = bg, fg = palette.fg, bold = true },
    BufferLineBufferVisible = { bg = palette.base1, fg = palette.base5 },
    BufferLineSeparator = { fg = palette.base1, bg = palette.base1 },
    BufferLineSeparatorSelected = { fg = palette.base1, bg = bg },
    BufferLineSeparatorVisible = { fg = palette.base1, bg = palette.base1 },
    BufferLineModified = { fg = palette.red, bg = palette.base1 },
    BufferLineModifiedSelected = { fg = palette.red, bg = bg },
    BufferLineModifiedVisible = { fg = palette.red, bg = palette.base1 },
  }
end

return M
