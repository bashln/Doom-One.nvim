local util = require("doom-one.util")

local M = {}

--- @param p table Color palette
--- @param opts table Configuration options
--- @return table<string, table> Highlight group definitions
function M.get(p, opts)
  local hl = {}
  local none = p.none
  local transparent = opts.transparent

  ---------------------------------------------------------------------------
  -- Editor UI
  ---------------------------------------------------------------------------
  hl.Normal       = { fg = p.fg, bg = transparent and none or p.bg }
  hl.NormalFloat  = { fg = p.fg, bg = p.bg_alt }
  hl.NormalNC     = { fg = p.fg, bg = transparent and none or p.bg }
  hl.FloatBorder  = { fg = p.base4, bg = p.bg_alt }
  hl.FloatTitle   = { fg = p.blue, bg = p.bg_alt, bold = true }

  hl.Cursor       = { fg = p.bg, bg = p.fg }
  hl.lCursor      = { link = "Cursor" }
  hl.CursorIM     = { link = "Cursor" }
  hl.TermCursor   = { fg = p.bg, bg = p.fg }
  hl.TermCursorNC = { fg = p.bg_alt, bg = p.fg_alt }

  hl.CursorLine   = { bg = p.base3 }
  hl.CursorColumn = { link = "CursorLine" }
  hl.ColorColumn  = { bg = p.base3 }

  hl.LineNr        = { fg = p.base4 }
  hl.CursorLineNr = { fg = p.fg, bold = true }
  hl.SignColumn    = { fg = p.base4, bg = transparent and none or p.bg }
  hl.FoldColumn    = { fg = p.base4, bg = transparent and none or p.bg }
  hl.Folded        = { fg = p.comments, bg = p.base3 }

  hl.WinSeparator = { fg = p.vertical_bar }
  hl.VertSplit    = { link = "WinSeparator" }

  hl.Pmenu       = { fg = p.fg, bg = p.base3 }
  hl.PmenuSel    = { fg = p.base0, bg = p.blue }
  hl.PmenuSbar   = { bg = p.base4 }
  hl.PmenuThumb  = { bg = p.base6 }

  hl.StatusLine   = { fg = p.fg, bg = p.bg_alt }
  hl.StatusLineNC = { fg = p.fg_alt, bg = p.bg_alt }
  hl.WinBar       = { fg = p.fg, bg = transparent and none or p.bg }
  hl.WinBarNC     = { fg = p.fg_alt, bg = transparent and none or p.bg }

  hl.TabLine     = { fg = p.fg_alt, bg = p.base1 }
  hl.TabLineFill = { bg = p.base1 }
  hl.TabLineSel  = { fg = p.fg, bg = p.bg, bold = true }

  hl.Search     = { fg = p.bg, bg = p.blue }
  hl.IncSearch  = { fg = p.bg, bg = p.orange }
  hl.CurSearch  = { link = "IncSearch" }
  hl.Substitute = { fg = p.bg, bg = p.red }

  hl.Visual    = { bg = p.region }
  hl.VisualNOS = { link = "Visual" }

  hl.MatchParen = { fg = p.red, bold = true, underline = true }

  hl.DiffAdd    = { bg = p.diff_add_bg }
  hl.DiffChange = { bg = p.diff_change_bg }
  hl.DiffDelete = { fg = p.red, bg = p.diff_delete_bg }
  hl.DiffText   = { bg = p.diff_text_bg }

  hl.SpellBad   = { sp = p.red, undercurl = true }
  hl.SpellCap   = { sp = p.yellow, undercurl = true }
  hl.SpellLocal = { sp = p.blue, undercurl = true }
  hl.SpellRare  = { sp = p.violet, undercurl = true }

  hl.Conceal     = { fg = p.base5 }
  hl.Directory   = { fg = p.blue }
  hl.EndOfBuffer = { fg = p.bg }
  hl.ErrorMsg    = { fg = p.red, bold = true }
  hl.WarningMsg  = { fg = p.yellow, bold = true }
  hl.ModeMsg     = { fg = p.fg, bold = true }
  hl.MoreMsg     = { fg = p.green }
  hl.Question    = { fg = p.green }
  hl.NonText     = { fg = p.base4 }
  hl.SpecialKey  = { fg = p.base4 }
  hl.Whitespace  = { fg = p.base4 }
  hl.WildMenu    = { fg = p.bg, bg = p.blue }
  hl.Title       = { fg = p.blue, bold = true }
  hl.QuickFixLine = { bg = p.base3, bold = true }

  ---------------------------------------------------------------------------
  -- Standard syntax
  ---------------------------------------------------------------------------
  hl.Comment    = {
    fg = p.comments,
    bg = p.comment_bg,
    italic = opts.italic_comments,
  }
  hl.Constant   = { fg = p.constants }
  hl.String     = { fg = p.strings }
  hl.Character  = { fg = p.strings }
  hl.Number     = { fg = p.numbers }
  hl.Boolean    = { fg = p.constants }
  hl.Float      = { fg = p.numbers }

  hl.Identifier = { fg = p.variables }
  hl.Function   = { fg = p.functions }

  hl.Statement    = { fg = p.keywords }
  hl.Conditional  = { fg = p.keywords }
  hl.Repeat       = { fg = p.keywords }
  hl.Label        = { fg = p.blue }
  hl.Operator     = { fg = p.operators }
  hl.Keyword      = { fg = p.keywords }
  hl.Exception    = { fg = p.keywords }

  hl.PreProc    = { fg = p.keywords }
  hl.Include    = { fg = p.keywords }
  hl.Define     = { fg = p.keywords }
  hl.Macro      = { fg = p.keywords }
  hl.PreCondit  = { fg = p.keywords }

  hl.Type         = { fg = p.type }
  hl.StorageClass = { fg = p.type }
  hl.Structure    = { fg = p.type }
  hl.Typedef      = { fg = p.type }

  hl.Special        = { fg = p.blue }
  hl.SpecialChar    = { fg = p.blue }
  hl.Tag            = { fg = p.red }
  hl.Delimiter      = { fg = p.fg }
  hl.SpecialComment = { fg = p.doc_comments, italic = opts.italic_comments }
  hl.Debug          = { fg = p.orange }

  hl.Underlined = { underline = true }
  hl.Bold       = { bold = true }
  hl.Italic     = { italic = true }

  hl.Error = { fg = p.error }
  hl.Todo  = { fg = p.yellow, bg = p.base3, bold = true }

  ---------------------------------------------------------------------------
  -- Treesitter
  ---------------------------------------------------------------------------
  hl["@variable"]           = { fg = p.variables }
  hl["@variable.builtin"]   = { fg = p.magenta, italic = true }
  hl["@variable.parameter"] = { fg = p.variables }
  hl["@variable.member"]    = { fg = p.variables }

  hl["@constant"]         = { fg = p.constants }
  hl["@constant.builtin"] = { fg = p.constants, italic = true }
  hl["@constant.macro"]   = { fg = p.constants }

  hl["@module"] = { fg = p.yellow }
  hl["@label"]  = { fg = p.blue }

  hl["@string"]         = { fg = p.strings }
  hl["@string.escape"]  = { fg = p.cyan }
  hl["@string.special"] = { fg = p.cyan }
  hl["@string.regex"]   = { fg = p.cyan }

  hl["@character"]         = { fg = p.strings }
  hl["@character.special"] = { fg = p.blue }

  hl["@boolean"]      = { fg = p.constants }
  hl["@number"]       = { fg = p.numbers }
  hl["@number.float"] = { fg = p.numbers }

  hl["@type"]            = { fg = p.type }
  hl["@type.builtin"]    = { fg = p.type, italic = true }
  hl["@type.definition"] = { fg = p.type }

  hl["@attribute"] = { fg = p.blue }
  hl["@property"]  = { fg = p.variables }

  hl["@function"]         = { fg = p.functions }
  hl["@function.builtin"] = { fg = p.cyan }
  hl["@function.call"]    = { fg = p.functions }
  hl["@function.method"]  = { fg = p.methods }
  hl["@function.method.call"] = { fg = p.methods }

  hl["@constructor"] = { fg = p.magenta }

  hl["@operator"] = { fg = p.operators }

  hl["@keyword"]              = { fg = p.keywords }
  hl["@keyword.function"]     = { fg = p.keywords }
  hl["@keyword.operator"]     = { fg = p.keywords }
  hl["@keyword.return"]       = { fg = p.keywords }
  hl["@keyword.conditional"]  = { fg = p.keywords }
  hl["@keyword.repeat"]       = { fg = p.keywords }
  hl["@keyword.import"]       = { fg = p.keywords }
  hl["@keyword.exception"]    = { fg = p.keywords }
  hl["@keyword.coroutine"]    = { fg = p.keywords }
  hl["@keyword.directive"]    = { fg = p.keywords }

  hl["@punctuation.bracket"]   = { fg = p.base7 }
  hl["@punctuation.delimiter"] = { fg = p.base7 }
  hl["@punctuation.special"]   = { fg = p.blue }

  hl["@comment"]         = { link = "Comment" }
  hl["@comment.todo"]    = { link = "Todo" }
  hl["@comment.note"]    = { fg = p.blue, bg = p.base3, bold = true }
  hl["@comment.warning"] = { fg = p.yellow, bg = p.base3, bold = true }
  hl["@comment.error"]   = { fg = p.red, bg = p.base3, bold = true }

  hl["@tag"]           = { fg = p.red }
  hl["@tag.attribute"] = { fg = p.orange }
  hl["@tag.delimiter"] = { fg = p.base7 }

  hl["@markup.heading"]       = { fg = p.red, bold = true }
  hl["@markup.bold"]          = { bold = true }
  hl["@markup.italic"]        = { italic = true }
  hl["@markup.strikethrough"] = { strikethrough = true }
  hl["@markup.link"]          = { fg = p.blue, underline = true }
  hl["@markup.link.url"]      = { fg = p.cyan, underline = true }
  hl["@markup.raw"]           = { fg = p.green, bg = p.code_bg }
  hl["@markup.raw.block"]     = { bg = p.code_bg }
  hl["@markup.list"]          = { fg = p.blue }
  hl["@markup.quote"]         = { fg = p.doc_comments, italic = true }
  hl["@markup.math"]          = { fg = p.green }

  -- Semantic tokens
  hl["@lsp.type.namespace"]     = { link = "@module" }
  hl["@lsp.type.type"]          = { link = "@type" }
  hl["@lsp.type.class"]         = { link = "@type" }
  hl["@lsp.type.enum"]          = { link = "@type" }
  hl["@lsp.type.interface"]     = { link = "@type" }
  hl["@lsp.type.struct"]        = { link = "@type" }
  hl["@lsp.type.parameter"]     = { link = "@variable.parameter" }
  hl["@lsp.type.variable"]      = {} -- defer to treesitter
  hl["@lsp.type.property"]      = { link = "@property" }
  hl["@lsp.type.enumMember"]    = { link = "@constant" }
  hl["@lsp.type.function"]      = { link = "@function" }
  hl["@lsp.type.method"]        = { link = "@function.method" }
  hl["@lsp.type.macro"]         = { link = "@constant.macro" }
  hl["@lsp.type.decorator"]     = { link = "@attribute" }

  ---------------------------------------------------------------------------
  -- LSP & Diagnostics
  ---------------------------------------------------------------------------
  hl.DiagnosticError = { fg = p.error }
  hl.DiagnosticWarn  = { fg = p.warning }
  hl.DiagnosticInfo  = { fg = p.blue }
  hl.DiagnosticHint  = { fg = p.teal }
  hl.DiagnosticOk    = { fg = p.success }

  hl.DiagnosticVirtualTextError = { fg = p.error, bg = p.diag_error_bg }
  hl.DiagnosticVirtualTextWarn  = { fg = p.warning, bg = p.diag_warn_bg }
  hl.DiagnosticVirtualTextInfo  = { fg = p.blue, bg = p.diag_info_bg }
  hl.DiagnosticVirtualTextHint  = { fg = p.teal, bg = p.diag_hint_bg }
  hl.DiagnosticVirtualTextOk    = { fg = p.success }

  hl.DiagnosticUnderlineError = { sp = p.error, undercurl = true }
  hl.DiagnosticUnderlineWarn  = { sp = p.warning, undercurl = true }
  hl.DiagnosticUnderlineInfo  = { sp = p.blue, undercurl = true }
  hl.DiagnosticUnderlineHint  = { sp = p.teal, undercurl = true }
  hl.DiagnosticUnderlineOk    = { sp = p.success, undercurl = true }

  hl.DiagnosticSignError = { fg = p.error }
  hl.DiagnosticSignWarn  = { fg = p.warning }
  hl.DiagnosticSignInfo  = { fg = p.blue }
  hl.DiagnosticSignHint  = { fg = p.teal }
  hl.DiagnosticSignOk    = { fg = p.success }

  hl.DiagnosticFloatingError = { fg = p.error }
  hl.DiagnosticFloatingWarn  = { fg = p.warning }
  hl.DiagnosticFloatingInfo  = { fg = p.blue }
  hl.DiagnosticFloatingHint  = { fg = p.teal }

  hl.LspReferenceText  = { bg = p.base3 }
  hl.LspReferenceRead  = { bg = p.base3 }
  hl.LspReferenceWrite = { bg = p.base3, underline = true }
  hl.LspSignatureActiveParameter = { fg = p.orange, bold = true }
  hl.LspInfoBorder     = { link = "FloatBorder" }
  hl.LspInlayHint      = { fg = p.base5, bg = util.blend(p.base5, p.bg, 0.08), italic = true }

  ---------------------------------------------------------------------------
  -- Plugin: telescope.nvim
  ---------------------------------------------------------------------------
  if opts.plugins.telescope then
    hl.TelescopeNormal       = { fg = p.fg, bg = p.bg_alt }
    hl.TelescopeBorder       = { fg = p.base4, bg = p.bg_alt }
    hl.TelescopeTitle        = { fg = p.blue, bold = true }
    hl.TelescopePromptNormal = { fg = p.fg, bg = p.base3 }
    hl.TelescopePromptBorder = { fg = p.base4, bg = p.base3 }
    hl.TelescopePromptTitle  = { fg = p.orange, bold = true }
    hl.TelescopePromptPrefix = { fg = p.blue }
    hl.TelescopeSelection    = { bg = p.region }
    hl.TelescopeMatching     = { fg = p.cyan, bold = true }
    hl.TelescopeResultsNormal = { fg = p.fg }
    hl.TelescopePreviewTitle = { fg = p.green, bold = true }
  end

  ---------------------------------------------------------------------------
  -- Plugin: nvim-cmp
  ---------------------------------------------------------------------------
  if opts.plugins.cmp then
    hl.CmpItemAbbr           = { fg = p.fg }
    hl.CmpItemAbbrDeprecated = { fg = p.base5, strikethrough = true }
    hl.CmpItemAbbrMatch      = { fg = p.cyan, bold = true }
    hl.CmpItemAbbrMatchFuzzy = { fg = p.cyan, bold = true }
    hl.CmpItemMenu           = { fg = p.base5 }
    hl.CmpItemKindDefault    = { fg = p.base5 }

    hl.CmpItemKindKeyword   = { fg = p.keywords }
    hl.CmpItemKindVariable  = { fg = p.variables }
    hl.CmpItemKindConstant  = { fg = p.constants }
    hl.CmpItemKindReference = { fg = p.variables }
    hl.CmpItemKindValue     = { fg = p.constants }

    hl.CmpItemKindFunction = { fg = p.functions }
    hl.CmpItemKindMethod   = { fg = p.methods }

    hl.CmpItemKindClass     = { fg = p.type }
    hl.CmpItemKindInterface = { fg = p.type }
    hl.CmpItemKindStruct    = { fg = p.type }
    hl.CmpItemKindEnum      = { fg = p.type }
    hl.CmpItemKindModule    = { fg = p.yellow }

    hl.CmpItemKindProperty = { fg = p.variables }
    hl.CmpItemKindField    = { fg = p.variables }
    hl.CmpItemKindUnit     = { fg = p.constants }

    hl.CmpItemKindText    = { fg = p.fg }
    hl.CmpItemKindSnippet = { fg = p.green }
    hl.CmpItemKindFile    = { fg = p.blue }
    hl.CmpItemKindFolder  = { fg = p.blue }
    hl.CmpItemKindColor   = { fg = p.magenta }

    hl.CmpItemKindEvent         = { fg = p.orange }
    hl.CmpItemKindOperator      = { fg = p.operators }
    hl.CmpItemKindTypeParameter = { fg = p.type }
  end

  ---------------------------------------------------------------------------
  -- Plugin: gitsigns.nvim
  ---------------------------------------------------------------------------
  if opts.plugins.gitsigns then
    hl.GitSignsAdd          = { fg = p.vc_added }
    hl.GitSignsChange       = { fg = p.vc_modified }
    hl.GitSignsDelete       = { fg = p.vc_deleted }
    hl.GitSignsAddNr        = { fg = p.vc_added }
    hl.GitSignsChangeNr     = { fg = p.vc_modified }
    hl.GitSignsDeleteNr     = { fg = p.vc_deleted }
    hl.GitSignsAddLn        = { bg = p.diff_add_bg }
    hl.GitSignsChangeLn     = { bg = p.diff_change_bg }
    hl.GitSignsDeleteLn     = { bg = p.diff_delete_bg }
    hl.GitSignsCurrentLineBlame = { fg = p.base5, italic = true }
  end

  ---------------------------------------------------------------------------
  -- Plugin: nvim-tree.lua
  ---------------------------------------------------------------------------
  if opts.plugins.nvimtree then
    hl.NvimTreeNormal       = { fg = p.fg, bg = p.bg_alt }
    hl.NvimTreeRootFolder   = { fg = p.blue, bold = true }
    hl.NvimTreeFolderName   = { fg = p.blue }
    hl.NvimTreeFolderIcon   = { fg = p.blue }
    hl.NvimTreeOpenedFolderName = { fg = p.blue, bold = true }
    hl.NvimTreeEmptyFolderName  = { fg = p.base5 }
    hl.NvimTreeIndentMarker = { fg = p.base4 }
    hl.NvimTreeGitDirty     = { fg = p.vc_modified }
    hl.NvimTreeGitNew       = { fg = p.vc_added }
    hl.NvimTreeGitDeleted   = { fg = p.vc_deleted }
    hl.NvimTreeSpecialFile  = { fg = p.yellow }
    hl.NvimTreeImageFile    = { fg = p.fg }
    hl.NvimTreeWinSeparator = { fg = p.vertical_bar, bg = p.bg_alt }
  end

  ---------------------------------------------------------------------------
  -- Plugin: neo-tree.nvim
  ---------------------------------------------------------------------------
  if opts.plugins.neotree then
    hl.NeoTreeNormal         = { fg = p.fg, bg = p.bg_alt }
    hl.NeoTreeNormalNC       = { fg = p.fg, bg = p.bg_alt }
    hl.NeoTreeRootName       = { fg = p.blue, bold = true }
    hl.NeoTreeDirectoryName  = { fg = p.blue }
    hl.NeoTreeDirectoryIcon  = { fg = p.blue }
    hl.NeoTreeFileName       = { fg = p.fg }
    hl.NeoTreeGitAdded       = { fg = p.vc_added }
    hl.NeoTreeGitModified    = { fg = p.vc_modified }
    hl.NeoTreeGitDeleted     = { fg = p.vc_deleted }
    hl.NeoTreeGitConflict    = { fg = p.red, bold = true }
    hl.NeoTreeGitUntracked   = { fg = p.base5 }
    hl.NeoTreeIndentMarker   = { fg = p.base4 }
    hl.NeoTreeWinSeparator   = { fg = p.vertical_bar, bg = p.bg_alt }
    hl.NeoTreeFloatBorder    = { fg = p.base4, bg = p.bg_alt }
    hl.NeoTreeFloatTitle     = { fg = p.blue, bold = true }
    hl.NeoTreeTitleBar       = { fg = p.bg, bg = p.blue }
  end

  ---------------------------------------------------------------------------
  -- Plugin: which-key.nvim
  ---------------------------------------------------------------------------
  if opts.plugins.whichkey then
    hl.WhichKey          = { fg = p.cyan }
    hl.WhichKeyGroup     = { fg = p.blue }
    hl.WhichKeySeparator = { fg = p.base5 }
    hl.WhichKeyDesc      = { fg = p.magenta }
    hl.WhichKeyFloat     = { bg = p.bg_alt }
    hl.WhichKeyBorder    = { fg = p.base4, bg = p.bg_alt }
    hl.WhichKeyValue     = { fg = p.base7 }
  end

  ---------------------------------------------------------------------------
  -- Plugin: indent-blankline.nvim
  ---------------------------------------------------------------------------
  if opts.plugins.indent_blankline then
    hl.IblIndent = { fg = p.base3 }
    hl.IblScope  = { fg = p.base4 }
    hl.IndentBlanklineChar        = { fg = p.base3 }
    hl.IndentBlanklineContextChar = { fg = p.base4 }
  end

  ---------------------------------------------------------------------------
  -- Plugin: lazy.nvim
  ---------------------------------------------------------------------------
  if opts.plugins.lazy then
    hl.LazyNormal       = { fg = p.fg, bg = p.bg_alt }
    hl.LazyButton       = { fg = p.fg, bg = p.base3 }
    hl.LazyButtonActive = { fg = p.bg, bg = p.blue }
    hl.LazyH1           = { fg = p.bg, bg = p.blue, bold = true }
    hl.LazyH2           = { fg = p.blue, bold = true }
    hl.LazyComment      = { fg = p.base5 }
    hl.LazySpecial      = { fg = p.cyan }
    hl.LazyCommit       = { fg = p.green }
    hl.LazyCommitType   = { fg = p.orange }
    hl.LazyReasonPlugin = { fg = p.magenta }
    hl.LazyReasonCmd    = { fg = p.yellow }
    hl.LazyReasonEvent  = { fg = p.orange }
    hl.LazyReasonFt     = { fg = p.cyan }
    hl.LazyReasonKeys   = { fg = p.green }
    hl.LazyReasonStart  = { fg = p.red }
  end

  ---------------------------------------------------------------------------
  -- Plugin: nvim-notify
  ---------------------------------------------------------------------------
  if opts.plugins.notify then
    hl.NotifyERRORBorder = { fg = p.red }
    hl.NotifyWARNBorder  = { fg = p.yellow }
    hl.NotifyINFOBorder  = { fg = p.blue }
    hl.NotifyDEBUGBorder = { fg = p.base5 }
    hl.NotifyTRACEBorder = { fg = p.violet }
    hl.NotifyERRORIcon   = { fg = p.red }
    hl.NotifyWARNIcon    = { fg = p.yellow }
    hl.NotifyINFOIcon    = { fg = p.blue }
    hl.NotifyDEBUGIcon   = { fg = p.base5 }
    hl.NotifyTRACEIcon   = { fg = p.violet }
    hl.NotifyERRORTitle  = { fg = p.red }
    hl.NotifyWARNTitle   = { fg = p.yellow }
    hl.NotifyINFOTitle   = { fg = p.blue }
    hl.NotifyDEBUGTitle  = { fg = p.base5 }
    hl.NotifyTRACETitle  = { fg = p.violet }
    hl.NotifyERRORBody   = { fg = p.fg }
    hl.NotifyWARNBody    = { fg = p.fg }
    hl.NotifyINFOBody    = { fg = p.fg }
    hl.NotifyDEBUGBody   = { fg = p.fg }
    hl.NotifyTRACEBody   = { fg = p.fg }
  end

  ---------------------------------------------------------------------------
  -- Plugin: mini.nvim
  ---------------------------------------------------------------------------
  if opts.plugins.mini then
    hl.MiniCursorword        = { underline = true }
    hl.MiniCursorwordCurrent = { underline = true }

    hl.MiniIndentscopeSymbol = { fg = p.base4 }
    hl.MiniIndentscopePrefix = { nocombine = true }

    hl.MiniStatuslineDevinfo     = { fg = p.fg, bg = p.base3 }
    hl.MiniStatuslineFileinfo    = { fg = p.fg, bg = p.base3 }
    hl.MiniStatuslineFilename    = { fg = p.fg_alt, bg = p.bg_alt }
    hl.MiniStatuslineInactive    = { fg = p.fg_alt, bg = p.bg_alt }
    hl.MiniStatuslineModeNormal  = { fg = p.bg, bg = p.blue, bold = true }
    hl.MiniStatuslineModeInsert  = { fg = p.bg, bg = p.green, bold = true }
    hl.MiniStatuslineModeVisual  = { fg = p.bg, bg = p.magenta, bold = true }
    hl.MiniStatuslineModeReplace = { fg = p.bg, bg = p.red, bold = true }
    hl.MiniStatuslineModeCommand = { fg = p.bg, bg = p.orange, bold = true }
    hl.MiniStatuslineModeOther   = { fg = p.bg, bg = p.teal, bold = true }

    hl.MiniSurround = { fg = p.bg, bg = p.orange }

    hl.MiniTablineCurrent         = { fg = p.fg, bg = p.bg, bold = true }
    hl.MiniTablineVisible         = { fg = p.fg, bg = p.bg }
    hl.MiniTablineHidden          = { fg = p.fg_alt, bg = p.bg_alt }
    hl.MiniTablineModifiedCurrent = { fg = p.orange, bg = p.bg, bold = true }
    hl.MiniTablineModifiedVisible = { fg = p.orange, bg = p.bg }
    hl.MiniTablineModifiedHidden  = { fg = p.orange, bg = p.bg_alt }
    hl.MiniTablineFill            = { bg = p.base1 }
    hl.MiniTablineTabpagesection  = { fg = p.bg, bg = p.blue }

    hl.MiniPickNormal  = { fg = p.fg, bg = p.bg_alt }
    hl.MiniPickBorder  = { fg = p.base4, bg = p.bg_alt }
    hl.MiniPickHeader  = { fg = p.blue, bold = true }
    hl.MiniPickMatchCurrent  = { bg = p.region }
    hl.MiniPickMatchMarked   = { fg = p.cyan, bold = true }
    hl.MiniPickMatchRanges   = { fg = p.cyan, bold = true }
    hl.MiniPickPrompt  = { fg = p.blue, bg = p.bg_alt }
  end

  ---------------------------------------------------------------------------
  -- Plugin: dashboard-nvim
  ---------------------------------------------------------------------------
  if opts.plugins.dashboard then
    hl.DashboardHeader   = { fg = p.blue }
    hl.DashboardFooter   = { fg = p.base5, italic = true }
    hl.DashboardCenter   = { fg = p.magenta }
    hl.DashboardShortCut = { fg = p.cyan }
    hl.DashboardKey      = { fg = p.orange }
    hl.DashboardIcon     = { fg = p.blue }
    hl.DashboardDesc     = { fg = p.fg }
  end

  return hl
end

return M
