-- for : https://github.com/folke/tokyonight.nvim

local useTokyoNight = false

local function configureTokyoNight()
	require("tokyonight").setup({
	  style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
	  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
	  transparent = true,
	  styles = {
	    -- Style to be applied to different syntax groups
	    -- Value is any valid attr-list value for `:help nvim_set_hl`
	    comments = { italic = true },
	    keywords = { italic = true },
	    functions = {},
	    variables = {},
	    -- Background styles. Can be "dark", "transparent" or "normal"
	    sidebars = "dark", -- style for sidebars, see below
	    floats = "dark", -- style for floating windows
	  },
	})

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

	vim.cmd.colorscheme('tokyonight')
end

local function configureMelange()
	vim.cmd.colorscheme('melange')
end

if useTokyoNight then
	configureTokyoNight()
else
    --vim.cmd [[
    --    highlight Normal guibg=none
    --    highlight NonText guibg=none
    --    highlight Normal ctermbg=none
    --    highlight NonText ctermbg=none
    --]]
	configureMelange()
end
