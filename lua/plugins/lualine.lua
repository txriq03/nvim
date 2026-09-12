return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      vim.schedule(function()
        vim.opt.laststatus = 0
      end)

      return opts
    end,
  },
}
