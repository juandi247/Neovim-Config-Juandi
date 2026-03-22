return {
  "TimUntersberger/neogit",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("neogit").setup({
      kind = "split",
      integrations = {
        telescope = true,
      },
    })
    vim.keymap.set("n", "<leader>g", ":Neogit<CR>", { noremap = true, silent = true })
  end,
}
