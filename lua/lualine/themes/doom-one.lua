local background = vim.o.background
local palette = require("doom-one.palette").get_palette(background)

return require("doom-one.groups.plugins.lualine").theme(palette)
