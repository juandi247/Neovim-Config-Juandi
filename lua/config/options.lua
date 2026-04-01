
--GENERALL
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.opt.number = true
vim.opt.relativenumber = true
-- neo-tree
vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" })
vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { bg = "none" })

-- terminal
vim.api.nvim_set_hl(0, "Terminal", { bg = "none" })

--folding functions
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true

vim.keymap.set("n", "<leader>o", "za", { desc = "Toggle fold" })

--hover autoamtico
vim.opt.updatetime = 2000

--LSP config para errores
vim.diagnostic.config({
  virtual_text = true,      -- muestra el error al final de la línea
  signs = true,             -- muestra símbolo en el margen izquierdo
  underline = true,         -- subraya el código con error
  update_in_insert = false, -- solo muestra errores fuera de insert mode
  severity_sort = true,     -- errores primero, warnings después
})
