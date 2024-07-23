return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    { "nvim-tree/nvim-web-devicons" },
  },

  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
   
    require("nvim-tree").setup({
      view = {
        width = 35,
        relativenumber = false,
      },

      -- change folder arrow icons
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "", -- arrow when folder is closed
              arrow_open = "", -- arrow when folder is open
            },
          },
        },
      },

      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },

      git = {
        enable = true,
        ignore = true,
        timeout = 400,
      },

      filters = {
        custom = {
          "^\\.git$",
          ".DS_Store",
          "lazy-lock.json",
        },
      },
    })
  end,

  keys = {
    {"<leader>ee", "<cmd>NvimTreeToggle<cr>", desc = "Toggle file explorer"}, 
    {"<leader>ef", "<cmd>NvimTreeFindFileToggle<cr>", desc = "Toggle file exploer on current file"},
    {"<leader>et", "<cmd>NvimTreeFocus<cr>", desc = "Focus on tree"},
    {"<leader>eE", function()
      require("nvim-tree.api").tree.expand_all()
    end, desc = "Expand file explorer"},
    {"<leader>ec", "<cmd>NvimTreeCollapse<cr>", desc = "Collapse file explorer"},
    {"<leader>er", "<cmd>NvimTreeRefresh<cr>", desc = "Refresh file explorer"},
  },
}
