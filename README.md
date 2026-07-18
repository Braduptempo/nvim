# 🚀 Neovim Configuration

Welcome to my personal Neovim configuration. This setup is highly modular, built on top of **Lazy.nvim** as the package manager, and tailored for a fast, modern, and visually stunning development environment.

---

## 📂 Directory Structure

Here is how the configuration files are organized:

```text
nvim/
├── init.lua                 # The main entry point of the configuration
├── lazy-lock.json           # Automatically generated; locks plugin versions
├── .vscode/                 # Settings for when opening the folder in VS Code
└── lua/
    ├── keymaps.lua          # All custom shortcuts and keybindings
    ├── vim-options.lua      # Core Vim/Neovim options (tabs, line numbers, etc.)
    └── plugins/             # Individual plugin configuration files (modularly loaded by Lazy)
        ├── .luarc.json      # Configuration for the Lua Language Server
        ├── catpuccin.lua    # The color scheme / theme configuration
        ├── lsp-config.lua   # Code intelligence, autocompletion, and diagnostics (LSP)
        ├── lualine.lua      # The informative statusline at the bottom
        ├── mini-cmdline.lua # A minimalist command-line UI replacement
        ├── mini-nvim.lua    # Various small, powerful utility modules
        ├── neotree.lua      # The file tree explorer sidebar
        ├── nvim-notify.lua  # Beautiful pop-up notification manager
        ├── snacks-picker.lua# A modern, ultra-fast fuzzy finder (part of snacks.nvim)
        ├── telescope.lua    # The classic, feature-rich fuzzy finder ecosystem
        ├── treesitter.lua   # Advanced syntax highlighting and abstract syntax tree parsing
        ├── undotree.lua     # Visual undo history visualizer and time travel tool
        └── vim-fugitive.lua # The gold standard Git integration for Vim
```

---

## 🎛️ Core Configurations

*   **`init.lua`**: The central nervous system of your setup. It executes first and coordinates loading your options, keymaps, and bootstrapping the `lazy.nvim` plugin manager.
*   **`lua/vim-options.lua`**: Houses global Neovim behaviors and variables. Includes preferences like `vim.opt.number` (line numbers), indentation width, clipboard sharing, and window split directions.
*   **`lua/keymaps.lua`**: The single source of truth for your custom shortcuts. If you ever forget how to trigger a command, this is the map to read.

---

## 🔌 Plugins Overview

Plugins are isolated inside the `lua/plugins/` directory. Each file focuses on configuring one ecosystem:

| Configuration File | Plugin | Purpose / Features |
| :--- | :--- | :--- |
| **`catpuccin.lua`** | Catppuccin | A modern, soothing, and community-favorite color theme. |
| **`treesitter.lua`** | nvim-treesitter | Provides advanced structural syntax highlighting. It compiles native language parsers to understand functions, variables, and scopes accurately. |
| **`lsp-config.lua`** | nvim-lspconfig | Manages your Language Server Protocols. Enables *Go to Definition*, hover documentation, auto-imports, and live error underlines. |
| **`neotree.lua`** | neo-tree.nvim | A sleek sidebar to browse project structures, manage files, and toggle directory visibility. |
| **`telescope.lua`** | telescope.nvim | The classic fuzzy finder framework. Lets you instantly find files (`<leader>ff`), search live text via ripgrep (`<leader>fg`), or search through help tags (`<leader>fh`). |
| **`snacks-picker.lua`**| snacks.nvim (picker) | A modern, lightweight, high-performance alternative to traditional fuzzy finders. |
| **`lualine.lua`** | lualine.nvim | Replaces the legacy statusbar with an animated, informative pane detailing your current Vim mode, Git branch, linting status, and file encoding. |
| **`nvim-notify.lua`** | nvim-notify | Replaces plain-text bottom prompt messages with animated, stacked toast notifications in the corner of your screen. |
| **`undotree.lua`** | undotree | Visualizes your undo history as a branch diagram. Allows you to recover code even if you undid changes, typed something new, and lost standard history. |
| **`vim-fugitive.lua`** | vim-fugitive | The definitive wrapper for Git. Run things like `:G blame`, `:G diffsplit`, and perform staging or commits natively without exiting your session. |
| **`mini-cmdline.lua`** <br> & **`mini-nvim.lua`**| mini.nvim | Part of the utility suite. Standardizes your colon command inputs (`:`) into clean floating interfaces and injects general-purpose quality-of-life micro-plugins. |

---

## 🛠️ Maintenance & Useful Commands

If you return to this configuration after a long time and want to update your ecosystem, use these built-in dashboard commands:

*   `:Lazy` - Opens the core package manager graphical interface.
*   `:Lazy sync` - Installs missing components, prunes old ones, and updates all active plugins.
*   `:TSUpdate` - Force-updates all installed Treesitter language syntax parsers to ensure compatibility with your current Neovim version.
