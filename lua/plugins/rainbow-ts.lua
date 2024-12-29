return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = { "HiPhish/nvim-ts-rainbow2" },
	opts = function(_, opts)
		opts.rainbow = {
			enable = true,
			query = "rainbow-parens",
			strategy = require("ts-rainbow").strategy.global,
		}
	end,
}
-- {
-- 	"andymass/vim-matchup",
-- 	event = "BufReadPost",
-- 	config = function()
-- 		vim.g.matchup_matchparen_offscreen = { method = "status_manual" }
-- 	end,
-- }
