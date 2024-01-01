return {
	"stevearc/oil.nvim",
	config = function()
		require("oil").setup({
			default_file_explorer = true,
			columns = {
				"icon",
				"permissions",
				"size",
				"mtime",
			},
			skip_confirm_for_simple_edits = true,
			prompt_save_on_select_new_entry = true,
			keymaps = {
				["g?"] = "actions.show_help",
				["<cr>"] = "actions.select",
				["<bs>"] = "actions.parent",
				["<C-v>"] = "actions.select_vsplit",
				["<C-x>"] = "actions.select_split",
				["<C-t>"] = "actions.select_tab",
				["<C-p>"] = "actions.preview",
				["<C-R>"] = "actions.refresh",
				["<C-c>"] = "actions.close",
				["<leader>j"] = "actions.close",
				["<leader>q"] = "actions.close",
				["H"] = "actions.toggle_hidden",
				["gs"] = "actions.change_sort",
				["gx"] = "actions.open_external",
				["<C-h>"] = false,
				["<C-j>"] = false,
				["<C-k>"] = false,
				["<C-l>"] = false,
			},
			use_default_keymaps = true,
		})
		vim.keymap.set("n", "<leader>j", "<cmd>Oil<cr>")
	end,
}
