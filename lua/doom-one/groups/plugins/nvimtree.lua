local M = {}

function M.get(palette, config)
  return {
    NvimTreeNormal = { fg = palette.fg, bg = config.transparent and "NONE" or palette.bg },
    NvimTreeRootFolder = { fg = palette.blue, bold = true },
    NvimTreeGitDirty = { fg = palette.yellow },
    NvimTreeGitNew = { fg = palette.green },
    NvimTreeGitDeleted = { fg = palette.red },
    NvimTreeSpecialFile = { fg = palette.magenta, underline = true },
    NvimTreeIndentMarker = { fg = palette.base4 },
    NvimTreeImageFile = { fg = palette.violet },
    NvimTreeSymlink = { fg = palette.cyan },
    NvimTreeFolderIcon = { fg = palette.blue },
    NvimTreeOpenedFolderName = { fg = palette.blue, italic = true },
  }
end

return M
