--require('lualine').setup {
  --options = {
    --icons_enabled = true,
    --theme = 'powerline_dark',
    --sections = {
      --lualine_a = {'mode'},
      --lualine_b = {'branch', 'diff', 'diagnostics'},
      --lualine_c = {'filename'},
      --lualine_x = {'encoding', 'fileformat', 'filetype'},
      --lualine_y = {'progress'},
      --lualine_z = {'location'}
    --},
  --}
--}

--require("nvim-tree").setup {
  --open_on_setup = true,
--}

require('bufferline').setup {
  options = {
    diagnostics = "coc",
    diagnostics_update_in_insert = true,
    diagnostics_indicator = function(count,level,diagnostics_dict,context)
      return "("..count..")"
    end,
    offsets = {
      {
        filetype = "NvimTree", text = "File Explorer", text_align = "center",
      }
    },
    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    color_icons = true,
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_buffer_default_icons = true,
    show_close_icon = true,
    show_tab_indicators = true,
    separator_style = "slant",
    always_show_bufferline = true,
  }
}

--require("startup").setup({theme = "startify"})
require('pretty-fold').setup()
--require('feline').setup()
