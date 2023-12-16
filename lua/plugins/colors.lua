return {
	{ "sar/darkplusplus.nvim", enabled = true },
	{ "rebelot/kanagawa.nvim", enabled = true },
	{ "EdenEast/nightfox.nvim", enabled = true },
	{ "navarasu/onedark.nvim", enabled = true },
	{ "sainnhe/everforest", enabled = true },
	{ "nyoom-engineering/oxocarbon.nvim", enabled = true },
	{ "sainnhe/sonokai", enabled = true },
	{ "ellisonleao/gruvbox.nvim", enabled = true },
	{ "kepano/flexoki", enabled = true },
	{ "jacoborus/tender.vim", enabled = true },
	{ "bluz71/vim-nightfly-colors", enabled = true },
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
		enabled = true,
		lazy = true,
		opts = {
			style = "night",
			transparent = false,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
}
