local set = vim.opt

--vim.g.gruvbox_material_background='hard' -- other options: 'medium', 'soft'
--vim.g.gruvbox_material_better_performance=1
-- vim.g.gruvbox_material_diagnostic_text_highlight=1
-- vim.g.gruvbox_material_diagnostic_line_highlight=1

-- require('catppuccin').setup({
--     flavour = "macchiato", latte, frappe, macchiato, mocha
--     transparent_background = true
-- })

require('rose-pine').setup({
    dark_variant = 'main', -- 'main'|'moon'|'dawn'
    disable_background = true,
	disable_italics = true,
})
vim.cmd "colorscheme rose-pine"
vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]

set.number = true
set.relativenumber = true
set.scrolloff = 8
set.encoding = 'utf-8'
set.swapfile = false

set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.autoindent = true
set.smarttab = true
set.cindent = true
set.autoindent = true
set.fileformat = 'unix'
set.foldenable = false

-- Makes neovim and host OS clipboard play nicely with each other
set.clipboard = "unnamedplus"

-- Remember 50 items in commandline history
set.history = 50

-- Better buffer splitting
set.splitright = true
set.splitbelow = true

vim.g.NERDCreateDefaultMappings = 1
vim.g.NERDTreeQuitOnOpen = 1
vim.g.NERDTreeMinimalUI = 1

-- NERDCommenter settings

-- Create default mappings
vim.g.NERDCreateDefaultMappings = 1

-- Add spaces after comment delimiters by default
vim.g.NERDSpaceDelims = 1

-- Use compact syntax for prettified multi-line comments
vim.g.NERDCompactSexyComs = 1

-- Align line-wise comment delimiters flush left instead of following code indentation
vim.g.NERDDefaultAlign = 'left'

-- Set a language to use its alternate delimiters by default
vim.g.NERDAltDelims_java = 1

-- Add your own custom formats or override the defaults
-- vim.g.NERDCustomDelimiters ={ 'c': { 'left': '/**','right': '*/' } }

-- Allow commenting and inverting empty lines (useful when commenting a region)
vim.g.NERDCommentEmptyLines = 1

-- Enable trimming of trailing whitespace when uncommenting
vim.g.NERDTrimTrailingWhitespace = 1

-- Enable NERDCommenterToggle to check all selected lines is commented or not
vim.g.NERDToggleCheckAllLines = 1
-- NERDCommenter settings end
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
-- vim.opt.termguicolors = true
