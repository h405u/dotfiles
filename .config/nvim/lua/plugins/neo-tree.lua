return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      position = "float",
    },
  },
  keys = {
    {
      "<leader>e",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
      end,
      desc = "Explorer NeoTree (Root Dir)",
    },
    {
      "<leader>fe",
      function()
        require("neo-tree.command").execute({
          toggle = true,
          source = "buffers",
        })
      end,
      desc = "Buffer Explorer",
    },
    {
      "<leader>ge",
      function()
        require("neo-tree.command").execute({
          toggle = true,
          source = "git_status",
        })
      end,
      desc = "Git Status",
    },
  },
}
