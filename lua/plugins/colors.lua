return {
	{ "sar/darkplusplus.nvim", enabled = true },
	{ "catppuccin/nvim",
		enabled = true,
		config = function ()
			require("catppuccin").setup({
					transparent_background = true
			})
		end
	},
	{
		"folke/tokyonight.nvim",
		lazy = true,
		opts = {
			style = "night",
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "tokyonight",
		},
	},
}
