local M = {}

function M.get(palette, config)
  return {
    GitsignsAdd = { fg = palette.green },
    GitsignsChange = { fg = palette.yellow },
    GitsignsDelete = { fg = palette.red },
    GitsignsCurrentLineBlame = { fg = palette.base5 },
  }
end

return M
