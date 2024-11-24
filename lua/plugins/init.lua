return {
  { "hrsh7th/cmp-nvim-lsp" },
  { "Shatur/neovim-session-manager" },
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
    'nvim-treesitter/nvim-treesitter',
    event = {"BufReadPre", "BufNewFile"},
    build = ':TSUpdate',
  },
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'tokyonight-night'
    end
  },
  {
    'numToStr/Comment.nvim',
    opts = {}
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
