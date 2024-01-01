return {
  "mbbill/undotree",
  event = { "BufReadPost", "BufNewFile" },
  enabled = true,
  vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
}
