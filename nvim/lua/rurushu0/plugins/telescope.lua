return {
  --- Source spec
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",

  -----------------------------------------------------------------------------
  -- Loading spec
  -----------------------------------------------------------------------------
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-fzf-native.nvim",
    { "nvim-tree/nvim-web-devicons" },
  },

  -----------------------------------------------------------------------------
  --- Setup spec
  -----------------------------------------------------------------------------
  opts = {},

--  config = function()
--    require("telescope").setup {}
--  end,

  -----------------------------------------------------------------------------
  --- Lazy loading spec
  -----------------------------------------------------------------------------
  cmd = "Telescope",
  --- lazy = false,
  --- event = {},
  --- ft = {},
  keys = function()
    local builtin = require "telescope.builtin"
    return {
      -- File pickers
      { "<leader>ff", builtin.find_files, desc = "[F]ind [F]iles (root dir)" },
      { "<leader>fa", "<cmd> Telescope find_files follow=true no_ignore=true hidden=true<CR>", desc = "Find file (root dir)" },
      -- Find words
      { "<leader>fg", builtin.live_grep, desc = "Live grep file (root dir)" },
      { "<leader>fw", builtin.grep_string, desc = "Grep current [w]ord (root dir)" },
      -- Vim pickers
      { "<leader>fb", builtin.buffers, desc = "Buffers" },
      -- Color pickers
      { "<leader>fc", builtin.colorschemes, desc = "Pick color scheme" },
    }
  end,
}
