return {
  "luckasRanarison/nvim-devdocs",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    float_win = { -- passed to nvim_open_win(), see :h api-floatwin
      height = 32,
      width = 100,
      border = "rounded",
    },
  },
}
