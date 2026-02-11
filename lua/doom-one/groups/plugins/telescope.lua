local M = {}

function M.get(palette, config)
  local bg_alt = config.transparent and "NONE" or palette.base2
  local bg_alt3 = config.transparent and "NONE" or palette.base3

  return {
    TelescopeNormal = { fg = palette.fg, bg = bg_alt },
    TelescopeBorder = { fg = palette.base4, bg = bg_alt },
    TelescopePromptNormal = { fg = palette.fg, bg = bg_alt },
    TelescopePromptBorder = { fg = palette.base4, bg = bg_alt },
    TelescopeResultsNormal = { fg = palette.fg, bg = bg_alt },
    TelescopeResultsBorder = { fg = palette.base4, bg = bg_alt },
    TelescopePreviewNormal = { fg = palette.fg, bg = bg_alt },
    TelescopePreviewBorder = { fg = palette.base4, bg = bg_alt },
    TelescopeTitle = { fg = palette.magenta, bold = true },
    TelescopePromptTitle = { fg = palette.blue, bold = true },
    TelescopeResultsTitle = { fg = palette.green, bold = true },
    TelescopePreviewTitle = { fg = palette.yellow, bold = true },
    TelescopeMatching = { fg = palette.orange, bold = true },
    TelescopeSelection = { fg = palette.fg, bg = bg_alt3 },
    TelescopeSelectionCaret = { fg = palette.cyan, bold = true },
  }
end

return M
