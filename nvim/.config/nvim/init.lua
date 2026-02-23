vim.opt.termguicolors = true

vim.opt.clipboard:append("unnamedplus")

-- reset search on Esc (after '#' and '*' command)
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
