return {
  "coffebar/neovim-project",
  config = function()
    -- enable saving the state of plugins in the session
    vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
    -- setup neovim-project plugin
    require("neovim-project").setup {
      projects = { -- define project roots
        "~/development/*",
        "~/dotfiles/*",
      },
      picker = {
        type = "telescope", -- or "fzf-lua"
      }
    }
    vim.keymap.set("n", "<leader>sp", '<Cmd>NeovimProjectDiscover<CR>', {desc="[S]earch [P]rojects"})
    vim.keymap.set("n", "<leader>spr", '<Cmd>NeovimProjectHistory<CR>', {desc="[S]earch [P]rojects [R]ecents"})
  end,
  requires = {
    { "nvim-lua/plenary.nvim" },
    -- optional picker
    { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
  }
}
