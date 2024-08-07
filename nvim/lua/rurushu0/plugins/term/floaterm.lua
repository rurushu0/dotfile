return {
  "voldikss/vim-floaterm",
  config = function()
    vim.keymap.set("n", "<leader>ftn", ":FloatermNew<CR>")
    vim.keymap.set("n", "<leader>ftt", ":FloatermToggle<CR>")
    vim.keymap.set("n", "<leader>ftp", ":FloatermPrev<CR>")
  end,
}
