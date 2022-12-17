local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "php",
    -- "typescript",
  },
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "stylua",
    "typescript-language-server",
    "intelephense"
  },
}

return M
