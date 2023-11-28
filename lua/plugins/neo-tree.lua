return {
  "nvim-neo-tree/neo-tree.nvim",
	opts = {
		window = {
			width = 30
		},
		filesystem = {
			window = {
				mappings = {
					["/"] = false,
					["F"] = "fuzzy_finder",
					["l"] = "open_drop",
				}
			}
		}
	},
}
