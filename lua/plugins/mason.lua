return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim"
  },
  config = function()

    require("mason").setup()

    require("mason-lspconfig").setup({
      automatic_installation = true,
      ensure_installed = {
        "pyright",
        "lua_ls"
      }
    })

    require("lspconfig").lua_ls.setup {}

  end,
}
