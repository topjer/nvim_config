return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  
  config = function()
    local nvim_lsp = require("lspconfig")
    print("hello from lsp setup")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    -- local capabilities = vim.lsp.protocol.make_client_capabilities()
    -- capabilities = vim.tbl_deep_extend('force', capabilities, require("cmp_nvim_lsp").default_capabilities())
    -- nvim_lsp.pyright.setup {
    --   capabilities = capabilities
    -- }
    nvim_lsp.lua_ls.setup {
      capabilities = capabilities,
      settings = {
        Lua = {
          completion = {
            callSnippet = 'Replace'
          },
          diagnostics = {
            globals = {'vim'}
          },
          workspace = {
            library = {
              [vim.fn.expand('$VIMRUNTIME/lua')] = true,
              [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
            }
          }

        }
      }
    }
  end,

}
