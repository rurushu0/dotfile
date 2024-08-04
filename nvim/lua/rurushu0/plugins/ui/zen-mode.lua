return {
  "folke/zen-mode.nvim",
  opts = {
    alacritty = {
      enabled = false,
      font = "+2",
    },
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function()
    vim.keymap.set("n", "<leader>zm", function()
      require("zen-mode").toggle {
        window = {
          width = 0.85,
        },
      }
    end)
  end,
}
