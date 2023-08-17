local colors = {
  blue   = '#9ec3c4',
  cyan   = '#9ec49f',
  black  = '#0f0f0f',
  white  = '#f0f0f0',
  red    = '#8f8aac',
  violet = '#a39ec4',
  grey   = '#0f0f0f',
}



local diagnostics = {
 "diagnostics",

  separator = {
    left  = "",
    right = " ",
  },

  sources = { "nvim_diagnostic" },

  symbols = {
    warn  = " ",
    error = " ",
  },

  sections = {
    "error",
    "warn",
  },

  colored = false,
  always_visible = true,
  update_in_insert = false,
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.violet },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.red, bg = colors.black },
    x = { fg = colors.black, bg = colors.violet },
  },

  insert = { a = { fg = colors.black, bg = colors.blue } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}
  local function hello()
  return [[ネオビム]]
end
 local mode = {
  "mode",
  separator = {
    left  = "",
    right = "",
  } ,
  fmt = function(str)
    return "λ " .. str .. " "
  end,
}
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = bubbles_theme,
    component_separators = ' | ',
    section_separators = { left = ' ', right = ' '},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = true,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {mode},
    lualine_b = {'branch', 'diff'},
    lualine_c = {'filename',hello},
    lualine_x = {diagnostics},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
