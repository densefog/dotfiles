-- global options
vim.opt.ttyfast = true
vim.opt.ignorecase = true
vim.opt.iskeyword:append("-")
vim.opt.scrolloff = 3
vim.opt.showmatch = true
vim.opt.smartcase = true
vim.opt.updatetime = 300
vim.opt.swapfile = false

vim.g.mapleader = ','
vim.g.maplocalleader = ','
vim.opt.wrap = false
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.mouse = ''
vim.opt.number = true
vim.opt.relativenumber = true

-- Use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.softtabstop = 2

vim.opt.clipboard = 'unnamedplus' -- yanks to osx clipboard
vim.opt.history = 1000            -- number of history items to remember

vim.keymap.set('n', '<leader>n', ':NvimTreeToggle<CR>')

-- Save and Reload sessions
vim.keymap.set('', '<F2>', ':mksession! ~/.vim_session <cr>') -- Quick write session with F2
vim.keymap.set('', '<F3>', ':source ~/.vim_session <cr>')     -- And load session with F3

-- Kill these keys I keep fat fingering during input
vim.keymap.set('i', '<S-F1>', '<Nop>')
vim.keymap.set('i', '<S-F2>', '<Nop>')
vim.keymap.set('i', '<S-F3>', '<Nop>')
vim.keymap.set('i', '<S-F4>', '<Nop>')
vim.keymap.set('i', '<S-F5>', '<Nop>')
vim.keymap.set('i', '<S-F6>', '<Nop>')
vim.keymap.set('i', '<S-F7>', '<Nop>')
vim.keymap.set('i', '<S-F8>', '<Nop>')
vim.keymap.set('i', '<S-F9>', '<Nop>')
vim.keymap.set('i', '<S-F10>', '<Nop>')
vim.keymap.set('i', '<S-F11>', '<Nop>')
vim.keymap.set('i', '<S-F12>', '<Nop>')

-- Adjust esc
vim.keymap.set('n', 'j', 'gj', { noremap = true })
vim.keymap.set('n', 'k', 'gk', { noremap = true })
vim.keymap.set('i', 'jj', '<ESC>', { noremap = true })
vim.keymap.set('i', 'jk', '<ESC>', { noremap = true })
vim.keymap.set('i', '<F1>', '<ESC>', { noremap = true })
vim.keymap.set('n', '<F1>', '<ESC>', { noremap = true })
vim.keymap.set('v', '<F1>', '<ESC>', { noremap = true })

-- window zoom
vim.keymap.set('n', '<c-w>[', ':wincmd _<cr><bar>:wincmd |<cr>', { noremap = true }) -- zoom in the active window
vim.keymap.set('n', '<c-w>]', ':wincmd =<cr>', { noremap = true })                   -- zoom out the currrent window

-- Map arrow keys to window resize
vim.keymap.set('n', '<left>', '<c-w><')
vim.keymap.set('n', '<right>', '<c-w>>')
vim.keymap.set('n', '<up>', '<c-w>+')
vim.keymap.set('n', '<down>', '<c-w>-')

-- This unsets the 'last search pattern' register by hitting return
vim.keymap.set('n', '<CR>', ':noh<CR><CR>', { noremap = true })

-- Dash
vim.keymap.set('n', '<leader>d', ':Dash<CR>', { noremap = true })


