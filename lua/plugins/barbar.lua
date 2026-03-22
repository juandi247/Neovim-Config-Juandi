return {
  "romgrk/barbar.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("barbar").setup({
      animation = true,
      clickable = true,
      icons = {
        button = "󰅖",
        modified = { button = "●" },
      },
    })

    vim.keymap.set("n", "<leader><Tab>",   "<cmd>BufferNext<CR>",     { desc = "Siguiente buffer" })
    vim.keymap.set("n", "<leader><S-Tab>", "<cmd>BufferPrevious<CR>", { desc = "Buffer anterior" })
    vim.keymap.set("n", "<leader>x",       "<cmd>BufferClose<CR>",    { desc = "Cerrar buffer" })
  end,
}
