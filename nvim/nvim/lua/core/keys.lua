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

vim.keymap.set("n", "fe", "]}")
vim.keymap.set("n", "fs", "[{")


-- barbar
vim.keymap.set("n", "<A-,>", "<Cmd>BufferPrevious<CR>")
vim.keymap.set("n", "<A-.>", "<Cmd>BufferNext<CR>")
vim.keymap.set("n", "<A-q>", "<Cmd>BufferClose<CR>")

vim.keymap.set("n", "<A-1>", "<Cmd>BufferGoto 1<CR>")
vim.keymap.set("n", "<A-2>", "<Cmd>BufferGoto 2<CR>")
vim.keymap.set("n", "<A-3>", "<Cmd>BufferGoto 3<CR>")
vim.keymap.set("n", "<A-4>", "<Cmd>BufferGoto 4<CR>")
vim.keymap.set("n", "<A-5>", "<Cmd>BufferGoto 5<CR>")
vim.keymap.set("n", "<A-6>", "<Cmd>BufferGoto 6<CR>")
vim.keymap.set("n", "<A-7>", "<Cmd>BufferGoto 7<CR>")
vim.keymap.set("n", "<A-8>", "<Cmd>BufferGoto 8<CR>")
vim.keymap.set("n", "<A-9>", "<Cmd>BufferGoto 9<CR>")

vim.keymap.set("n", "<A-q>", "<Cmd>BufferClose<CR>")

-- for : https://github.com/tpope/vim-fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>gb", "<Cmd>Git blame<CR>")
vim.keymap.set("n", "<leader>ga", "<Cmd>Git add -p<CR>")
vim.keymap.set("n", "<leader>gl", "<Cmd>GetCommitLink<CR>")

-- for : nvim tree
vim.keymap.set("n", "<C-n>", "<Cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>n", "<Cmd>NvimTreeFindFile<CR>")

-- for : syntax epee
vim.keymap.set("n", "<leader>e", function() require("syntax-epee").stab() end)

-- for : telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- for : https://github.com/mbbill/undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
