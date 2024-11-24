return {
  -- Currently WiP
  'HallerPatrick/py_lsp.nvim',
  config = function ()
    require('py_lsp').setup {
      host_python = '/home/topjer/development/nvim_python/.venv/bin/python',
      default_venv_name = ".venv",
    }
  end
}
