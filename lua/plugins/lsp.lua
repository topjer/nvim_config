return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local nvim_lsp = require("lspconfig")

    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    require("lspconfig").pyright.setup {
      capabilities = capabilities
    }
  end,
}
