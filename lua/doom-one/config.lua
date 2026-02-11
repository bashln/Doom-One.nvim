local M = {}

---@class DoomOneConfig
M.defaults = {
  transparent = false,
  background = nil, -- "dark", "light", "darker", "vibrant"
  colors = {},
  highlights = {},
  styles = {
    comments = { italic = true },
    conditionals = { italic = true },
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
  },
  integrations = {
    all = true,
  },
}

M.options = {}

function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", M.defaults, opts or {})
end

return M
