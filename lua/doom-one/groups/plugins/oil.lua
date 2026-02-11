local M = {}

function M.get(palette, config)
  return {
    OilDir = { link = "Directory" },
    OilFile = { link = "Normal" },
    OilHidden = { link = "Comment" },
    OilLink = { link = "Underlined" },
    OilTitle = { link = "Title" },
    OilPreview = { link = "NormalFloat" },
  }
end

return M
