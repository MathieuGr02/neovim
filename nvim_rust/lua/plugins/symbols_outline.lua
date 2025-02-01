return {
	{
		"simrat39/symbols-outline.nvim",
		config = function()
			require("symbols-outline").setup({
				-- Add any configuration options here
				auto_close = false, -- Automatically close the outline when it loses focus
				highlight_hovered_item = true, -- Highlight the symbol under the cursor
				show_guides = true, -- Show indent guides in the outline
				auto_preview = false, -- Disable auto-preview on symbol hover
				position = "right", -- Position of the outline panel
				width = 30, -- Width of the outline panel
			})
		end,
		cmd = { "SymbolsOutline", "SymbolsOutlineOpen", "SymbolsOutlineClose" }, -- Lazy load on these commands
	},
}
