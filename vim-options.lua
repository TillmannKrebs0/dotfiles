vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true


vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- vim.opt.colorcolumn = "80"
vim.opt.textwidth = 80
vim.opt.wrap = true       -- aktiviert Zeilenumbruch in der Anzeige
vim.opt.linebreak = true  -- bricht Zeilen an Wortgrenzen, nicht mitten im Wort

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- Yank ins Clipboard
vim.keymap.set("n", "<leader>y", '"+y', { noremap = true, silent = true })

-- Paste aus dem Clipboard
vim.keymap.set("n", "<leader>p", '"+p', { noremap = true, silent = true })

-- Optional auch für VISUAL mode (markierten Text ins Clipboard yank/paste)
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true })
vim.keymap.set("v", "<leader>p", '"+p', { noremap = true, silent = true })

-- latex compile
vim.opt.makeprg = "pdflatex -interaction=nonstopmode %"
vim.keymap.set("n", "<leader>c", ":make<CR>", { noremap = true, silent = true })

