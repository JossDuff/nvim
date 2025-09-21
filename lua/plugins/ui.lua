return {
	-- Lualine statusline
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		opts = function(_, opts)
			-- Set the theme (gruvbox to match your colorscheme)
			opts.options = opts.options or {}
			opts.options.theme = "gruvbox"

			-- Make separators square instead of triangular
			opts.options.section_separators = { left = "", right = "" }
			opts.options.component_separators = { left = "|", right = "|" }

			-- Keep the emoji in the statusline
			table.insert(opts.sections.lualine_x, "😄")
		end,
	},
}
