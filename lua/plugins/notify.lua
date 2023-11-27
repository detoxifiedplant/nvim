return {
  "rcarriga/nvim-notify",
  keys = {
    {
      "<leader>nd",
      function()
        require("notify").dismiss({ silent = true, pending = true })
      end,
      desc = "Dismiss all Notifications",
    },
		{ "<leader>un", false }
  },
  opts = {
    timeout = 3000,
	stages = 'static'
  },
}
