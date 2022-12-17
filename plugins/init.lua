local overrides = require "custom.plugins.overrides"

return {

  -- ["goolord/alpha-nvim"] = { disable = false }, -- enables dashboard

  -- Override plugin definition options
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["williamboman/mason-lspconfig.nvim"] = {},

  ["andweeb/presence.nvim"] = {}

  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,
}
