return {
  "folke/zen-mode.nvim",
  enabled = true,
  keys = {
    { "<leader>oz", [[<cmd>lua require("zen-mode").toggle()<cr>]], desc ="Zen mode" },
  },
  opts = {
    window = {
      width = 0.65,
      height = 0.85,
      options = {
        number = true,
        relativenumber = false,
        cursorline = false,
        cursorcolumn = false,
        colorcolumn = "",
      },
    },
    event = { "BufEnter *.rb" },
    plugins = {
      enabled = true,
      options = {
        ruler = false,
        showcmd = false,
        laststatus = 0,
      },
      twilight = { enabled = false },
      gitsigns = { enabled = false },
      tmux = { enabled = true },
    },
  },
}
