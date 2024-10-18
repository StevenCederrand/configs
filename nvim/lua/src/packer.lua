-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Telescope fzf
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

        -- TokyoNight 
        use {
            "folke/tokyonight.nvim",
            lazy = false,
            priority = 1000,
            opts = {},
        }

	use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

	use('nvim-treesitter/playground')

	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')

	-- for lsp-zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
                -- LSP Support
                {'neovim/nvim-lspconfig'},             -- Required
                {                                      -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.api.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    -- for nvim-tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
        config = function()
            require("nvim-tree").setup {}
        end
    }

    -- for nvim-metals
    use {
        'scalameta/nvim-metals',
        requires = { "nvim-lua/plenary.nvim" }
    }

    -- nvim bars
    use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
    use 'romgrk/barbar.nvim'

    -- for java lsp
    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-jdtls'

    -- nvim line
    use 'nvim-lualine/lualine.nvim'

    -- Smooth Cursor, this one is just a qol improvement
    use 'gen740/SmoothCursor.nvim'

    -- Open Github url at cursor
    use 'knsh14/vim-github-link'

    -- todo comments
    use {
        'folke/todo-comments.nvim'
    }

    use {
        'folke/zen-mode.nvim'
    }
    -- trailing whitespace highlighter
    use({
        "cappyzawa/trim.nvim",
        config = function()
            require("trim").setup({})
        end
    })

    use 'stevencederrand/syntax-epee'
end)
