return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function ()
      require("toggleterm").setup()
      local Terminal = require("toggleterm.terminal").Terminal
      local python = Terminal:new({cmd = "python", direction="float"})
      local standard = Terminal:new({ direction="float"})

      function _python_toggle()
        python:toggle()
      end

      function _standard_toggle()
        standard:toggle()
      end

      vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm direction=float<CR>', { desc = '[T]oggle [T]erminal' })
      vim.keymap.set('n', '<leader>tp', '<cmd>lua _python_toggle()<CR>', { desc = '[T]erminal [P]ython' })
      vim.keymap.set('n', '<leader>to', '<cmd>lua _standard_toggle()<CR>', { desc = '[T]erminal [O]pen' })
      vim.keymap.set('n', '<leader>tl', '<cmd>TermExec cmd="cd %:h"<CR>', { desc = '[T]erminal [L]ocal' })
      vim.keymap.set('n', '<leader>ts', '<cmd>TermSelect<CR>', { desc = '[T]erminal [S]elect' })
    end
  }
}
