local M = {}

function M.get(palette, config)
  return {
    NeoTreeNormal = { fg = palette.fg, bg = config.transparent and "NONE" or palette.bg_alt },
    NeoTreeNormalNC = { fg = palette.fg, bg = config.transparent and "NONE" or palette.bg_alt },
    NeoTreeDirectoryName = { fg = palette.blue },
    NeoTreeDirectoryIcon = { fg = palette.blue },
    NeoTreeRootName = { fg = palette.magenta, bold = true },
    NeoTreeFileName = { fg = palette.fg },
    NeoTreeSymbolicLinkTarget = { fg = palette.cyan },
    NeoTreeGitAdded = { fg = palette.green },
    NeoTreeGitConflict = { fg = palette.red },
    NeoTreeGitDeleted = { fg = palette.red },
    NeoTreeGitIgnored = { fg = palette.base5 },
    NeoTreeGitModified = { fg = palette.yellow },
    NeoTreeGitUnstaged = { fg = palette.yellow },
    NeoTreeGitUntracked = { fg = palette.green },
    NeoTreeGitStaged = { fg = palette.green },
    NeoTreeIndentMarker = { fg = palette.base4 },
    NeoTreeExpander = { fg = palette.base5 },
  }
end

return M
