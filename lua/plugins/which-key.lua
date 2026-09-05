return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  -- Voeg het hier toe als een keymap optie:
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
  opts = {},
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)

    wk.add({
      { "<leader>c", group = "Code acties (LSP)" },
      { "<leader>x", group = "Trouble (Errors)" },
      { "<leader>r", group = "Restart / Reload" },
    })
  end
}
