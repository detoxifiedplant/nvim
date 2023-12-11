local M = {
	"ellisonleao/glow.nvim",
	cmd = "Glow",
	config = function ()
		require("glow").setup({
			border = 'rounded',
			style = "dark",
			width = 180,
			height = 140,
		})
	end,
	keys = {
		{"<leader>mg", "<cmd>Glow<CR>", desc = "Markdown Preview" }
	}
}

return M
