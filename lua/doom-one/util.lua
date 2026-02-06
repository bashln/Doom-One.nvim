local M = {}

--- Convert a hex color string to RGB components.
--- @param hex string Hex color (e.g. "#ff6c6b")
--- @return number, number, number
function M.hex_to_rgb(hex)
  hex = hex:gsub("#", "")
  return tonumber(hex:sub(1, 2), 16),
    tonumber(hex:sub(3, 4), 16),
    tonumber(hex:sub(5, 6), 16)
end

--- Convert RGB components to a hex color string.
--- @param r number Red (0-255)
--- @param g number Green (0-255)
--- @param b number Blue (0-255)
--- @return string
function M.rgb_to_hex(r, g, b)
  return string.format(
    "#%02x%02x%02x",
    math.max(0, math.min(255, math.floor(r + 0.5))),
    math.max(0, math.min(255, math.floor(g + 0.5))),
    math.max(0, math.min(255, math.floor(b + 0.5)))
  )
end

--- Blend two hex colors. alpha=1 returns fg, alpha=0 returns bg.
--- Matches doom-themes `doom-blend` function.
--- @param fg string Hex color
--- @param bg string Hex color
--- @param alpha number Blend factor (0.0 - 1.0)
--- @return string
function M.blend(fg, bg, alpha)
  local r1, g1, b1 = M.hex_to_rgb(fg)
  local r2, g2, b2 = M.hex_to_rgb(bg)
  return M.rgb_to_hex(
    r1 * alpha + r2 * (1 - alpha),
    g1 * alpha + g2 * (1 - alpha),
    b1 * alpha + b2 * (1 - alpha)
  )
end

--- Darken a hex color by amount (0=unchanged, 1=black).
--- Matches doom-themes `doom-darken` function.
--- @param hex string Hex color
--- @param amount number Darken factor (0.0 - 1.0)
--- @return string
function M.darken(hex, amount)
  return M.blend(hex, "#000000", 1 - amount)
end

--- Lighten a hex color by amount (0=unchanged, 1=white).
--- Matches doom-themes `doom-lighten` function.
--- @param hex string Hex color
--- @param amount number Lighten factor (0.0 - 1.0)
--- @return string
function M.lighten(hex, amount)
  return M.blend(hex, "#ffffff", 1 - amount)
end

return M
