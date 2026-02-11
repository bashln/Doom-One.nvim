local M = {}

function M.get(palette, config)
  return {
    TroubleNormal = { fg = palette.fg, bg = config.transparent and "NONE" or palette.bg },
    TroubleText = { fg = palette.fg },
    TroubleCount = { fg = palette.magenta },
    TroubleLocation = { fg = palette.base5 },
  }
end

return M
