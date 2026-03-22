return {
    "numToStr/Comment.nvim",
    dependencies = {"nvim-treesitter/nvim-treesitter"},
    config = function() require("Comment").setup() 
 vim.keymap.set("n", "<C-}>", "gcc", { remap = true, desc = "Toggle comment" })
  vim.keymap.set("v", "<C-}>", "gc", { remap = true, desc = "Toggle comment" })
    end
}
