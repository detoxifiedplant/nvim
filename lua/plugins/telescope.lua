local M = {
  "nvim-telescope/telescope.nvim",
  event = "Bufenter",
  cmd = { "Telescope" },
  dependencies = {
    {
      "ahmedkhalf/project.nvim",
    },
  },
}

local actions = require("telescope.actions")

M.opts = {
  defaults = {
    prompt_prefix = " ",
    -- selection_caret = " ",
    path_display = { "smart" },
    -- file_ignore_patterns = { ".git/", "node_modules" },
    layout_strategy = "horizontal",
    layout_config = { height = 0.95, width = 0.9, preview_width = 65 },
    winblend = 0,
    mappings = {
      i = {
        -- ["<Down>"] = actions.move_selection_next,
        -- ["<Up>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
  },
}

return M
