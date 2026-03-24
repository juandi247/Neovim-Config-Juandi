return {
  "neovim/nvim-lspconfig",
  dependencies = { "mason-org/mason.nvim" },
  config = function()

    vim.lsp.enable("gopls")
    vim.lsp.enable("pyright")
    vim.lsp.enable("clangd")
    vim.lsp.enable("zls")
    vim.lsp.enable("rust_analyzer")

    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(ev)
        local opts = { buffer = ev.buf }
        vim.keymap.set("n", "<leader><CR>", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
vim.keymap.set("n", "<C-s>", function()
  vim.lsp.buf.format({ async = true })
end, opts)
	vim.api.nvim_create_autocmd("CursorHold", {
          buffer = ev.buf,
          callback = function()
            vim.lsp.buf.hover()
          end,
        })
      end,
    })
  end,
}
