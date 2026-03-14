vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number relativenumber")
vim.g.mapleader = " "
vim.g.background = "light"
vim.opt.background = "light"

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Remap redo
 vim.keymap.set('n', '<y>', '<C-r>')

-- Fix Shift-Tab für backwards indentation
-- vim.keymap.set('i', '<S-Tab>', '<C-d>', { noremap = true, silent = true })

-- Additional indentation Keymap
vim.keymap.set('i', '<C-l>', '<C-t>', {noremap = true, silent = true})

vim.wo.number = true

-- Use system clipboard
vim.opt.clipboard = "unnamedplus"
