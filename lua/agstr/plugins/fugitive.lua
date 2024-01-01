return {
  "tpope/vim-fugitive",
  enabled = true,
  cmd = "G",
  keys = {
    { "<leader>gs", "<cmd>G<cr>", desc = "Git fugitive" },
    { "<leader>gP", "<cmd>G pull<cr>", desc = "Git pull" },
    { "<leader>gc", "<cmd>G commit<cr>", desc = "Git commit" },
    { "<leader>gd", "<cmd>G diff<cr>", desc = "Git diff" },
    { "<leader>gl", "<cmd>G log<cr>", desc = "Git log" },
    { "<leader>gh", "<cmd>vert bo help fugitive<cr>", desc = "Git help" },
    { "<leader>gp", "<cmd>G push<cr>", desc = "Git push" },
    { "gh", "<cmd>diffget //2<cr>" }, -- Chose left side,
    { "gl", "<cmd>diffget //3<cr>" }, -- Chose right size
  },
}
