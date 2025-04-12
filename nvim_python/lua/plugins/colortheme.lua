-- return {
--	"catppuccin/nvim",
--	lazy = false,
--	name = "catppuccin",
--	priority = 1000,
--	config = function()
--		require("catppuccin").setup({
--			flavour = "mocha",  -- Ensure the flavour is correctly set
--			transparent_background = false,  -- Example option
--			term_colors = true,  -- Enable terminal colors
--			integrations = {
--				nvimtree = true,  -- Ensure integrations are enabled if needed
--			}
--		})
--
--		-- Apply the theme after setup
--		vim.cmd.colorscheme "catppuccin"
--	end
--}

-- return {
-- Install without configuration

-- Or with configuration

-- 'projekt0n/github-nvim-theme',
-- name = 'github-theme',
-- lazy = false, -- make sure we load this during startup if it is your main colorscheme
-- priority = 1000, -- make sure to load this before all the other start plugins
-- config = function()
--   require('github-theme').setup({
--     -- ...
--   })

--   vim.cmd('colorscheme github_dark_tritanopia')
-- end

--}

return {
	"olimorris/onedarkpro.nvim",
	lazy = false, -- Load the plugin on startup
	priority = 1000, -- Ensure it loads before other plugins
	config = function()
		-- Optional: Customize the theme
		require("onedarkpro").setup({
			options = {
				bold = true, -- Use bold for certain syntax groups
				italic = true, -- Use italics for certain syntax groups
				cursorline = true, -- Highlight the current line
			},
		})

		-- Set the theme
		vim.cmd("colorscheme onedark") -- or "colorscheme onedarkpro"
	end,
}
