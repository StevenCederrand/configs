-- for : https://github.com/nvim-telescope/telescope.nvim
require('telescope').setup{
    defaults = {
        file_ignore_patterns = {
            "node_modules",
            "bundle.js",
        }
    }
}
--vim.keymap.set('n', '<leader>ps', function()
--	builtin.grep_string({ search = vim.fn.input("Grep > ") })
--end)
