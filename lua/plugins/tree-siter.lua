-- plugins/treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  tag = "v0.9.3",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  cmd = { "TSUpdate", "TSInstall", "TSUninstall" },
  opts = {
    ensure_installed = {
      "go",
      "gomod",
      "bash",
      "c",
      "diff",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "python",
      "regex",
      "toml",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "yaml",
    },
    highlight = { enable = true },
    indent = { enable = true },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
