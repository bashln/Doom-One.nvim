local M = {}

function M.get(palette, config)
  return {
    NoiceCmdlinePopupBorder = { fg = palette.blue },
    NoiceCmdlinePopupBorderSearch = { fg = palette.orange },
    NoiceCmdlineIcon = { fg = palette.blue },
    NoiceCmdlineIconSearch = { fg = palette.orange },
    NoiceConfirmBorder = { fg = palette.blue },
    NoiceVirtualText = { fg = palette.base5 },
  }
end

return M
