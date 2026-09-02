return {
  {
    "nickjvandyke/opencode.nvim",
    version = "*", -- Latest stable release
    config = function()
      ---@type opencode.Opts
      vim.g.opencode_opts = {
        -- Your configuration, if any; goto definition on the type for details
      }
    end,
    keys = {
      { "<leader>a", group = "ai" },
      {
        "<leader>aa",
        function()
          require("opencode").ask("@this: ")
        end,
        mode = { "n", "x" },
        desc = "Ask OpenCode",
      },
      {
        "<leader>as",
        function()
          require("opencode").select()
        end,
        mode = { "n", "x" },
        desc = "Select OpenCode action",
      },
      {
        "<leader>ao",
        function()
          return require("opencode").operator("@this ")
        end,
        mode = { "n", "x" },
        expr = true,
        desc = "Append selection to OpenCode",
      },
      {
        "<leader>an",
        function()
          require("opencode").command("session.new")
        end,
        desc = "New session",
      },
      {
        "<leader>ai",
        function()
          require("opencode").command("session.interrupt")
        end,
        desc = "Interrupt request",
      },
      {
        "<leader>au",
        function()
          require("opencode").command("session.undo")
        end,
        desc = "Undo last action",
      },
      {
        "<leader>ar",
        function()
          require("opencode").command("session.redo")
        end,
        desc = "Redo last action",
      },
      {
        "<leader>ac",
        function()
          require("opencode").command("session.compact")
        end,
        desc = "Compact session",
      },
    },
  },
}
