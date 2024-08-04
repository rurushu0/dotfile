vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

-- line number
opt.number = true
opt.relativenumber = true

-- Cursor line
opt.cursorline = true

-- tab & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- search settings
opt.hlsearch = true

-- term gui colors
opt.termguicolors = true

-- backspace
opt.backspace = "2"

-- clipboard
opt.clipboard:append "unnamedplus" -- use system clipboard as default register

opt.showcmd = true
opt.laststatus = 2

opt.autoread = true
opt.autowrite = true

-- split windows
opt.splitright = true
opt.splitbelow = true
