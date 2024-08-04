function Map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-- Editing
Map("i", "jj", "<ESC>", { desc = "Exit INSERT mode" })
Map("i", "jjw", "<ESC>:w<CR>", { desc = "Exit INSERT mode and save buffer" })

-- Buffer Management
Map("n", "<leader>w", "<cmd>bp|bd #<CR>", { desc = "Close Buffer; Retain Split" })

-- Tab
Map("n", "<TAB>", ":bn<CR>")
Map("n", "<S-TAB>", ":bp<CR>")
Map("n", "<leader>bd", ":bd<CR>") -- from Doom Emacs

-- Windows Resizing
Map("n", "<M-,>", "<C-w>5<")
Map("n", "<M-.>", "<C-w>5>")
Map("n", "<M-t>", "<C-W>+")
Map("n", "<M-s>", "<C-W>-")

-- Windows movement
-- Map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- Map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- Map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- Map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
--

-- Text Editing
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

Map("v", "<", "<gv")
Map("v", ">", ">gv")

Map("n", "<leader>h", ":nohlsearch<CR>")
-- Map("n", "<leader>w", ":w<CR>", { desc = "[S]ave current buffer"})
