-- plugins/diffview.lua
return {
  "sindrets/diffview.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("diffview").setup({
      enhanced_diff_hl = true, -- mejor resaltado de diferencias
      view = {
        default = {
          layout = "diff2_horizontal", -- split horizontal como VS Code
        },
      },
    })

    -- keymaps
    vim.keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<CR>",        { desc = "Ver cambios actuales" })
    vim.keymap.set("n", "<leader>gh", "<cmd>DiffviewFileHistory<CR>", { desc = "Historial de commits" })
    vim.keymap.set("n", "<leader>gc", "<cmd>DiffviewClose<CR>",       { desc = "Cerrar diffview" })

    -- blame de archivo actual
    vim.keymap.set("n", "<leader>gb", "<cmd>DiffviewFileHistory %<CR>", { desc = "Blame archivo actual" })
  end,
}
