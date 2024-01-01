vim.opt.number = true
vim.opt.relativenumber = false

vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_winsize = 20

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- vim.opt.fillchars = {eob = ' '}
vim.opt.fillchars = {
	-- fold = "⸱",
	fold = " ",
	foldopen = "",
	foldclose = "",
	foldsep = " ",
	diff = "╱",
	eob = " ",
}

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = false

vim.opt.termguicolors = true

vim.opt.confirm = true

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 16
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.cmdheight = 1

vim.opt.cursorline = true

-- vim.opt.timeoutlen = 300
vim.opt.updatetime = 50

vim.opt.hidden = true
