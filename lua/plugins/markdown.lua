-- installs the node server deps: preview falls back to `node app/index.js`,
-- which dies with MODULE_NOT_FOUND when app/node_modules is missing
local function install_deps(dir)
	local res = vim.system({ "npm", "install" }, { cwd = dir .. "/app" }):wait()
	if res.code ~= 0 then
		vim.notify("markdown-preview: npm install failed\n" .. (res.stderr or ""), vim.log.levels.ERROR)
	end
	return res.code == 0
end

local M = {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = function(plugin)
		install_deps(plugin.dir)
	end,
	keys = {
		{ "<leader>mp", "<Plug>MarkdownPreview", desc = "Markdown Preview" },
		{ "<leader>ms", "<Plug>MarkdownPreviewStop", desc = "Markdown Preview Stop" },
		{ "<leader>mt", "<Plug>MarkdownPreviewToggle", desc = "Markdown Preview Toggle" },
	},
	config = function(plugin)
		vim.g.mkdp_auto_start = 0
		-- lazy runs build only on install/update: heal a skipped or failed build here
		if vim.fn.isdirectory(plugin.dir .. "/app/node_modules") == 0 then
			vim.notify("markdown-preview: installing node deps", vim.log.levels.INFO)
			install_deps(plugin.dir)
		end
	end,
}

return M
