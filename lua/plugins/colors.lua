return {
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  { "rebelot/kanagawa.nvim", enabled = true },
  { "NLKNguyen/papercolor-theme", enabled = true },

  -- { "sar/darkplusplus.nvim", enabled = true },
  -- { "ellisonleao/gruvbox.nvim", enabled = true },
  -- { "nyoom-engineering/oxocarbon.nvim", enabled = true }, WARN:
  -- { "sainnhe/sonokai", enabled = true }, WARN:
	-- { "rmehri01/onenord.nvim", enabled = true }, WARN:
	-- { "kartikp10/noctis.nvim", enabled = true }, WARN:
	-- { "AlexvZyl/nordic.nvim", lazy = false, priority = 1000,
	-- config = function() require("nordic").load() end, },WARN:
  -- { "mcchrish/zenbones.nvim", enabled = true },WARN:
  -- { "sainnhe/everforest", enabled = true },WARN:
  -- { "EdenEast/nightfox.nvim", enabled = true }, WARN:
  -- { "kepano/flexoki-neovim", enabled = true },WARN:
  -- { "bluz71/vim-nightfly-colors", enabled = true }, WARN:
  -- { "jacoborus/tender.vim", enabled = true }, WARN:
  -- { "savq/melange-nvim", enabled = true }, WARN:
  -- { "navarasu/onedark.nvim", enabled = true }, WARN:
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
      -- transparent = true,
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
