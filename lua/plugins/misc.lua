local M = {
  "norcalli/nvim-colorizer.lua",
}

require("fzf-lua").setup({
  winopts = {
    height = 0.90, -- window height
    width = 0.90, -- window width
    fullscreen = false,
    preview = {
      -- vertical = "down:45%", -- up|down:size
      horizontal = "right:65%",
      layout = "horizontal",
    },
  },
  keymap = {
    builtin = {
      true,
      ["<M-S-j>"] = "preview-down",
      ["<M-S-k>"] = "preview-up",
    },
  },
})

return M
