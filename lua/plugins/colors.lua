return {
  { "sar/darkplusplus.nvim", enabled = true },
  { "EdenEast/nightfox.nvim", enabled = true },
  { "kepano/flexoki", enabled = true },
  { "rebelot/kanagawa.nvim", enabled = true },
  -- { "sainnhe/everforest", enabled = true },
  -- { "bluz71/vim-nightfly-colors", enabled = true },
  -- { "ellisonleao/gruvbox.nvim", enabled = true },
  -- { "navarasu/onedark.nvim", enabled = true }, WARN:
  -- { "nyoom-engineering/oxocarbon.nvim", enabled = true }, WARN:
  -- { "sainnhe/sonokai", enabled = true }, WARN:
  -- { "jacoborus/tender.vim", enabled = true }, WARN:
  {
    "catppuccin/nvim",
    enabled = true,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
      })
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = {
      style = "night",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
        -- functions = { italic = true },
        -- variables = { italic = true },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
