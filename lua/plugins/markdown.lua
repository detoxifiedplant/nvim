local M = {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = function() vim.fn["mkdp#util#install"]() end,
	keys = {
		{ "<leader>mp", "<Plug>MarkdownPreview", desc = "Markdown Preview" },
		{ "<leader>ms", "<Plug>MarkdownPreviewStop", desc = "Markdown Preview Stop" },
		{ "<leader>mt", "<Plug>MarkdownPreviewToggle", desc = "Markdown Preview Toggle" },
	}
}

return M
