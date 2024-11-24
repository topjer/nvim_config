return {
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "lua",
        "luadoc",
        "vim",
        "vimdoc",
        "markdown",
        "python"
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        disable = "help"
      }
    }
}

