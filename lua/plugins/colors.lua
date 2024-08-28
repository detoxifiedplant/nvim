vim.opt.background = "dark"
return {
  { "ryanoasis/vim-devicons", enabled = true },
  -- { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  -- { "rebelot/kanagawa.nvim", enabled = true },
  -- { "ellisonleao/gruvbox.nvim", enabled = true },

  -- { "NLKNguyen/papercolor-theme", enabled = true },
  -- { "sar/darkplusplus.nvim", enabled = true },
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
    lazy = false,
    priority = 1000,
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        -- flavour = "mocha",
        transparent_background = true,
        background = {
          light = "latte",
          dark = "mocha",
        },
        -- dim_inactive = {
        -- 	enabled = true, -- dims the background color of inactive window
        -- 	shade = "dark",
        -- 	percentage = 0.75, -- percentage of the shade to apply to the inactive window
        -- },
        styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
          comments = {}, -- Change the style of comments
          conditionals = { "italic" },
          loops = { "bold" },
          functions = { "bold" },
          keywords = { "bold" },
          strings = {},
          variables = {},
          numbers = {},
          booleans = { "bold" },
          -- properties = { "italic" },
          types = {},
          operators = {},
          -- miscs = {}, -- Uncomment to turn off hard-coded styles
        },
      })
    end,
    opts = {
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        grug_far = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = {
      style = "moon",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
        functions = { bold = true },
        keywords = { bold = true },
        comments = { italic = false, bold = false },
        -- variables = { italic = false },
      },
      day_brightness = 0.2, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
