vim.opt.background = "dark"
local transparent_background = true
local M = {
  -- { "ryanoasis/vim-devicons", enabled = true },

  -- { "rebelot/kanagawa.nvim", enabled = true },
  -- { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  -- { "NLKNguyen/papercolor-theme", enabled = true },
  -- { "ellisonleao/gruvbox.nvim", enabled = true },
  -- { "sar/darkplusplus.nvim", enabled = true },
  -- { "nyoom-engineering/oxocarbon.nvim", enabled = true }, WARN:
  -- { "sainnhe/sonokai", enabled = true }, WARN:
  -- { "rmehri01/onenord.nvim", enabled = true }, WARN:
  -- { "kartikp10/noctis.nvim", enabled = true }, WARN:
  -- { "AlexvZyl/nordic.nvim", lazy = false, priority = 1000,
  -- config = function() require("nordic").load() end, },WARN:
  -- { "mcchrish/zenbones.nvim", enabled = true },WARN:
  -- { "sainnhe/everforest", enabled = true },WARN:
  -- { "kepano/flexoki-neovim", enabled = true },WARN:
  -- { "bluz71/vim-nightfly-colors", enabled = true }, WARN:
  -- { "jacoborus/tender.vim", enabled = true }, WARN:
  -- { "savq/melange-nvim", enabled = true }, WARN:
  -- { "navarasu/onedark.nvim", enabled = true }, WARN:
  -- { "jacoborus/tender.vim", enabled = true }, WARN:
  {
    "EdenEast/nightfox.nvim",
    enabled = true,
    opts = function()
      require("nightfox").setup({
        options = {
          styles = {
            -- keywords = "italic",
          },
        },
        palettes = {
          duskfox = {
            -- bg0 = "#191726", -- Dark bg (status line and float)
            bg0 = "#1e2021", -- Default bg
            bg1 = "#1e2021", -- Default bg
            -- bg2 = "#2d2a45", -- Lighter bg (colorcolm folds)
            -- bg3 = "#373354", -- Lighter bg (cursor line)
            -- bg4 = "#4b4673", -- Conceal, border fg
            -- sel0    = "#433c59", -- Popup bg, visual selection bg
          },
        },
        specs = {
          duskfox = {
            syntax = {
              -- builtin0 = "#b4befe",
              -- builtin0 = "#78A9FF",
              -- builtin0 = "#e8bf8b", -- Builtin variable
              builtin0 = "#90b1b1", -- Builtin variable
              -- builtin1 = "#B5E8E0",          -- Builtin type
              -- builtin2 = "#B5E8E0",          -- Builtin const
              -- builtin3 = "#B5E8E0",          -- Not used
              -- bracket = "#B5E8E0",           -- Brackets and Punctuation
              -- comment = "#B5E8E0",           -- Comment
              -- conditional = "#B5E8E0",       -- Conditional and loop
              -- const = "#B5E8E0",             -- Constants, imports and booleans
              -- dep = "#B5E8E0",               -- Deprecated
              -- field = "#ea76cb", -- Field
              field = "#bf7cb0", -- Field
              -- func = "#B5E8E0",              -- Functions and Titles
              -- ident = "#B5E8E0",             -- Identifiers
              -- keyword = "#B5E8E0",           -- Keywords
              -- number = "#B5E8E0",            -- Numbers
              -- operator = "#B5E8E0",          -- Operators
              -- preproc = "#B5E8E0",           -- PreProc
              -- regex = "#B5E8E0",             -- Regex
              -- statement = "#B6E8E0",         -- Statements
              string = "#629f99", -- Strings
              type = "#a5adcb", -- Types
              variable = "#cdd6f4", -- Variables
            },
            diag = {
              error = "#dd7878",
              -- warn = "#DDB6F2",
              -- info = pal.blue.base,
              -- hint = pal.green.base,
              -- ok = pal.green.base,
            },
          },
        },
      })
    end,
  },
  {
    "catppuccin/nvim",
    lazy = true,
    priority = 1000,
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        -- flavour = "mocha",
        transparent_background = transparent_background,
        term_colors = true,
        background = {
          light = "latte",
          dark = "mocha",
        },
        dim_inactive = {
          enabled = false, -- dims the background color of inactive window
          shade = "dark",
          percentage = 0.15, -- percentage of the shade to apply to the inactive window
        },
        styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
          comments = { "altfont" },
          -- functions = { "bold" },
          -- keywords = { "italic" },
          -- operators = { "bold" },
          -- conditionals = { "bold" },
          -- loops = { "bold" },
          -- booleans = { "bold", "italic" },
          numbers = {},
          types = {},
          strings = {},
          variables = {},
          properties = {},
          -- miscs = {}, -- Uncomment to turn off hard-coded styles
        },
        integrations = {
          treesitter = false,
          native_lsp = {
            enabled = false,
            virtual_text = {
              errors = { "italic" },
              hints = { "italic" },
              warnings = { "italic" },
              information = { "italic" },
            },
            underlines = {
              errors = { "italic" },
              hints = { "italic" },
              warnings = { "italic" },
              information = { "italic" },
            },
          },
          aerial = true,
          alpha = false,
          barbar = false,
          beacon = false,
          cmp = true,
          coc_nvim = false,
          dap = true,
          dap_ui = true,
          dashboard = false,
          dropbar = { enabled = true, color_mode = true },
          fern = false,
          fidget = true,
          flash = true,
          gitgutter = false,
          gitsigns = true,
          harpoon = false,
          headlines = false,
          hop = true,
          illuminate = true,
          indent_blankline = { enabled = true, colored_indent_levels = false },
          leap = false,
          lightspeed = false,
          lsp_saga = true,
          lsp_trouble = true,
          markdown = true,
          mason = true,
          mini = false,
          navic = { enabled = false },
          neogit = false,
          neotest = false,
          neotree = { enabled = false, show_root = true, transparent_panel = false },
          noice = false,
          notify = true,
          nvimtree = true,
          overseer = false,
          pounce = false,
          rainbow_delimiters = true,
          render_markdown = true,
          sandwich = false,
          semantic_tokens = true,
          symbols_outline = false,
          telekasten = false,
          telescope = { enabled = true },
          treesitter_context = true,
          ts_rainbow = false,
          vim_sneak = false,
          vimwiki = false,
          which_key = true,
        },
        color_overrides = {},
      })
    end,
  },
  {
    "folke/tokyonight.nvim",
    -- lazy = false,
    opts = {
      style = "night",
      transparent = false,
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
      colorscheme = "duskfox",
    },
  },
}

return M
