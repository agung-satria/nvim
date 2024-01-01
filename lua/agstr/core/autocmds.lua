ToggleTerm = require("agstr.core.functions.toggleterm")

local function augroup(name)
	return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	group = augroup("highlight_yank"),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Resize splits if window got resized
vim.api.nvim_create_autocmd({ "VimResized" }, {
	group = augroup("resize_splits"),
	callback = function()
		local current_tab = vim.fn.tabpagenr()
		vim.cmd("tabdo wincmd =")
		vim.cmd("tabnext " .. current_tab)
	end,
})

-- Go to last loc when opening a buffer
vim.api.nvim_create_autocmd("BufReadPost", {
	group = augroup("last_loc"),
	callback = function(event)
		local exclude = { "gitcommit" }
		local buf = event.buf
		if vim.tbl_contains(exclude, vim.bo[buf].filetype) or vim.b[buf].lazyvim_last_loc then
			return
		end
		vim.b[buf].lazyvim_last_loc = true
		local mark = vim.api.nvim_buf_get_mark(buf, '"')
		local lcount = vim.api.nvim_buf_line_count(buf)
		if mark[1] > 0 and mark[1] <= lcount then
			pcall(vim.api.nvim_win_set_cursor, 0, mark)
		end
	end,
})

-- Auto create dir when saving a file, in case some intermediate directory does not exist
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	group = augroup("auto_create_dir"),
	callback = function(event)
		if event.match:match("^%w%w+://") then
			return
		end
		local file = vim.loop.fs_realpath(event.match) or event.match
		vim.fn.mkdir(vim.fn.fnamemodify(file, ":p:h"), "p")
	end,
})

-- -- Folds
-- vim.api.nvim_set_hl(0, "Folded", {fg="#eb6f92"})
--
-- -- Line numbers
-- vim.api.nvim_set_hl(0, "LineNr",      {fg="#f6c177"})
-- vim.api.nvim_set_hl(0, "ColorColumn", {bg="#3b4261"})
-- vim.api.nvim_set_hl(0, "LineNrAbove", {fg="#3b4261"})
-- vim.api.nvim_set_hl(0, "LineNrBelow", {fg="#3b4261"})
--
-- -- Telescope boarders
-- vim.api.nvim_set_hl(0, "TelescopeBorder",        { fg="#3b4261"})
-- vim.api.nvim_set_hl(0, "TelescopePromptBorder",  { fg="#3b4261"})
-- vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg="#3b4261"})
-- vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg="#3b4261"})
--
-- -- Lsp boarders
-- vim.api.nvim_set_hl(0, "LspInfoBorder",     { fg="#3b4261"})
-- vim.api.nvim_set_hl(0, "LspFloatWinBorder", { fg="#3b4261"})
--
-- -- Float boarder
-- vim.api.nvim_set_hl(0, "FloatBorder", { fg="#3b4261"})
--
-- -- Pmenu
-- vim.api.nvim_set_hl(0, "Pmenu", { blend=100 } )
-- vim.api.nvim_set_hl(0, "PmenuSel",      { fg="#e0af68", bg="#3b4261" } )
-- vim.api.nvim_set_hl(0, "PmenuKindSel",  { fg="#e0af68", bg="#3b4261" } )
-- vim.api.nvim_set_hl(0, "PmenuEstraSel", { fg="#e0af68", bg="#3b4261" } )
