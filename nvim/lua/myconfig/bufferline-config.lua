vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        numbers = function(opts)
        return string.format('%s', opts.raise(opts.id))
        end,
        show_buffer_close_icons = false,
        separator_style = "thin",
        -- show_tab_indicators = false,
    }
}
