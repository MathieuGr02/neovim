return {
	"lervag/vimtex",
	lazy = false, -- we don't want to lazy load VimTeX
	-- tag = "v2.15", -- uncomment to pin to a specific release
	init = function()
		-- VimTeX configuration goes here, e.g.
		-- vim.g.vimtex_view_method = "mupdf"
		vim.g.vimtex_view_method = "general"
		local os = package.config:sub(1, 1)
		-- Check if on Windows or MacOS / Linux and set pdf viewer accordingly
		if os == "/" then
			vim.g.vimtex_view_general_viewer = "zathura"
		else
			vim.g.vimtex_view_general_viewer = "okular"
		end
	end,
}
