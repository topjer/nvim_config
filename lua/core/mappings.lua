vim.g.mapleader = " "
--vim.keymap.set("n", "-", vim.cmd.Ex)
vim.keymap.set("n", "<leader>d", '<Cmd>Neotree focus toggle right<CR>', {desc="Open File Explorer"})


-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

--vim.keymap.set('n', '<leader>w', '<C-w>', { desc = "Open [w]indow options"})
