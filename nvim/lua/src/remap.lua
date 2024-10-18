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

-- Sane paste
vim.keymap.set("v", "p", "P")

-- Force close buffer
vim.keymap.set("n", "<leader>bd", ":bd! <CR>")

-- Open blank buffer
vim.keymap.set("n", "<leader>bn", ":enew <CR>")

-- Set Tabs to 2 or 4
vim.keymap.set("n", "<leader>t2", ":set tabstop=2 | set shiftwidth=2 <CR>")
vim.keymap.set("n", "<leader>t4", ":set tabstop=4 | set shiftwidth=4 <CR>")

-- Scale window vertically and Horisontally
vim.keymap.set("n", "<c-k>", ":resize -1<CR>");
vim.keymap.set("n", "<c-j>", ":resize +1<CR>");
vim.keymap.set("n", "<c-h>", ":vertical resize +1<CR>");
vim.keymap.set("n", "<c-l>", ":vertical resize -1<CR>");
