vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- paste but don't replace the paste buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- copy to global clipboard; enables ctrl + v/cmd+v
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- deletes without adding to to paste buffer
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- split window
vim.keymap.set("n", "<leader>v", ":vsp<CR>")
vim.keymap.set("n", "<leader>h", ":sp<CR>")

-- useful tabbing
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Format j(é)son
vim.keymap.set("n", "<leader>fj", ":%!jq .<CR>")
vim.keymap.set("n", "<F5>", ":set _s=@<Bar>:%s/\\s\\+$//e<Bar>:let @/=_s<Bar><CR>")

-- Mason Quick access
vim.keymap.set("n", "<leader>m", ":Mason <CR>")

-- Display Error
vim.keymap.set("n", "<leader>E", ":lua vim.diagnostic.open_float() <CR>")

-- Save
vim.keymap.set("n", "<leader>Z", ":w <CR>")
