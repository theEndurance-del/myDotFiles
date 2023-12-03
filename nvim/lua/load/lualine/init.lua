local components = require('load.lualine.components')

local help = {
    filetypes = { 'help' },
    sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'searchcount' },
    }
}

local config = {
    options = {
        section_separators   = { left = '', right = '' },
        component_separators = '',
    },
    sections = {
        lualine_a = { components.filename },
        lualine_b = { 'filetype', 'encoding', components.fileformat },
        lualine_c = { 'location', 'progress', components.diff },
        lualine_x = { 'aerial', 'diagnostics', components.lsp },
        lualine_y = { 'branch' },
        lualine_z = { components.window_number, 'mode' },
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },

    extensions = { help, 'nvim-tree', 'trouble' },
}

return {
    'nvim-lualin/lualine.nvim',
    opts = config,
}
