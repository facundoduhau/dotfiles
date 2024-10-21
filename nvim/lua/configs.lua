-- Numbering
  vim.cmd("set number")
  vim.cmd("set relativenumber")
  -- vim.o.statuscolumn = "%s %l %r"

  -- vim.cmd("set relativenumber")
  vim.cmd("set cursorline")
vim.cmd([[
  augroup CursorLineNr
    autocmd!
    autocmd ColorScheme * highlight CursorLineNr guifg=#cbd62f
  augroup END
]])

vim.cmd([[
  augroup CursorLine
    autocmd!
    autocmd ColorScheme * highlight CursorLine guibg=#303040
  augroup END
]])

vim.cmd([[
  augroup LineNr 
    autocmd!
    autocmd ColorScheme * highlight LineNr guifg= #4d4d4d
  augroup END
]])

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

