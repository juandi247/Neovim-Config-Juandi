return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 15,
      direction = "horizontal",
      float_opts = { border = "curved" },
    })

    -- abrir/cerrar terminal
    vim.keymap.set({ "n"}, "<leader>t", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })

    -- salir del modo insert de la terminal
    vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Normal mode en terminal" })

    -- moverse entre ventanas (siguiente/anterior)
   --vim.keymap.set({ "n", "t" }, "<leader> ñ", "<cmd>wincmd w<CR>",  { desc = "Siguiente ventana" })
    vim.keymap.set({ "n", "t" }, "<leader>ñ",  "<cmd>wincmd W<CR>",  { desc = "Ventana anterior" })

    -- redimensionar
    vim.keymap.set("n", "<C-=>", "<cmd>resize +5<CR>",  { desc = "Agrandar" })
    vim.keymap.set("n", "<C-->", "<cmd>resize -5<CR>",  { desc = "Achicar" })
  end,
}
