local M = {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = "cd app && npm install",
	keys = {
		{ "<leader>mp", "<Plug>MarkdownPreview", desc = "Markdown Preview" },
		{ "<leader>ms", "<Plug>MarkdownPreviewStop", desc = "Markdown Preview Stop" },
		{ "<leader>mt", "<Plug>MarkdownPreviewToggle", desc = "Markdown Preview Toggle" },
	},
	config = function()
		vim.g.mkdp_auto_start = 0
	end,
}

return M
