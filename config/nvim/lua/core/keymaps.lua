vim.api.nvim_set_option("clipboard", "unnamed")
vim.g.mapleader = ' ' 
vim.g.maplocalleader = ' '
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.cursorline = true
vim.opt.autoread = true
--vim.cmd 'colorscheme embark'
vim.cmd 'set relativenumber'

vim.opt.tabstop = 2

vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set({'n', 'v'}, 'gj', 'G')
vim.keymap.set({'n', 'v'}, 'gk', 'gg')
vim.keymap.set({'n', 'v'}, 'gl', '$')
vim.keymap.set({'n', 'v'}, 'gh', '0')
vim.keymap.set('n', 'ca', 'ggVG"+y')
vim.keymap.set('n', 'rn', ':w<CR>:!g++ % -o a.out && ./a.out && rm a.out<CR>')
