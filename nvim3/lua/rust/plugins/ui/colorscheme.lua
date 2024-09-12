return {
  "rebelot/kanagawa.nvim",

  config = function()
    local bg = "#011628"
    local bg_dark = "#011423"
    local bg_highlight = "#143652"
    local bg_search = "#0A64AC"
    local bg_visual = "#275378"
    local fg = "#CBE0F0"
    local fg_dark = "#B4D0E9"
    local fg_gutter = "#627E97"
    local border = "#547998"

    local cs = require("kanagawa") 
    require("kanagawa").load("wave")
    cs.setup {
      on_colors = function(colors)
        -- colors.bg_highlight = bg_highlight
        colors.bg_highlight = bg_search
      end,
    }

    vim.cmd("colorscheme kanagawa")
  end,
}
