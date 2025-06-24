-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Set up packer
local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

--
local cmd = require('pckr.loader.cmd')
local keys = require('pckr.loader.keys')

require('pckr').add{
	-- Telescope fzf
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.5',
		requires = { {'nvim-lua/plenary.nvim'} }
	},
	{
		'folke/tokyonight.nvim',
	},
	{
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
	},
	-- 'theprimeagen/harpoon',
	'mbbill/undotree',
	'tpope/vim-fugitive',
	{
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons',
		},
		config = function()
			require("nvim-tree").setup {}
		end
	},
	'lewis6991/gitsigns.nvim', -- todo: look further into this.. Seems powerful
	'romgrk/barbar.nvim',
	--
	-- Open Github url at cursor
	'knsh14/vim-github-link',
	'folke/todo-comments.nvim',
	'folke/zen-mode.nvim',
	{
		"cappyzawa/trim.nvim",
		config = function()
			require("trim").setup({})
		end
	},
	'stevencederrand/syntax-epee',
	'nvim-lualine/lualine.nvim',
    {
        "mason-org/mason.nvim",
        opts = {}
    }
}

--  -- Simple plugins can be specified as strings
--  '9mm/vim-closer';
--
--  -- Lazy loading:
--  -- Load on a specific command
--  {'tpope/vim-dispatch',
--    cond = {
--      cmd('Dispatch'),
--    }
--  };
--
--  -- Load on specific keymap
--  {'tpope/vim-commentary', cond = keys('n', 'gc') },
--
--  -- Load on specific commands
--  -- Also run code after load (see the "config" key)
--  { 'w0rp/ale',
--    cond = cmd('ALEEnable'),
--    config = function()
--      vim.cmd[[ALEEnable]]
--    end
--  };
--
--  -- Local plugins can be included
--  '~/projects/personal/hover.nvim';
--
--  -- Plugins can have post-install/update hooks
--  {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cond = cmd('MarkdownPreview')};
--
--  -- Post-install/update hook with neovim command
--  { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' };
--
--  -- Post-install/update hook with call of vimscript function with argument
--  { 'glacambre/firenvim', run = function()
--    vim.fn['firenvim#install'](0)
--  end };
--
--  -- Use specific branch, dependency and run lua file after load
--  { 'glepnir/galaxyline.nvim',
--    branch = 'main',
--    requires = {'kyazdani42/nvim-web-devicons'},
--    config = function()
--      require'statusline'
--    end
--  };
--
--  -- Run config *before* the plugin is loaded
--  {'whatyouhide/vim-lengthmatters', config_pre = function()
--    vim.g.lengthmatters_highlight_one_column = 1
--    vim.g.lengthmatters_excluded = {'pckr'}
--  end},
