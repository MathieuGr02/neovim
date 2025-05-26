require("core.options")
require("core.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end

vim.opt.rtp:prepend(lazypath)

vim.diagnostic.config({
	float = { border = "none" },
})

vim.o.cmdheight = 1 -- Reduce command line height

vim.diagnostic.config({
	virtual_text = {
		prefix = "●", -- Symbol for inline diagnostics
		source = true,
	},
	signs = true,
	underline = true,
	update_in_insert = false,
	float = {
		border = "rounded",
		source = true,
		header = "",
		max_width = math.floor(vim.o.columns * 0.8), -- Set width to 80% of the screen width
		max_height = math.floor(vim.o.lines * 0.4), -- Set height to 40% of the screen height
	},
})

-- Packages
require("lazy").setup({
	-- General purpose packages
	require("plugins.neotree"),
	require("plugins.colortheme"),
	require("plugins.lualine"),
	require("plugins.telescope"),
	require("plugins.lsp"),
	require("plugins.autocompletion"),
	require("plugins.autoformatting"),
	require("plugins.alpha"),
	require("plugins.indent-blankline"),
	-- Config specific packages
	require("plugins.symbols_outline"),
})
