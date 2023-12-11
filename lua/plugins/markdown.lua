local M = {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = function() vim.fn["mkdp#util#install"]() end,
	keys = {
		{ "<leader>mp", "<cmd>MarkdownPreview<CR>", desc = "Markdown Preview" },
		{ "<leader>ms", "<cmd>MarkdownPreviewStop<CR>", desc = "Markdown Preview" },
		{ "<leader>mt", "<cmd>MarkdownPreviewToggle<CR>", desc = "Markdown Preview" },
	}
}

return M
