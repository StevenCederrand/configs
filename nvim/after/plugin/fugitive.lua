-- for : https://github.com/tpope/vim-fugitive

vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>gb", "<Cmd>Git blame<CR>")
vim.keymap.set("n", "<leader>ga", "<Cmd>Git add -p<CR>")
vim.keymap.set("n", "<leader>gl", "<Cmd>GetCommitLink<CR>")
