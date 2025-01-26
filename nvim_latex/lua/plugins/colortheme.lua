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

return {
    -- Install without configuration

-- Or with configuration

  'projekt0n/github-nvim-theme',
  name = 'github-theme',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require('github-theme').setup({
      -- ...
    })

    vim.cmd('colorscheme github_dark_tritanopia')
  end

}
