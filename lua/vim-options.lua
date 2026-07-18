---@diagnostic disable: undefined-global

-- =========================================================================
-- 1. GENERAL SETTINGS 
-- =========================================================================

-- Disable the banner at the top of the netrw file explorer for a cleaner look.
vim.g.netrw_banner = 0

-- =========================================================================
-- 2. TABS & INDENTATION
-- =========================================================================

-- Number of spaces that a <Tab> in the file counts for.
vim.opt.tabstop = 2

-- Number of spaces that a <Tab> counts for while performing editing operations.
vim.opt.softtabstop = 2

-- Number of spaces to use for each step of (auto)indent.
vim.opt.shiftwidth = 2

-- Use the appropriate number of spaces to insert a <Tab>.
vim.opt.expandtab = true

-- Enable smart autoindenting when starting a new line.
vim.opt.smartindent = true


-- =========================================================================
-- 3. USER INTERFACE & LINE NUMBERS
-- =========================================================================

-- Print the line number in front of each line.
vim.opt.nu = true

-- Show relative line numbers (great for quick movement like '5j' or '12k').
vim.opt.relativenumber = true

-- Disable text wrapping (long lines will not wrap to the next line).
vim.opt.wrap = false

-- Keep the global statusline always visible, even with multiple splits.
vim.opt.laststatus = 3

-- Hide the command-line at the bottom when not in use to save vertical space.
vim.opt.cmdheight = 0

-- Keep the cursor shape consistent (prevents unexpected cursor changes).
-- vim.opt.guicursor = ""

-- Minimum number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 8

-- Hide the vertical column indicator (set to "0" to disable it).
vim.opt.colorcolumn = "0"

-- Always show the sign column (prevents text jumping when Git/LSP icons appear).
vim.opt.signcolumn = "yes"


-- =========================================================================
-- 4. SEARCH & REPLACE
-- =========================================================================

-- Ignore case in search patterns.
vim.opt.ignorecase = true

-- Override 'ignorecase' if the search pattern contains upper case characters.
vim.opt.smartcase = true

-- Show substitute replacements in a split window in real-time as you type.
vim.opt.inccommand = "split"


-- =========================================================================
-- 5. WINDOW SPLITS
-- =========================================================================

-- Put the new window below the current one when splitting horizontally.
vim.opt.splitbelow = true

-- Put the new window to the right of the current one when splitting vertically.
vim.opt.splitright = true


-- =========================================================================
-- 6. FILE MANAGEMENT, UNDO & BACKUP
-- =========================================================================

-- Do not use a swapfile for the buffer (prevents "swapfile found" warnings).
vim.opt.swapfile = false

-- Do not make a backup before overwriting a file.
vim.opt.backup = false

-- Set the directory where undo history will be stored.
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"

-- Enable persistent undo (saves undo history even after closing Neovim).
vim.opt.undofile = true


-- =========================================================================
-- 7. SYSTEM INTEGRATION
-- =========================================================================

-- Sync Neovim's clipboard with your system clipboard (allows copying/pasting to other apps).
vim.opt.clipboard:append("unnamedplus")

-- Include '@' in the list of characters considered part of a file name.
vim.opt.isfname:append("@-@")


-- =========================================================================
-- 8. AUTOCOMMANDS
-- =========================================================================

-- Briefly highlight yanked (copied) text to give visual feedback.
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    callback = function ()
        vim.hl.on_yank()
    end,
})

vim.opt.termguicolors = true

vim.opt.completeopt = "menuone,noselect,nosort"
vim.opt.shortmess:append("c")
