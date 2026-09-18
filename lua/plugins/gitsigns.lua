return {
  "lewis6991/gitsigns.nvim",
  opts = function(_, opts)
    local on_attach = opts.on_attach
    opts.on_attach = function(buffer)
      on_attach(buffer)
      vim.keymap.set("n", "<leader>ghP", require("gitsigns").preview_hunk, {
        buffer = buffer,
        desc = "Preview Hunk",
        silent = true,
      })
    end
  end,
}
