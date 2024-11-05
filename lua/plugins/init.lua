return {
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'tokyonight-night'
    end
  },
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  },
  {
    'numToStr/Comment.nvim',
    opts = {}
  },
  {
    'folke/which-key.nvim',
    event = 'VimEnter',
    config = function()
      require('which-key').setup()

    require('which-key').register {
       ['<leader>s'] = {name = '[S]earch', _ = 'which_key_ignore'},
       -- ['<leader>c'] = {name = '[C]ode', _ = 'which_key_ignore'},
      }
    end,
  }
}
