vim.opt.background = "dark"
local transparent_background = true
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
        transparent_background = transparent_background,
        term_colors = true,
        background = {
          light = "latte",
          dark = "mocha",
        },
        dim_inactive = {
          enabled = true, -- dims the background color of inactive window
          shade = "dark",
          percentage = 0.15, -- percentage of the shade to apply to the inactive window
        },
        styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
          comments = { "italic" },
          functions = { "bold" },
          keywords = { "italic" },
          -- operators = { "bold" },
          -- conditionals = { "bold" },
          loops = { "bold" },
          booleans = { "bold", "italic" },
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
          telescope = { enabled = true, style = "nvchad" },
          treesitter_context = true,
          ts_rainbow = false,
          vim_sneak = false,
          vimwiki = false,
          which_key = true,
        },
        color_overrides = {},
        -- highlight_overrides = {
        --   ---@param cp palette
        --   all = function(cp)
        --     return {
        --       -- For base configs
        --       NormalFloat = { fg = cp.text, bg = transparent_background and cp.none or cp.mantle },
        --       FloatBorder = {
        --         fg = transparent_background and cp.blue or cp.mantle,
        --         bg = transparent_background and cp.none or cp.mantle,
        --       },
        --       CursorLineNr = { fg = cp.green },
        --
        --       -- For native lsp configs
        --       DiagnosticVirtualTextError = { bg = cp.none },
        --       DiagnosticVirtualTextWarn = { bg = cp.none },
        --       DiagnosticVirtualTextInfo = { bg = cp.none },
        --       DiagnosticVirtualTextHint = { bg = cp.none },
        --       LspInfoBorder = { link = "FloatBorder" },
        --
        --       -- For mason.nvim
        --       MasonNormal = { link = "NormalFloat" },
        --
        --       -- For indent-blankline
        --       IblIndent = { fg = cp.surface0 },
        --       IblScope = { fg = cp.surface2, style = { "bold" } },
        --
        --       -- For nvim-cmp and wilder.nvim
        --       Pmenu = { fg = cp.overlay2, bg = transparent_background and cp.none or cp.base },
        --       PmenuBorder = { fg = cp.surface1, bg = transparent_background and cp.none or cp.base },
        --       PmenuSel = { bg = cp.green, fg = cp.base },
        --       CmpItemAbbr = { fg = cp.overlay2 },
        --       CmpItemAbbrMatch = { fg = cp.blue, style = { "bold" } },
        --       CmpDoc = { link = "NormalFloat" },
        --       CmpDocBorder = {
        --         fg = transparent_background and cp.surface1 or cp.mantle,
        --         bg = transparent_background and cp.none or cp.mantle,
        --       },
        --
        --       -- For fidget
        --       FidgetTask = { bg = cp.none, fg = cp.surface2 },
        --       FidgetTitle = { fg = cp.blue, style = { "bold" } },
        --
        --       -- For nvim-notify
        --       NotifyBackground = { bg = cp.base },
        --
        --       -- For nvim-tree
        --       NvimTreeRootFolder = { fg = cp.pink },
        --       NvimTreeIndentMarker = { fg = cp.surface2 },
        --
        --       -- For trouble.nvim
        --       TroubleNormal = { bg = transparent_background and cp.none or cp.base },
        --       TroubleNormalNC = { bg = transparent_background and cp.none or cp.base },
        --
        --       -- For telescope.nvim
        --       TelescopeMatching = { fg = cp.lavender },
        --       TelescopeResultsDiffAdd = { fg = cp.green },
        --       TelescopeResultsDiffChange = { fg = cp.yellow },
        --       TelescopeResultsDiffDelete = { fg = cp.red },
        --
        --       -- For glance.nvim
        --       GlanceWinBarFilename = { fg = cp.subtext1, style = { "bold" } },
        --       GlanceWinBarFilepath = { fg = cp.subtext0, style = { "italic" } },
        --       GlanceWinBarTitle = { fg = cp.teal, style = { "bold" } },
        --       GlanceListCount = { fg = cp.lavender },
        --       GlanceListFilepath = { link = "Comment" },
        --       GlanceListFilename = { fg = cp.blue },
        --       GlanceListMatch = { fg = cp.lavender, style = { "bold" } },
        --       GlanceFoldIcon = { fg = cp.green },
        --
        --       -- For nvim-treehopper
        --       TSNodeKey = {
        --         fg = cp.peach,
        --         bg = transparent_background and cp.none or cp.base,
        --         style = { "bold", "underline" },
        --       },
        --
        --       -- For treesitter
        --       ["@keyword.return"] = { fg = cp.pink, style = clear },
        --       ["@error.c"] = { fg = cp.none, style = clear },
        --       ["@error.cpp"] = { fg = cp.none, style = clear },
        --     }
        --   end,
        -- },
      })
    end,
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
