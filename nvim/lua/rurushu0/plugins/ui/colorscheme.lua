return {
  "rebelot/kanagawa.nvim",

  config = function()
    vim.o.background = ""
    require("kanagawa").load("wave")
  end,
}
