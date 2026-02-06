local util = require("doom-one.util")

--- Build the full Doom One color palette.
--- @param opts table Configuration options
--- @return table
local function make_palette(opts)
  opts = opts or {}

  ---------------------------------------------------------------------------
  -- Base palette (directly from doom-one-theme.el)
  ---------------------------------------------------------------------------
  local p = {
    bg       = "#282c34",
    fg       = "#bbc2cf",
    bg_alt   = "#21242b",
    fg_alt   = "#5B6268",

    base0    = "#1B2229",
    base1    = "#1c1f24",
    base2    = "#202328",
    base3    = "#23272e",
    base4    = "#3f444a",
    base5    = "#5B6268",
    base6    = "#73797e",
    base7    = "#9ca0a4",
    base8    = "#DFDFDF",

    grey     = "#3f444a",

    red       = "#ff6c6b",
    orange    = "#da8548",
    green     = "#98be65",
    teal      = "#4db5bd",
    yellow    = "#ECBE7B",
    blue      = "#51afef",
    dark_blue = "#2257A0",
    magenta   = "#c678dd",
    violet    = "#a9a1e1",
    cyan      = "#46D9FF",
    dark_cyan = "#5699AF",

    none      = "NONE",
  }

  ---------------------------------------------------------------------------
  -- Semantic colors (matching doom-one universal syntax classes)
  ---------------------------------------------------------------------------
  p.highlight    = p.blue
  p.vertical_bar = util.darken(p.base1, 0.1)
  p.selection    = p.dark_blue
  p.builtin      = p.magenta
  p.comments     = opts.brighter_comments and p.dark_cyan or p.base5
  p.doc_comments = util.lighten(p.comments, 0.25)
  p.constants    = p.violet
  p.functions    = p.magenta
  p.keywords     = p.blue
  p.methods      = p.cyan
  p.operators    = p.blue
  p.type         = p.yellow
  p.strings      = p.green
  p.variables    = util.lighten(p.magenta, 0.4)
  p.numbers      = p.orange
  p.region       = util.lighten(p.bg_alt, 0.15)
  p.error        = p.red
  p.warning      = p.yellow
  p.success      = p.green
  p.vc_modified  = p.orange
  p.vc_added     = p.green
  p.vc_deleted   = p.red

  ---------------------------------------------------------------------------
  -- Derived colors for diffs, diagnostics, etc.
  ---------------------------------------------------------------------------
  p.diff_add_bg    = util.blend(p.green, p.bg, 0.15)
  p.diff_change_bg = util.blend(p.orange, p.bg, 0.15)
  p.diff_delete_bg = util.blend(p.red, p.bg, 0.15)
  p.diff_text_bg   = util.blend(p.orange, p.bg, 0.30)

  p.diag_error_bg = util.blend(p.red, p.bg, 0.10)
  p.diag_warn_bg  = util.blend(p.yellow, p.bg, 0.10)
  p.diag_info_bg  = util.blend(p.blue, p.bg, 0.10)
  p.diag_hint_bg  = util.blend(p.teal, p.bg, 0.10)

  p.comment_bg = opts.comment_bg and util.lighten(p.bg, 0.05) or nil
  p.code_bg    = util.lighten(p.base3, 0.05)

  return p
end

return make_palette
