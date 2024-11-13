return {
  require 'nvim-treesitter.configs'.setup {
    ensure_installed = {
      "lua",
      "python"
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false
    }
  }
}
