local M = {}

M.ui = {
  theme_toggle = { "onedark", "one_light" },
  theme = "tokyodark",
}

M.plugins = require "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
