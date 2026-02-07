local M = {}

function M.get(palette, opts)
  local config = opts or {}
  local bg = config.transparent and "NONE" or palette.bg
  local bg_alt = config.transparent and "NONE" or palette.base2
  local bg_alt2 = config.transparent and "NONE" or palette.base1
  local bg_alt3 = config.transparent and "NONE" or palette.base3

  return {
    Normal = { fg = palette.fg, bg = bg },
    NormalNC = { fg = palette.fg, bg = bg },
    Comment = { fg = palette.base6, italic = true },
    Constant = { fg = palette.violet },
    String = { fg = palette.green },
    Character = { fg = palette.green },
    Number = { fg = palette.orange },
    Boolean = { fg = palette.orange },
    Float = { fg = palette.orange },
    Identifier = { fg = palette.cyan },
    Function = { fg = palette.blue },
    Statement = { fg = palette.magenta },
    Conditional = { fg = palette.magenta },
    Repeat = { fg = palette.magenta },
    Label = { fg = palette.violet },
    Operator = { fg = palette.magenta },
    Keyword = { fg = palette.magenta },
    Exception = { fg = palette.magenta },
    PreProc = { fg = palette.violet },
    Include = { fg = palette.violet },
    Define = { fg = palette.violet },
    Macro = { fg = palette.violet },
    PreCondit = { fg = palette.violet },
    Type = { fg = palette.yellow },
    StorageClass = { fg = palette.yellow },
    Structure = { fg = palette.yellow },
    Typedef = { fg = palette.yellow },
    Special = { fg = palette.blue },
    SpecialChar = { fg = palette.orange },
    Tag = { fg = palette.blue },
    Delimiter = { fg = palette.base7 },
    SpecialComment = { fg = palette.base6 },
    Debug = { fg = palette.red },
    Underlined = { fg = palette.blue, underline = true },
    Ignore = { fg = palette.base5 },
    Error = { fg = palette.red, bold = true },
    Todo = { fg = palette.magenta, bold = true },

    CursorLine = { bg = bg_alt },
    CursorLineNr = { fg = palette.fg },
    LineNr = { fg = palette.base5 },
    Visual = { bg = bg_alt3 },
    Search = { fg = palette.base0, bg = palette.yellow },
    IncSearch = { fg = palette.base0, bg = palette.orange },
    MatchParen = { fg = palette.cyan, bold = true },
    ColorColumn = { bg = bg_alt },
    VertSplit = { fg = palette.base4 },
    StatusLine = { fg = palette.fg, bg = bg_alt },
    StatusLineNC = { fg = palette.base6, bg = bg_alt2 },
    TabLine = { fg = palette.base6, bg = bg_alt },
    TabLineSel = { fg = palette.fg, bg = bg_alt2 },
    TabLineFill = { fg = palette.base6, bg = bg_alt2 },

    Pmenu = { fg = palette.fg, bg = bg_alt },
    PmenuSel = { fg = palette.base0, bg = palette.blue },
    PmenuSbar = { bg = bg_alt3 },
    PmenuThumb = { bg = palette.base5 },

    DiagnosticError = { fg = palette.red },
    DiagnosticWarn = { fg = palette.yellow },
    DiagnosticInfo = { fg = palette.blue },
    DiagnosticHint = { fg = palette.cyan },

    ["@comment"] = { link = "Comment" },
    ["@constant"] = { link = "Constant" },
    ["@string"] = { link = "String" },
    ["@number"] = { link = "Number" },
    ["@boolean"] = { link = "Boolean" },
    ["@function"] = { link = "Function" },
    ["@keyword"] = { link = "Keyword" },
    ["@type"] = { link = "Type" },
  }
end

return M
