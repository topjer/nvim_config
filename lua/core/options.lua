-- activate line numbers
vim.opt.number = true
--relative line numbers
vim.opt.relativenumber = true
-- sync clipboard with system clipboard
vim.opt.clipboard = 'unnamedplus'

-- highlight certain charaters
vim.opt.list = true
vim.opt.listchars = { trail = '_'}

vim.opt.inccommand = 'split'

-- underline cursorline
vim.opt.cursorline = true

-- highlight searches, abort when pressing escape
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- save with control s
vim.keymap.set('n', '<C-s>', '<cmd>w<CR>')

-- tab stuff
-- spaces instead of tabs
vim.opt.expandtab = true
-- width of tab character
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
-- whitespaces to add in normal mode
vim.opt.shiftwidth = 2

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',
  group = vim.api.nvim_create_augroup('highlight-yank', {clear = true}),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.opt.scrolloff = 10

-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlug = 1
