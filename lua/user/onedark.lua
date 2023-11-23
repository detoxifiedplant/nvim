local M = {
  "joshdick/onedark.vim",
  commit = "57b77747694ea5676c3ca0eeaf9567dc499730c0",
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
}

M.name = "aaone"
function M.config()
  local status_ok, _ = pcall(vim.cmd.colorscheme, M.name)
  if not status_ok then
    return
  end
end

return M
