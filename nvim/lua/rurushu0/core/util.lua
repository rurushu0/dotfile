local set = vim.opt_local

-- set local setting for terminal
vim.api.nvim_create_autocmd("TermOpen", {
  group = vim.api.nvim_create_augroup("custom-term-open", {}),
  callback = function()
    set.number = false
    set.relative_number = false
    set.scrolloff = 0
  end,
})

vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")

vim.keymap.set("n", "<leader>st", function()
  vim.cmd.new()
  vim.cmd.wincmd "J"
  vim.api.nvim_win_set_height(0, 12)
  vim.wo.winfixheight = true
  vim.cmd.term()
end)
