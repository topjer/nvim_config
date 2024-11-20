return {
  {
    'folke/which-key.nvim',
    event = 'VimEnter',
    opts = {
      spec = {
        { '<leader>s', group = '[S]earch'},
        { '<leader>c', group = '[C]ode', mode = { 'n', 'x' } },
        { '<leader>d', group = '[D]ocument' },
        { '<leader>r', group = '[R]ename' },
        { '<leader>w', group = '[W]orkspace' },
        { '<leader>t', group = '[T]erminal' },
        { '<leader>ta', group = '[T]erminal [A]dvent of Code' },
        { '<leader>g', group = '[G]it' },
      }
    },
  }
}
