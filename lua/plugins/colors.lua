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
        flavour = "latte",
        transparent_background = false,
        background = {
          light = "latte",
          dark = "mocha",
        },
      })
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = {
      style = "day",
      -- style = "night",
      -- transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
        functions = { italic = true },
        variables = { italic = true },
      },
    },
  },
  {
    "Tsuzat/NeoSolarized.nvim",
    enabled = true,
    config = function()
      require("NeoSolarized").setup({
        style = "light",
        transparent = false,
        styles = {
          comments = { italic = false },
          keywords = { italic = true },
          functions = { bold = true },
          variables = {},
          string = { italic = false },
          underline = true, -- true/false; for global underline
          undercurl = true, -- true/false; for global undercurl
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
