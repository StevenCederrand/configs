require("syntax-epee").setup()
vim.keymap.set("n", "<leader>e", function() require("syntax-epee").stab() end)
