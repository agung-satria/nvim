return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  enabled = true,
  config = function(_, opts)
    require("harpoon").setup(opts)
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>a", mark.add_file)
    vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

    vim.keymap.set("n", "<C-m>", function() ui.nav_file(1) end)
    vim.keymap.set("n", "<C-b>", function() ui.nav_file(2) end)
    vim.keymap.set("n", "<C-g>", function() ui.nav_file(3) end)
    vim.keymap.set("n", "<C-t>", function() ui.nav_file(4) end)
  end,
}
