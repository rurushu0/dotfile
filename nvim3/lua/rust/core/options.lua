-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

-- Line setting
opt.number = true
opt.relativenumber = true

-- Cursor line
opt.cursorline = true

-- Tab/Indentation/Backspace
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.backspace = "2"

-- Clipboard: use system clipboard as default register
opt.clipboard:append "unnamedplus"

-- Window operation setting
opt.splitright = true
opt.splitbelow = true

