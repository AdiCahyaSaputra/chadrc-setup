local M = {}

M.disabled = {
  n = {
    ["<C-s>"] = "",
    ["<TAB>"] = "",
    ["<S-Tab>"] = "",
    ["<leader>x"] = "",
    ["<leader>fm"] = "",
    ["[d"] = "",
    ["d]"] = "",
    ["<C-n>"] = "",
  }
}

M.general = {
  n = {
    ["<space>w"] = { ":w<cr>", "Save file", opts = { nowait = true } },
    ["n"] = { "nzz", "Auto Center On next" },
    ["N"] = { "Nzz", "Auto Center On prev" },
  },
  i = {
    ["jk"] = { "<Esc>", "Escape with jk", opts = { nowait = true } },
  },
}

M.tabufline = {
  n = {
    ["L"] = {
      function ()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "go to next buffer"
    },
    ["H"] = {
      function ()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "go to prev buffer"
    },
    ["C"] = {
      function ()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "Close buffer"
    },
  }
}

M.lspconfig = {
  n = {
    ["<space>dh"] = {
      function()
        vim.diagnostic.goto_prev()
      end,
      "goto prev",
    },

    ["<space>dl"] = {
      function()
        vim.diagnostic.goto_next()
      end,
      "goto_next",
    },
    ["<leader>lf"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "lsp formatting",
    },
    -- ["gd"] = {
    --   function ()
    --     require('telescope.builtin').lsp_definition()
    --   end,
    --   "lsp definition",
    -- }
  }
}

M.nvimtree = {
  n = {
    -- toggle
    ["<space>e"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },

    -- focus
    ["<space>o"] = { "<cmd> NvimTreeFocus <CR>", "focus nvimtree" },
  }
}

return M
