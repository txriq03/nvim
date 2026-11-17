return {
  "Tim4c/tuios-nvim-navigator",
  config = function()
    local options = {
      keymaps = {
        left = "<C-h>",
        down = "<C-j>",
        up = "<C-k>",
        right = "<C-l>",
      },
    }
    local setup = function()
      require("tuios-nvim-navigator").setup(options)
    end

    setup()
    vim.api.nvim_create_autocmd("User", {
      pattern = "VeryLazy",
      once = true,
      callback = function()
        vim.schedule(setup)
      end,
    })
  end,
}
