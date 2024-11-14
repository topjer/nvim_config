return {
  {
    'echasnovski/mini.surround',
    version = '*',
    config = function()
      require('mini.surround').setup()
    end
  },
  {
    'echasnovski/mini.pairs',
    version = '*',
    config = function()
      require('mini.pairs').setup()
    end
  },
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
    opts = {
      spec = {
        { '<leader>s', group = '[S]earch'},
        { '<leader>c', group = '[C]ode', mode = { 'n', 'x' } },
        { '<leader>d', group = '[D]ocument' },
        { '<leader>r', group = '[R]ename' },
        { '<leader>w', group = '[W]orkspace' },
        { '<leader>t', group = '[T]erminal' },
        { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
      }
    },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      require("ibl").setup()
    end
  },
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function ()
      require("bufferline").setup()
    end
  }
}
