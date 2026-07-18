return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",

  main = "nvim-treesitter.configs",
  opts = {
    -- 1. De talen die je geïnstalleerd wilt hebben
    ensure_installed = {
      "bash",
      "c",
      "diff",
      "html",
      "javascript",
      "jsdoc",
      "json",
      "jsonc",
      "lua",
      "luadoc",
      "luap",
      "markdown",
      "markdown_inline",
      "printf",
      "python",
      "query",
      "regex",
      "toml",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "xml",
      "yaml",
    },

    -- 2. Syntax highlighting inschakelen
    highlight = { enable = true, },

    -- 3. Slimme inspringing inschakelen op basis van Treesitter
    indent = { enable = true,},
  },

  config = function (_, opts)
    require('nvim-treesitter').setup(opts)
  end

  

  -- We zetten alle instellingen in 'opts'. 
  -- Lazy.nvim voert op de achtergrond automatisch de setup() uit met deze tabel.
  
}