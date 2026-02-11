local M = {}

function M.get(palette, config)
  return {
    FlashMatch = { fg = palette.base0, bg = palette.yellow },
    FlashCurrent = { fg = palette.base0, bg = palette.orange },
    FlashLabel = { fg = palette.base0, bg = palette.magenta, bold = true },
    FlashProgress = { fg = palette.cyan },
  }
end

return M
