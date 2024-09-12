function Map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-- Editing: mode
Map("i", "jj", "<ESC>", { desc = "Exit INSERT mode" })

-- Editing: Text Editing
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Edition 3: Highlighting
Map("n", "<leader>h", ":nohlsearch<CR>")

-- Buffer operation
Map("i", "jjw", "<ESC>:w<CR>", { desc = "Exit INSERT mode and save buffer" })
Map("n", "<leader>w", ":w<CR>", { desc = "Save buffer" })

Map("n", "<TAB>", "<cmd>bn<CR>", { desc = "Buffer: next"})
Map("n", "<S-TAB>", "<cmd>bp<CR>", { desc = "Buffer: prev"})

-- Window operation
-- 1. Movement (plugin "vim-tmux-navigator" will do following for us
-- Map("n", "<C-h>", "<C-w><C-h>", { desc = "Window: focus left" })
-- Map("n", "<C-l>", "<C-w><C-l>", { desc = "Window: focus right" })
-- Map("n", "<C-j>", "<C-w><C-j>", { desc = "Window: focus top" })
-- Map("n", "<C-k>", "<C-w><C-k>", { desc = "Window: focus bottom" })

-- 2. resizing
Map("n", "<leader>ww", "<C-w>5>", { desc = "Window width reduing"})
Map("n", "<leader>wn", "<C-w>5<", { desc = "Window width increasing"})
Map("n", "<leader>wt", "<C-w>+", { desc = "Window taller" })
Map("n", "<leader>ws", "<C-w>+", { desc = "Window height decreasing"})

Map("n", "<M-,>", "<C-w>5>", { desc = "Window width reduing"})
Map("n", "<M-.>", "<C-w>5<", { desc = "Window width reduing"})

-- 3. Split
Map("n", "<leader>wsh", "<C-w><C-s>", { desc = "Window: split horizonal" })
Map("n", "<leader>wsv", "<C-w><C-v>", { desc = "Window: split vertically" })
Map("n", "<leader>wq", "<C-w><C-q>", { desc = "Window: quit current" })
