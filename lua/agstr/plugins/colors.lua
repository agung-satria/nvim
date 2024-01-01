return {
	"rose-pine/neovim",
	enabled = true,
	name = "rose-pine",
	lazy = false,
	priority = 1000,
	opts = function(_, opts)
		opts.dim_nc_background = false
		opts.disable_background = true
		opts.disable_float_background = true
	end,
	config = function(_, opts)
		require("rose-pine").setup(opts)
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.cmd("colorscheme rose-pine")
	end,
}
