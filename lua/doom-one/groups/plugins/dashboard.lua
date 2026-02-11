local M = {}

function M.get(palette, config)
  return {
    DashboardHeader = { fg = palette.magenta },
    DashboardFooter = { fg = palette.green, italic = true },
    DashboardDesc = { fg = palette.blue },
    DashboardKey = { fg = palette.orange },
    DashboardIcon = { fg = palette.blue },
    DashboardShotCut = { fg = palette.red },
  }
end

return M
