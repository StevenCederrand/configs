-- for : https://github.com/nvim-telescope/telescope.nvim
local builtin = require('telescope.builtin')
require('telescope').setup{
    defaults = {
        file_ignore_patterns = {
            "node_modules",
            "bundle.js",
        }
    }
}
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
--vim.keymap.set('n', '<leader>ps', function()
--	builtin.grep_string({ search = vim.fn.input("Grep > ") })
--end)
