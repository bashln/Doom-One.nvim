local M = {}

function M.get(palette, config)
  return {
    NotifyBackground = { bg = palette.bg },
    NotifyERRORBorder = { fg = palette.red },
    NotifyWARNBorder = { fg = palette.yellow },
    NotifyINFOBorder = { fg = palette.blue },
    NotifyDEBUGBorder = { fg = palette.grey },
    NotifyTRACEBorder = { fg = palette.magenta },
    NotifyERRORIcon = { fg = palette.red },
    NotifyWARNIcon = { fg = palette.yellow },
    NotifyINFOIcon = { fg = palette.blue },
    NotifyDEBUGIcon = { fg = palette.grey },
    NotifyTRACEIcon = { fg = palette.magenta },
    NotifyERRORTitle = { fg = palette.red },
    NotifyWARNTitle = { fg = palette.yellow },
    NotifyINFOTitle = { fg = palette.blue },
    NotifyDEBUGTitle = { fg = palette.grey },
    NotifyTRACETitle = { fg = palette.magenta },
    NotifyERRORBody = { fg = palette.fg },
    NotifyWARNBody = { fg = palette.fg },
    NotifyINFOBody = { fg = palette.fg },
    NotifyDEBUGBody = { fg = palette.fg },
    NotifyTRACEBody = { fg = palette.fg },
  }
end

return M
