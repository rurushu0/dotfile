return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
    "nvim-treesitter/nvim-treesitter-textobjects",
  },

  opts = {
    should_enable_vim_regex = false,
    --   highlight = { enable = true },
    --   indent = { enable = true },
    --   autotag = { enable = true },
    --   ensure_installed = {
    --     'bash',
    --     'lua',
    --   },
  },

  config = function()
    local treesitter = require "nvim-treesitter.configs"

    treesitter.setup {
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-Space>",
          node_incremental = "<C-Space>",
          node_decremental = "<bs>",
          scope_incremental = false,
        },
      },
      ensure_installed = {
        "bash",
        "c",
        "cpp",
        "html",
        "css",
        "markdown",
        "haskell",
        "lua",
        "json",
        "java",
        "javascript",
        "typescript",
        "python",
        "sql",
        "scala",
        "rust",
        "regex",
        "vue",
        "svelte",
        "yaml",
      },
    }

    treesitter.start()
  end,
}
