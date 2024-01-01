return {
  "akinsho/toggleterm.nvim",
  enabled = true,
  version = "*",
  opts = {
    size = 8,
    open_mapping = [[<c-\>]],
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = "1",
    start_in_insert = true,
    persist_size = true,
    direction = "horizontal",
  },
  keys = {
    { "<leader>Tt", "<cmd>lua ToggleTerm.term()<cr>" },
    { "<leader>Tn", "<cmd>lua ToggleTerm.node()<cr>" },
    { "<leader>Tp", "<cmd>lua ToggleTerm.python()<cr>" },
    { "<leader>Tf", "<cmd>lua ToggleTerm.lf()<cr>" },
    { "<leader>Tg", "<cmd>lua ToggleTerm.gotop()<cr>" },
  },
}
