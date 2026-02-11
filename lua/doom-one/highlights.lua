local M = {}

function M.get(palette, opts)
  local config = opts or {}
  local palette_mod = require("doom-one.palette")
  local blend = palette_mod.blend

  local bg = config.transparent and "NONE" or palette.bg
  local bg_alt = config.transparent and "NONE" or palette.base2
  local bg_alt2 = config.transparent and "NONE" or palette.base1
  local bg_alt3 = config.transparent and "NONE" or palette.base3

  return {
    Normal = { fg = palette.fg, bg = bg },
    NormalNC = { fg = palette.fg, bg = bg },
    Comment = { fg = palette.base5 },
    Constant = { fg = palette.violet },
    String = { fg = palette.green },
    Character = { fg = palette.green },
    Number = { fg = palette.orange },
    Boolean = { fg = palette.orange },
    Float = { fg = palette.orange },
    Identifier = { fg = palette.fg },
    Function = { fg = palette.magenta },
    Statement = { fg = palette.blue },
    Conditional = { fg = palette.blue },
    Repeat = { fg = palette.blue },
    Label = { fg = palette.violet },
    Operator = { fg = palette.blue },
    Keyword = { fg = palette.blue },
    Exception = { fg = palette.blue },
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
    Tag = { fg = palette.red },
    Delimiter = { fg = palette.base7 },
    SpecialComment = { fg = palette.base5 },
    Debug = { fg = palette.red },
    Underlined = { fg = palette.blue, underline = true },
    Ignore = { fg = palette.base5 },
    Error = { fg = palette.red, bold = true },
    Todo = { fg = palette.magenta, bold = true },

    Folded = { fg = palette.blue, bg = blend(palette.blue, bg, 0.1) },
    CursorLine = { bg = bg_alt },
    CursorLineNr = { fg = palette.fg },
    LineNr = { fg = palette.base4 },
    Visual = { bg = palette.dark_blue },
    Search = { fg = palette.base0, bg = palette.yellow },
    IncSearch = { fg = palette.base0, bg = palette.orange },
    MatchParen = { fg = palette.cyan, bold = true },
    ColorColumn = { bg = bg_alt },
    VertSplit = { fg = palette.base0 },
    StatusLine = { fg = palette.fg, bg = bg_alt },
    StatusLineNC = { fg = palette.base6, bg = bg_alt2 },
    TabLine = { fg = palette.base6, bg = bg_alt },
    TabLineSel = { fg = palette.fg, bg = bg_alt2 },
    TabLineFill = { fg = palette.base6, bg = bg_alt2 },

    Pmenu = { fg = palette.fg, bg = bg_alt },
    PmenuSel = { fg = palette.base0, bg = palette.blue },
    PmenuSbar = { bg = bg_alt3 },
    PmenuThumb = { bg = palette.base5 },

    NormalFloat = { fg = palette.fg, bg = bg_alt },
    FloatBorder = { fg = palette.base4, bg = bg_alt },
    FloatTitle = { fg = palette.fg, bg = bg_alt },
    WinSeparator = { fg = palette.base0 },

    DiagnosticError = { fg = palette.red },
    DiagnosticWarn = { fg = palette.yellow },
    DiagnosticInfo = { fg = palette.blue },
    DiagnosticHint = { fg = palette.cyan },
    DiagnosticOk = { fg = palette.green },
    DiagnosticUnderlineError = { sp = palette.red, undercurl = true },
    DiagnosticUnderlineWarn = { sp = palette.yellow, undercurl = true },
    DiagnosticUnderlineInfo = { sp = palette.blue, undercurl = true },
    DiagnosticUnderlineHint = { sp = palette.cyan, undercurl = true },
    DiagnosticUnderlineOk = { sp = palette.green, undercurl = true },

    -- LSP Reference highlights
    LspReferenceRead = { bg = palette.base3 },
    LspReferenceText = { bg = palette.base3 },
    LspReferenceWrite = { bg = palette.base3 },
    LspCodeLens = { fg = palette.base5 },
    LspCodeLensSeparator = { fg = palette.base5 },

    -- Diff highlights
    DiffAdd = { fg = palette.green },
    DiffChange = { fg = palette.yellow },
    DiffDelete = { fg = palette.red },
    DiffText = { fg = palette.orange },
    Added = { fg = palette.green },
    Changed = { fg = palette.yellow },
    Removed = { fg = palette.red },

    -- TreeSitter: Identifiers & Variables
    ["@variable"] = { fg = palette.orange },
    ["@variable.builtin"] = { fg = palette.magenta },
    ["@variable.parameter"] = { fg = palette.orange },
    ["@variable.parameter.builtin"] = { fg = palette.orange },
    ["@variable.member"] = { fg = palette.fg },
    ["@property"] = { fg = palette.fg },

    -- TreeSitter: Constants
    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { fg = palette.orange },
    ["@constant.macro"] = { fg = palette.violet },

    -- TreeSitter: Modules & Labels
    ["@module"] = { fg = palette.yellow },
    ["@module.builtin"] = { fg = palette.yellow },
    ["@label"] = { link = "Label" },

    -- TreeSitter: Strings & Literals
    ["@string"] = { link = "String" },
    ["@string.documentation"] = { fg = palette.green },
    ["@string.regexp"] = { fg = palette.green },
    ["@string.escape"] = { fg = palette.orange },
    ["@string.special"] = { fg = palette.orange },
    ["@string.special.symbol"] = { fg = palette.orange },
    ["@string.special.url"] = { fg = palette.dark_cyan, underline = true },
    ["@string.special.path"] = { fg = palette.green },
    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },
    ["@number"] = { link = "Number" },
    ["@number.float"] = { fg = palette.orange },
    ["@boolean"] = { link = "Boolean" },

    -- TreeSitter: Types
    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { fg = palette.yellow },
    ["@type.definition"] = { fg = palette.yellow },
    ["@attribute"] = { fg = palette.yellow },
    ["@attribute.builtin"] = { fg = palette.yellow },

    -- TreeSitter: Functions
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { fg = palette.magenta },
    ["@function.call"] = { fg = palette.magenta },
    ["@function.macro"] = { fg = palette.violet },
    ["@function.method"] = { fg = palette.magenta },
    ["@function.method.call"] = { fg = palette.magenta },
    ["@constructor"] = { fg = palette.blue },
    ["@operator"] = { link = "Operator" },

    -- TreeSitter: Keywords
    ["@keyword"] = { link = "Keyword" },
    ["@keyword.coroutine"] = { fg = palette.blue },
    ["@keyword.function"] = { fg = palette.blue },
    ["@keyword.operator"] = { fg = palette.blue },
    ["@keyword.import"] = { link = "Include" },
    ["@keyword.type"] = { fg = palette.yellow },
    ["@keyword.modifier"] = { fg = palette.yellow },
    ["@keyword.repeat"] = { link = "Repeat" },
    ["@keyword.return"] = { fg = palette.blue },
    ["@keyword.debug"] = { link = "Debug" },
    ["@keyword.exception"] = { link = "Exception" },
    ["@keyword.conditional"] = { link = "Conditional" },
    ["@keyword.conditional.ternary"] = { fg = palette.blue },
    ["@keyword.directive"] = { fg = palette.blue },
    ["@keyword.directive.define"] = { fg = palette.blue },

    -- TreeSitter: Punctuation
    ["@punctuation.bracket"] = { fg = palette.base7 },
    ["@punctuation.delimiter"] = { fg = palette.base7 },
    ["@punctuation.special"] = { fg = palette.blue },

    -- TreeSitter: Comments
    ["@comment"] = { link = "Comment" },
    ["@comment.documentation"] = { link = "Comment" },
    ["@comment.error"] = { link = "DiagnosticError" },
    ["@comment.warning"] = { link = "DiagnosticWarn" },
    ["@comment.hint"] = { link = "DiagnosticHint" },
    ["@comment.info"] = { link = "DiagnosticInfo" },
    ["@comment.todo"] = { fg = palette.yellow },

    -- TreeSitter: Tags (HTML/JSX)
    ["@tag"] = { fg = palette.red },
    ["@tag.attribute"] = { fg = palette.orange },
    ["@tag.delimiter"] = { fg = palette.base7 },
    ["@tag.builtin"] = { fg = palette.red },

    -- TreeSitter: Diff
    ["@diff.plus"] = { fg = palette.green },
    ["@diff.minus"] = { fg = palette.red },
    ["@diff.delta"] = { fg = palette.yellow },

    -- Semantic type captures
    ["@annotation"] = { fg = palette.yellow },
    ["@class"] = { fg = palette.yellow },
    ["@decorator"] = { fg = palette.orange },
    ["@enum"] = { fg = palette.cyan },
    ["@enumMember"] = { fg = palette.orange },
    ["@event"] = { fg = palette.orange },
    ["@interface"] = { fg = palette.yellow },
    ["@struct"] = { fg = palette.yellow },
    ["@typeParameter"] = { fg = palette.yellow },
    ["@regexp"] = { fg = palette.cyan },

    -- TreeSitter: Markup (Markdown, RST, etc.)
    ["@markup.heading"] = { fg = palette.blue, bold = true },
    ["@markup.heading.1"] = { fg = palette.red, bg = blend(palette.red, bg, 0.1), bold = true },
    ["@markup.heading.2"] = { fg = palette.orange, bg = blend(palette.orange, bg, 0.1), bold = true },
    ["@markup.heading.3"] = { fg = palette.yellow, bg = blend(palette.yellow, bg, 0.1), bold = true },
    ["@markup.heading.4"] = { fg = palette.green, bg = blend(palette.green, bg, 0.1), bold = true },
    ["@markup.heading.5"] = { fg = palette.blue, bg = blend(palette.blue, bg, 0.1), bold = true },
    ["@markup.heading.6"] = { fg = palette.magenta, bg = blend(palette.magenta, bg, 0.1), bold = true },
    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },
    ["@markup.link"] = { fg = palette.cyan },
    ["@markup.link.label"] = { fg = palette.blue, underline = true },
    ["@markup.link.url"] = { fg = palette.dark_cyan, underline = true },
    ["@markup.raw"] = { fg = palette.teal },
    ["@markup.raw.block"] = { fg = palette.teal },
    ["@markup.list"] = { fg = palette.blue },
    ["@markup.list.checked"] = { fg = palette.green },
    ["@markup.list.unchecked"] = { fg = palette.base5 },
    ["@markup.quote"] = { fg = palette.base6, italic = true },
    ["@markup.math"] = { fg = palette.violet },

    -- Legacy Vim: Markdown syntax groups
    markdownH1 = { fg = palette.red, bg = blend(palette.red, bg, 0.1), bold = true },
    markdownH2 = { fg = palette.orange, bg = blend(palette.orange, bg, 0.1), bold = true },
    markdownH3 = { fg = palette.yellow, bg = blend(palette.yellow, bg, 0.1), bold = true },
    markdownH4 = { fg = palette.green, bg = blend(palette.green, bg, 0.1), bold = true },
    markdownH5 = { fg = palette.blue, bg = blend(palette.blue, bg, 0.1), bold = true },
    markdownH6 = { fg = palette.magenta, bg = blend(palette.magenta, bg, 0.1), bold = true },
    markdownHeadingDelimiter = { fg = palette.base5, bold = true },
    markdownHeadingRule = { fg = palette.base5 },
    markdownBold = { bold = true },
    markdownItalic = { italic = true },
    markdownBoldItalic = { bold = true, italic = true },
    markdownCode = { fg = palette.teal },
    markdownCodeBlock = { fg = palette.teal },
    markdownCodeDelimiter = { fg = palette.teal },
    markdownUrl = { fg = palette.dark_cyan, underline = true },
    markdownUrlTitle = { fg = palette.green },
    markdownLink = { fg = palette.blue, underline = true },
    markdownLinkText = { fg = palette.blue, underline = true },
    markdownListMarker = { fg = palette.blue },
    markdownOrderedListMarker = { fg = palette.blue },
    markdownBlockquote = { fg = palette.base6, italic = true },
    markdownRule = { fg = palette.base5 },
    markdownFootnote = { fg = palette.dark_cyan },
    markdownEscape = { fg = palette.orange },

    -- LSP Semantic Token Types
    ["@lsp.type.boolean"] = { link = "@boolean" },
    ["@lsp.type.builtinType"] = { link = "@type.builtin" },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.escapeSequence"] = { link = "@string.escape" },
    ["@lsp.type.formatSpecifier"] = { link = "@punctuation.special" },
    ["@lsp.type.interface"] = { fg = palette.yellow },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.namespace"] = { link = "@module" },
    ["@lsp.type.number"] = { link = "@number" },
    ["@lsp.type.operator"] = { link = "@operator" },
    ["@lsp.type.parameter"] = { link = "@variable.parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
    ["@lsp.type.typeAlias"] = { link = "@type.definition" },
    ["@lsp.type.unresolvedReference"] = { sp = palette.red, undercurl = true },
    ["@lsp.type.variable"] = {},

    -- LSP Semantic Token Modifiers
    ["@lsp.typemod.class.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.enum.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant.builtin" },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.function.global"] = { link = "@function.builtin" },
    ["@lsp.typemod.keyword.async"] = { link = "@keyword.coroutine" },
    ["@lsp.typemod.macro.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.operator.injected"] = { link = "@operator" },
    ["@lsp.typemod.string.injected"] = { link = "@string" },
    ["@lsp.typemod.type.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    ["@lsp.typemod.variable.injected"] = { link = "@variable" },
    ["@lsp.typemod.variable.readonly"] = { link = "@constant" },

    -- Language-specific: Rust
    ["@constant.rust"] = { fg = palette.cyan },
    ["@function.macro.rust"] = { fg = palette.red },
    ["@module.rust"] = { fg = palette.magenta },
    ["@punctuation.special.rust"] = { fg = palette.magenta },
    ["@type.rust"] = { fg = palette.cyan },

    -- Language-specific: TypeScript / TSX
    ["@keyword.type.typescript"] = { fg = palette.yellow },
    ["@constructor.typescript"] = { fg = palette.blue },
    ["@constructor.tsx"] = { fg = palette.blue },
    ["@tag.attribute.tsx"] = { fg = palette.orange, italic = true },

    -- Language-specific: CSS
    ["@number.css"] = { fg = palette.cyan },
    ["@property.css"] = { fg = palette.green },
    ["@property.class.css"] = { fg = palette.yellow },
    ["@property.id.css"] = { fg = palette.blue },
    ["@type.tag.css"] = { fg = palette.magenta },
    ["@type.css"] = { fg = palette.orange },

    -- Language-specific: JSON
    ["@label.json"] = { fg = palette.blue },

    -- Language-specific: Lua
    ["@constructor.lua"] = { fg = palette.orange },

    -- Language-specific: TOML
    ["@property.toml"] = { fg = palette.red },

    -- Language-specific: YAML
    ["@field.yaml"] = { fg = palette.red },

    -- Language-specific: Ruby
    ["@string.special.symbol.ruby"] = { fg = palette.orange },

    -- Language-specific: PHP
    ["@type.qualifier.php"] = { link = "Keyword" },
    ["@punctuation.bracket.php"] = { fg = palette.magenta, bold = true },

    -- Language-specific: C/C++
    ["@property.cpp"] = { fg = palette.orange },

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

    OilDir = { link = "Directory" },
    OilFile = { link = "Normal" },
    OilHidden = { link = "Comment" },
    OilLink = { link = "Underlined" },
    OilTitle = { link = "Title" },
    OilPreview = { link = "NormalFloat" },

    FzfLuaNormal = { fg = palette.fg, bg = bg_alt },
    FzfLuaBorder = { fg = palette.base4, bg = bg_alt },
    FzfLuaTitle = { fg = palette.magenta, bold = true },
    FzfLuaHeader = { fg = palette.violet },
    FzfLuaPath = { fg = palette.blue },
    FzfLuaCursorLine = { fg = palette.fg, bg = bg_alt3 },
    FzfLuaCursorLineNr = { fg = palette.cyan },
    FzfLuaSearch = { fg = palette.orange },
    FzfLuaPrompt = { fg = palette.green },
    FzfNormal = { fg = palette.fg, bg = bg_alt },
    FzfBorder = { fg = palette.base4, bg = bg_alt },

    -- headlines.nvim
    Headline1 = { fg = palette.red, bg = blend(palette.red, bg, 0.1), bold = true },
    Headline2 = { fg = palette.orange, bg = blend(palette.orange, bg, 0.1), bold = true },
    Headline3 = { fg = palette.yellow, bg = blend(palette.yellow, bg, 0.1), bold = true },
    Headline4 = { fg = palette.green, bg = blend(palette.green, bg, 0.1), bold = true },
    Headline5 = { fg = palette.blue, bg = blend(palette.blue, bg, 0.1), bold = true },
    Headline6 = { fg = palette.magenta, bg = blend(palette.magenta, bg, 0.1), bold = true },

    -- render-markdown.nvim
    RenderMarkdownH1Bg = { bg = blend(palette.red, bg, 0.1) },
    RenderMarkdownH2Bg = { bg = blend(palette.orange, bg, 0.1) },
    RenderMarkdownH3Bg = { bg = blend(palette.yellow, bg, 0.1) },
    RenderMarkdownH4Bg = { bg = blend(palette.green, bg, 0.1) },
    RenderMarkdownH5Bg = { bg = blend(palette.blue, bg, 0.1) },
    RenderMarkdownH6Bg = { bg = blend(palette.magenta, bg, 0.1) },

    -- markview.nvim
    MarkviewHeading1 = { fg = palette.red, bg = blend(palette.red, bg, 0.1), bold = true },
    MarkviewHeading2 = { fg = palette.orange, bg = blend(palette.orange, bg, 0.1), bold = true },
    MarkviewHeading3 = { fg = palette.yellow, bg = blend(palette.yellow, bg, 0.1), bold = true },
    MarkviewHeading4 = { fg = palette.green, bg = blend(palette.green, bg, 0.1), bold = true },
    MarkviewHeading5 = { fg = palette.blue, bg = blend(palette.blue, bg, 0.1), bold = true },
    MarkviewHeading6 = { fg = palette.magenta, bg = blend(palette.magenta, bg, 0.1), bold = true },
  }
end

return M
