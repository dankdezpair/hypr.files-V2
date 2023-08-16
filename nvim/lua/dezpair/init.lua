require("dezpair.remap")
require("lualine").setup()
require'lspconfig'.pyright.setup{}
vim.cmd('colorscheme base16-mountain')
vim.api.nvim_set_hl(0, 'LineNr', { fg = "#4c4c4c"} )
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.smartindent = true
vim.opt.scrolloff = 8
require'colorizer'.setup()
