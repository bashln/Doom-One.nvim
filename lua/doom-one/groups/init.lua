local M = {}

function M.get(palette, config)
  local highlights = {}

  local modules = {
    "editor",
    "syntax",
    "treesitter",
    "lsp",
  }

  for _, module in ipairs(modules) do
    local groups = require("doom-one.groups." .. module).get(palette, config)
    highlights = vim.tbl_deep_extend("force", highlights, groups)
  end

  -- Load plugin integrations
  local integrations = config.integrations or {}
  if integrations.all then
    -- List all supported plugins
    local plugins = {
      "telescope",
      "gitsigns",
      "nvimtree",
      "lualine",
      "bufferline",
      "which-key",
      "indent-blankline",
      "dashboard",
      "noice",
      "trouble",
      "notify",
      "flash",
      "render-markdown",
      "headlines",
      "markview",
      "neotree",
      "oil",
      "fzf",
      "cmp",
      "dap",
      "todo-comments",
    }
    for _, plugin in ipairs(plugins) do
      local ok, mod = pcall(require, "doom-one.groups.plugins." .. plugin)
      if ok then
        highlights = vim.tbl_deep_extend("force", highlights, mod.get(palette, config))
      end
    end
  else
    for plugin, enabled in pairs(integrations) do
      if enabled then
        local ok, mod = pcall(require, "doom-one.groups.plugins." .. plugin)
        if ok then
          highlights = vim.tbl_deep_extend("force", highlights, mod.get(palette, config))
        end
      end
    end
  end

  return highlights
end

return M
