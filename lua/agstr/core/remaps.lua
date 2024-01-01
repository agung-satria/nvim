vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("i", "jk", "<esc>l")
vim.keymap.set("i", "<C-c>", "<esc>l")

vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>")

vim.keymap.set("n", "<leader>cl", "<cmd>Lazy<cr>")
vim.keymap.set("n", "<leader>cm", "<cmd>Mason<cr>")

vim.keymap.set('n', '<leader>i', [[:lua vim.o.ignorecase = not vim.o.ignorecase if vim.o.ignorecase then print("Ignorecase") else print("No ignorecase") end<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>hh', [[:lua vim.o.hlsearch = not vim.o.hlsearch if vim.o.hlsearch then print("Hlsearch") else print("No hlsearch") end<CR>]], { noremap = true, silent = true })

vim.keymap.set("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- word under cursor
vim.keymap.set("n", "<leader>sl", ":%s//g<Left><Left>") -- all line
vim.keymap.set("n", "<leader>sc", ":s//g<Left><Left>") -- current line

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>X", "<cmd>!chmod +x %<cr>")

vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>")
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>")
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>")
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>")

vim.keymap.set("n", "<TAB>", "<cmd>b#<cr>")
vim.keymap.set("n", "<S-h>", "<cmd>bprev<cr>")
vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>")
vim.keymap.set("n", "[b", "<cmd>bprev<cr>")
vim.keymap.set("n", "]b", "<cmd>bnext<cr>")
vim.keymap.set("n", "<A-,>", "<cmd>bprev<cr>")
vim.keymap.set("n", "<A-.>", "<cmd>bnext<cr>")
vim.keymap.set("n", "<leader>x", "<cmd>bdelete<cr>")

vim.keymap.set({ "n", "v" }, "j", "gj")
vim.keymap.set({ "n", "v" }, "k", "gk")

vim.keymap.set({ "n", "v" }, "<M-j>", "<C-f>")
vim.keymap.set({ "n", "v" }, "<M-k>", "<C-b>")

vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")
vim.keymap.set("n", "<M-Down>", ":m .+1<cr>==")
vim.keymap.set("n", "<M-Up>", ":m .-2<cr>==")
vim.keymap.set("v", "<M-Down>", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "<M-Up>", ":m '<-2<cr>gv=gv")

vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>")
vim.keymap.set("n", "<leader>w", "<cmd>w<cr><esc>")
vim.keymap.set("n", "<leader>q", "<cmd>q<cr><esc>")
vim.keymap.set("n", "<leader>;", ":")
vim.keymap.set("n", "<Q>", "@q") -- quick run macro registered in q with Q

vim.keymap.set("n", "<leader>tn", "<cmd>set nu! <cr>")
vim.keymap.set("n", "<leader>tr", "<cmd>set rnu! <cr>")

vim.keymap.set({"n", "v"}, "<M-z>", "<cmd>set wrap!<cr>")
vim.keymap.set("i", "<M-z>", "<esc><cmd>set wrap!<cr>li")

vim.keymap.set("n", "<leader>+", "<C-a>")
vim.keymap.set("n", "<leader>-", "<C-x>")

vim.keymap.set("n", "+", "<S-v>=") -- indent current line

-- vim.keymap.set("n", "<leader>sp", ":let @+ = expand('%:p')<cr>") -- copy full path
vim.keymap.set('n', '<leader>sp', [[:lua vim.cmd(':let @+ = expand("%:p")') print("File path copied to clipboard: " .. vim.fn.expand("%:p"))<CR>]], { noremap = true, silent = true })

vim.keymap.set("n", "<leader>sa", "mjgg<S-v>G")

vim.keymap.set("n", "<leader>sq", ":$put =range(0,10)<left><left><left><left>") -- put sequence number

vim.keymap.set("n", "=", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

vim.keymap.set({ "n", "v" }, "<C-c>", [["+y]])
vim.keymap.set({ "n", "v" }, "<C-x>", [["+x]])

vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<cr>") -- close current split window

vim.keymap.set("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })
vim.keymap.set("n", "<leader>oo", ":edit ")
vim.keymap.set("n", "<leader>oh", ":split ")
vim.keymap.set("n", "<leader>ov", ":vsplit ")

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<cr>") -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<cr>") -- close current tab
vim.keymap.set("n", "]t", "<cmd>tabn<cr>") --  go to next tab
vim.keymap.set("n", "[t", "<cmd>tabp<cr>") --  go to previous tab
vim.keymap.set("n", "<leader>tm", "<cmd>tabnew %<cr>") --  move current buffer to new tab

vim.keymap.set({ "n", "v" }, "<leader>R", function()
  vim.cmd("so")
end)
