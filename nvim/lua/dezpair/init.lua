require("dezpair.remap")
require'lspconfig'.pyright.setup{}
require("lualine").setup()
vim.cmd('colorscheme base16-mountain')
vim.opt.termguicolors = true
vim.cmd("highlight WinSeparator guifg=#4c4c4c")
vim.api.nvim_set_hl(0, 'LineNr', { fg = "#4c4c4c"} )
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.smartindent = true
vim.opt.scrolloff = 8
require'colorizer'.setup()
