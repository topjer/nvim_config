return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function ()
      require("toggleterm").setup()
    end
  },
  --[[ {
      local Terminal = require("toggleterm.termminal").Terminal
      local python = Terminal:new({cmd = "python"})

      function _python_toggle()
        python:toggle()
      end

      vim.keymap.set('n', '<leader>tu', '<cmd>lua _python_toggle<CR>')
  } ]]
}
