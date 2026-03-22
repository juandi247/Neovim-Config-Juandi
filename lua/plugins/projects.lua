-- plugins/project.lua
return {
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup({
        detection_methods = { "pattern", "lsp" },
        patterns = { ".git", "go.mod", "Makefile", "pyproject.toml", "*.sln" },
        recent_files = 15,
      })
      -- integración con Telescope para buscar proyectos
      require("telescope").load_extension("projects")
      -- abrir lista de proyectos con leader p
      vim.keymap.set("n", "<leader>p", "<cmd>Telescope projects<CR>", { desc = "Proyectos recientes" })
    end,
  },

  {
    "rmagatti/auto-session",
    config = function()
      require("auto-session").setup({
        auto_save = true,   -- guarda automático al cerrar
        auto_restore = true, -- restaura automático al abrir
      })
    end,
  },
}
