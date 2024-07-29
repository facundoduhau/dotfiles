-- Numbering
  vim.cmd("set number")
  -- vim.cmd("set relativenumber")

-- Leader key, and netrw file
  vim.g.mapleader = ' '
  vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Tabs
  vim.cmd("set expandtab")
  vim.cmd("set tabstop=2")
  vim.cmd("set softtabstop=2")
  vim.cmd("set shiftwidth=2")

-- Folding
  vim.cmd("set foldmethod=manual")
  vim.cmd("set foldcolumn=1")

