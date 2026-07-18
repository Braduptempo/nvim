return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = vim.tbl_deep_extend("force", capabilities, require('mini.completion').get_lsp_capabilities())

      vim.lsp.config('lua_ls', {
        settings = {
          Lua = {
            diagnostics = {globals = {'vim'} },
          },
        },
      })
      
      vim.lsp.enable({
        'lua_ls'
      })

      vim.keymap.set('n' , 'K' , vim.lsp.buf.hover, {})
      vim.keymap.set('n' , 'gd' , vim.lsp.buf.definition, opts, {desc = "Go to definition"})
      vim.keymap.set({'n' , 'v'}, '<leader>ca' , vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, opts, {desc = "Format Local buffer"})
    end
  }
}
