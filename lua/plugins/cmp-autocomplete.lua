return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",  -- conecta LSP con cmp
    "hrsh7th/cmp-buffer",    -- palabras del buffer actual
    "hrsh7th/cmp-path",      -- paths del sistema
  },
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),          -- forzar menú
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- confirmar
        ["<Tab>"] = cmp.mapping.select_next_item(),      -- siguiente
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),    -- anterior
        ["<C-e>"] = cmp.mapping.abort(),                 -- cerrar menú
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
      }),
    })
  end,
}
