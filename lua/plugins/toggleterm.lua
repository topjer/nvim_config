return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function ()
      require("toggleterm").setup()
      local Terminal = require("toggleterm.terminal").Terminal
      local python = Terminal:new({cmd = "python", direction="float", id = 2, display_name = "python"})
      local standard = Terminal:new({ direction="float", id = 1, display_name = "standard"})

      local function _python_toggle()
        python:toggle()
      end

      local function _standard_toggle()
        standard:toggle()
      end

      local function _advent_of_code_run_solution()
        local path = vim.fn.expand("%")
        local current_dir = vim.fs.dirname(path) .. '/'
        _standard_toggle()
        vim.cmd('TermExec direction=float cmd="cd '.. current_dir .. ' && python solution.py"')
      end

      local function _advent_of_code_run_pytest()
        local path = vim.fn.expand("%")
        local current_dir = vim.fs.dirname(path) .. '/'
        _standard_toggle()
        vim.cmd('TermExec direction=float cmd="cd '.. current_dir .. ' && pytest -s solution.py"')
      end

      vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm direction=float<CR>', { desc = '[T]oggle [T]erminal' })
      vim.keymap.set('n', '<leader>tp', _python_toggle, { desc = '[T]erminal [P]ython' })
      vim.keymap.set('n', '<leader>to', _standard_toggle, { desc = '[T]erminal [O]pen' })
      vim.keymap.set('n', '<leader>tl', '<cmd>TermExec cmd="cd %:h"<CR>', { desc = '[T]erminal [L]ocal' })
      vim.keymap.set('n', '<leader>ts', '<cmd>TermSelect<CR>', { desc = '[T]erminal [S]elect' })
      vim.keymap.set('n', '<leader>tas', _advent_of_code_run_solution, { desc = '[T]erminal [A]dvent of Code run [S]olution' })
      vim.keymap.set('n', '<leader>tap', _advent_of_code_run_pytest, { desc = '[T]erminal [A]dvent of Code run [P]ytest' })

    end
  }
}
