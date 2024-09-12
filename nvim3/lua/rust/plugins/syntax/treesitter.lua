return {
  "nvim-treesitter/nvim-treesitter",
  event = {
    "BufReadPre",
    "BufNewFile"
  },
  build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },

  cmd = {
    "TSInstall"
  },

  config = function()
    local configs = require "nvim-treesitter.configs"

    configs.setup {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        disable = {},
      },
     
      indent = {
        enable = true,
        disable = {},
      },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },

      sync_install = false,
      ensure_installed = {
        "json",
        "bash",
        "lua",
        "rust",
        "go",
        "python",
        "java"
      },
    }

  end,
}
