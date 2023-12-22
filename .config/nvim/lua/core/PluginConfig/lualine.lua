local filenm = {
  'filename',
  file_status = true,
  newile_status = true,
  path = 1
}

local function inactivedispaly()
  return [[inactive]]
end

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'pywal',
  },
  sections = {
    lualine_a = { filenm },
    lualine_b = { 'branch' },
    lualine_c = { 'diff' },
    lualine_x = { 
      {
        'fileformat',
        symbols = { unix = 'unix', mac = 'mac', dos = 'dos' }
      },
      'filetype'
    },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = { filenm },
    lualine_c = {},
    lualine_x = {},
    lualine_y = { inactivedispaly },
    lualine_z = { 'location' }
  },
  tabline = {
    lualine_a = {
      { 
        'buffers',
        hide_filename_extension = true,
        show_modified_status = false,
        use_mode_colors = true,
      },
    },
    lualine_x = {},
    lualine_y = { 
      {
        'datetime',
        style = '%H:%M',
      }
    },
    lualine_z = {'tabs'}
  }
}
