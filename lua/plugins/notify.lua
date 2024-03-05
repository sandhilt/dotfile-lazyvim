return {
  "rcarriga/nvim-notify",
  keys = {
    {
      "<leader>uN",
      function()
        require("telescope").extensions.notify.notify()
      end,
      desc = "Show all Notifications",
    },
  },
}
