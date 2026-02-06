local M = {}

M.defaults = {
  brighter_comments = false,
  comment_bg = false,
  transparent = false,
  terminal_colors = true,
  italic_comments = true,
  plugins = {
    telescope = true,
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    neotree = true,
    whichkey = true,
    indent_blankline = true,
    lazy = true,
    notify = true,
    mini = true,
    dashboard = true,
  },
}

M.options = {}

function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, opts or {})
end

return M
