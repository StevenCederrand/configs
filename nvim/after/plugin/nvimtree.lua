-- for : https://github.com/nvim-tree/nvim-tree.lua
--
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_show_icons = {
    git = 0,
    folders = 1,
    files = 1,
}

require("nvim-tree").setup()

vim.keymap.set("n", "<C-n>", "<Cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>n", "<Cmd>NvimTreeFindFile<CR>")
