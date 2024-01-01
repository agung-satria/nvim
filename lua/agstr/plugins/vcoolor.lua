return   {
  "KabbAmine/vCoolor.vim",
  config = function ()
    vim.g.vcoolor_lowercase = 1
  end,
  keys = {
    { "<M-h>", "<cmd>VCoolor<cr>" }, -- hex
    { "<M-v>", "<cmd>VCoolIns h<cr>" }, -- hsl
    { "<M-w>", "<cmd>VCoolIns ra<cr>" }, -- rgba
  },
}
