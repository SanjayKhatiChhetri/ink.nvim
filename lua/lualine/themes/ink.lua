local p = require("ink.palette")

local function mode(color)
  return {
    a = { fg = p.bg_dark, bg = color, gui = "bold" },
    b = { fg = p.fg, bg = p.bg_visual },
    c = { fg = p.fg_dark, bg = p.bg_dark },
  }
end

return {
  normal = mode(p.blue),
  insert = mode(p.green),
  visual = mode(p.purple),
  replace = mode(p.red),
  command = mode(p.yellow),
  terminal = mode(p.cyan),
  inactive = {
    a = { fg = p.dim, bg = p.bg_dark },
    b = { fg = p.dim, bg = p.bg_dark },
    c = { fg = p.dim, bg = p.bg_dark },
  },
}
