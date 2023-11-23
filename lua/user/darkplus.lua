local M = {
  "sar/extra-darkplus.nvim",
  commit = "16a06bf40f4627bc14a374755a8f30adc11c4a58",
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
}

M.name = "darkplus"
function M.config()
  local status_ok, _ = pcall(vim.cmd.colorscheme, M.name)
  if not status_ok then
    return
  end
end

return M

