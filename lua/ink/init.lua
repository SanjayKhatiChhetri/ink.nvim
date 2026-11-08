local M = {}

---@class ink.Config
---@field transparent boolean  let the terminal background show through
---@field italic_comments boolean
---@field palette table<string, string>  override individual palette colours
---@field on_highlights fun(hl: table, palette: table)|nil  tweak groups before they are applied
M.config = {
  transparent = false,
  italic_comments = true,
  palette = {},
  on_highlights = nil,
}

---@param opts? ink.Config
function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

function M.load()
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end
  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "ink"

  local palette = vim.tbl_extend("force", require("ink.palette"), M.config.palette)
  local groups = require("ink.highlights")(palette, M.config)
  if M.config.on_highlights then
    M.config.on_highlights(groups, palette)
  end
  for name, spec in pairs(groups) do
    vim.api.nvim_set_hl(0, name, spec)
  end

  -- :terminal colours (ANSI 0-15)
  local term = {
    palette.black, palette.red, palette.green, palette.yellow,
    palette.blue, palette.purple, palette.cyan, palette.fg,
    palette.dim, palette.bright_red, palette.bright_green, palette.bright_yellow,
    palette.bright_blue, palette.bright_purple, palette.bright_cyan, palette.white,
  }
  for i, c in ipairs(term) do
    vim.g["terminal_color_" .. (i - 1)] = c
  end
end

return M
