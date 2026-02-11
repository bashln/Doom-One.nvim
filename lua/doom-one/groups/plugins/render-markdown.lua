local M = {}

function M.get(palette, config)
  local blend = require("doom-one.palette").blend
  local bg = config.transparent and "NONE" or palette.bg

  return {
    RenderMarkdownH1Bg = { bg = blend(palette.red, bg, 0.1) },
    RenderMarkdownH2Bg = { bg = blend(palette.orange, bg, 0.1) },
    RenderMarkdownH3Bg = { bg = blend(palette.yellow, bg, 0.1) },
    RenderMarkdownH4Bg = { bg = blend(palette.green, bg, 0.1) },
    RenderMarkdownH5Bg = { bg = blend(palette.blue, bg, 0.1) },
    RenderMarkdownH6Bg = { bg = blend(palette.magenta, bg, 0.1) },
  }
end

return M
