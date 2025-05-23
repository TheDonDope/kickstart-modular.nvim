-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- You can uncomment the following lines if you do not use nvim-tree and instead use netrw
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- Keep block as gui cursor in all modes
vim.opt.guicursor = ''

-- Make line numbers default
vim.o.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
-- vim.opt.relativenumber = true
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.o.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

vim.opt.breakindent = true
vim.opt.smartindent = true

-- Save undo history
vim.opt.undofile = true
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
-- vim.opt.updatetime = 250
vim.o.updatetime = 50

-- Decrease mapped sequence wait time
-- vim.opt.timeoutlen = 300
vim.o.timeoutlen = 100

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
--
--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   See `:help lua-options`
--   and `:help lua-options-guide`
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 8

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`

-- vim.o.confirm = true

-- No line wrapping
vim.opt.wrap = false

-- Configure backups
vim.opt.swapfile = false
vim.opt.backup = false

-- Configure search options
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Enable 24-bit RGB color in the tui
vim.opt.termguicolors = true

-- Include file names in search which have an @ sign in their name
vim.opt.isfname:append '@-@'

-- Draw a optical vertical ruler at column 80
vim.opt.colorcolumn = '80'

-- vim: ts=2 sts=2 sw=2 et
