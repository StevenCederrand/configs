-- empty setup using defaults
local g = vim.g

g.nvim_tree_git_hl = 1
g.nvim_tree_show_icons = {
    git = 0,
    folders = 1,
    files = 1,
}

require("nvim-tree").setup()

vim.keymap.set("n", "<C-n>", "<Cmd>NvimTreeToggle<CR>")
