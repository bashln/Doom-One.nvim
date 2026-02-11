local M = {}

function M.get(palette, config)
  return {
    TodoFgFIX = { fg = palette.red },
    TodoBgFIX = { fg = palette.base0, bg = palette.red, bold = true },
    TodoFgTODO = { fg = palette.blue },
    TodoBgTODO = { fg = palette.base0, bg = palette.blue, bold = true },
    TodoFgHACK = { fg = palette.orange },
    TodoBgHACK = { fg = palette.base0, bg = palette.orange, bold = true },
    TodoFgWARN = { fg = palette.yellow },
    TodoBgWARN = { fg = palette.base0, bg = palette.yellow, bold = true },
    TodoFgPERF = { fg = palette.magenta },
    TodoBgPERF = { fg = palette.base0, bg = palette.magenta, bold = true },
    TodoFgNOTE = { fg = palette.green },
    TodoBgNOTE = { fg = palette.base0, bg = palette.green, bold = true },
    TodoFgTEST = { fg = palette.violet },
    TodoBgTEST = { fg = palette.base0, bg = palette.violet, bold = true },
  }
end

return M
