local M = {}

function M.get(palette, config)
  local bg_alt = config.transparent and "NONE" or palette.base2

  return {
    CmpItemAbbr = { fg = palette.fg },
    CmpItemAbbrDeprecated = { fg = palette.base5, strikethrough = true },
    CmpItemAbbrMatch = { fg = palette.blue, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = palette.blue, bold = true },
    CmpItemKind = { fg = palette.magenta },
    CmpItemMenu = { fg = palette.base5, italic = true },

    CmpItemKindField = { fg = palette.red },
    CmpItemKindProperty = { fg = palette.red },
    CmpItemKindEvent = { fg = palette.red },

    CmpItemKindText = { fg = palette.green },
    CmpItemKindEnum = { fg = palette.green },
    CmpItemKindKeyword = { fg = palette.green },

    CmpItemKindConstant = { fg = palette.yellow },
    CmpItemKindConstructor = { fg = palette.yellow },
    CmpItemKindReference = { fg = palette.yellow },

    CmpItemKindFunction = { fg = palette.magenta },
    CmpItemKindStruct = { fg = palette.magenta },
    CmpItemKindClass = { fg = palette.magenta },
    CmpItemKindModule = { fg = palette.magenta },
    CmpItemKindOperator = { fg = palette.magenta },

    CmpItemKindVariable = { fg = palette.base7 },
    CmpItemKindFile = { fg = palette.base7 },

    CmpItemKindUnit = { fg = palette.orange },
    CmpItemKindSnippet = { fg = palette.orange },
    CmpItemKindFolder = { fg = palette.orange },

    CmpItemKindValue = { fg = palette.blue },
    CmpItemKindEnumMember = { fg = palette.blue },
    CmpItemKindInterface = { fg = palette.blue },
    CmpItemKindColor = { fg = palette.blue },
    CmpItemKindTypeParameter = { fg = palette.blue },
  }
end

return M
