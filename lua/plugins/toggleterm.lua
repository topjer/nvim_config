return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function ()
      require("toggleterm").setup()
      local Terminal = require("toggleterm.terminal").Terminal
      local python = Terminal:new({cmd = "python", direction="float"})

      function _python_toggle()
        python:toggle()
      end

      vim.keymap.set('n', '<leader>tp', '<cmd>lua _python_toggle()<CR>', { desc = '[T]erminal [P]ython' })
    end
  }
}
