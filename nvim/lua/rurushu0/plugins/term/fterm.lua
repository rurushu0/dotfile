return {
  {
    "numToStr/FTerm.nvim",
    config = function()
      local fterm = require "FTerm"
      vim.keymap.set("n", "<leader>tt", function()
        fterm:toggle()
      end, { desc = "[T]oggle [T]terminal" })
      vim.keymap.set("t", "<leader>tt", function()
        fterm:toggle()
      end, { desc = "[T]oggle [T]erminal" })
    end,
  },
  {
    "numToStr/FTerm.nvim",
    name = "FTerm.LazyGit.nvim",
    config = function()
      local fterm = require "FTerm"
      local lazygit = fterm:new {
        cmd = "lazygit",
      }

      vim.keymap.set("n", "<leader>lg", function()
        lazygit:toggle()
      end, { desc = "Toggle [L]azy[G]it" })
      vim.keymap.set("t", "<leader>lg", function()
        lazygit:toggle()
      end, { desc = "Toggle [L]azy[G]it" })
    end,
  },
  {
    "numToStr/FTerm.nvim",
    name = "FTerm.LazyGit.nvim",
    config = function()
      local fterm = require "FTerm"
      local lazygit = fterm:new {
        cmd = "gitui",
      }

      vim.keymap.set("n", "<leader>gu", function()
        lazygit:toggle()
      end, { desc = "Toggle [L]azy[G]it" })
      vim.keymap.set("t", "<leader>gu", function()
        lazygit:toggle()
      end, { desc = "Toggle [L]azy[G]it" })
    end,
  },
}
