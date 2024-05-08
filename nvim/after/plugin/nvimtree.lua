-- for : https://github.com/nvim-tree/nvim-tree.lua
--
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_show_icons = {
    git = 0,
    folders = 1,
    files = 1,
}
require("nvim-tree").setup({
    view = {
        preserve_window_proportions = true,
        relativenumber = true,
    },
    actions = {
        open_file = {
            resize_window = false
        }
    },
    filters = {
        git_ignored = false,
    }
})

vim.keymap.set("n", "<C-n>", "<Cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>n", "<Cmd>NvimTreeFindFile<CR>")
