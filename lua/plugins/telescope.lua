return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    -- the require is part is needed in order to reference telescope
    local builtin = require 'telescope.builtin'
    vim.keymap.set('n', '<leader>sh', builtin.help_tags, {desc = '[S]earch [H]elp'})
    vim.keymap.set('n', '<leader>sk', builtin.keymaps, {desc = '[S]earch [K]eymaps'})
    vim.keymap.set('n', '<leader>sf', builtin.find_files, {desc = '[S]earch [F]iles'})
    vim.keymap.set('n', '<leader>ss', builtin.builtin, {desc = '[S]earch [S]elect Telescope'})
    vim.keymap.set('n', '<leader>sb', builtin.grep_string, {desc = '[S]earch current [B]uffer'})
    vim.keymap.set('n', '<leader>sg', builtin.live_grep, {desc = '[S]earch by [G]rep'})
  end,
}
