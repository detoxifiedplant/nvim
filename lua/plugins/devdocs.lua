return {
  "luckasRanarison/nvim-devdocs",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    float_win = {
      height = 32,
      width = 100,
      border = "rounded",
    },
    after_open = function(bufnr)
      vim.api.nvim_buf_set_keymap(bufnr, "n", "<Esc>", ":close<CR>", {})
      vim.api.nvim_buf_set_keymap(bufnr, "n", "q", ":close<CR>", {})
    end,
  },
}
